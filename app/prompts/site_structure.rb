module SiteStructure
  module_function

  def prompt(site)
    {
      model: "gpt-3.5-turbo",
      messages: [
        {role: "system", content: <<~SYSTEM
          You are a website SEO expert.
          
          Propose a good structure for an informative one page website containing up to 5 sections. Which will afterward will be used for further content generation.
          Respond in a JSON format with the following structure: `[{"title": "", "anchor": "", "short_link_text":""}]`
          Remove any introduction text in the response and only return the parsable JSON.
        SYSTEM
        },
        {role: "user", content: site.title}
      ],
      temperature: 0.7,
      max_tokens: 500
    }
  end
end
