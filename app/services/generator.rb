class Generator
  attr_reader :site

  def initialize(site:)
    @site = site
  end

  def process
    create_sections if site.sections.empty?
    create_content_for_sections
    create_image
  end

  def create_sections
    response = client.chat(parameters: SiteStructure.prompt(site))
    JSON.parse(response.dig("choices").first&.dig("message", "content")).map do |item|
      puts item
      site.sections.create!(title: item["title"], anchor: item["anchor"], link_text: item["short_link_text"])
    end
  end

  def create_content_for_sections
    site.sections.each do |section|
      update_section_content(section)
    end
  end

  def update_section_content(section)
    response = client.chat(parameters: SectionContent.prompt(section))
    content = JSON.parse(response.dig("choices").first.dig("message", "content"))["content"]
    section.update(body: content)
  end

  def create_image
    response = client.images.generate(parameters: {
      prompt: Image.prompt(site),
      size: "512x512"
    })
    site.sections.first.update(image_url: response.dig("data").first&.dig("url"))
  end

  def client
    @client ||= OpenAI::Client.new
  end
end
