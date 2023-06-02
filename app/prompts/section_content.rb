module SectionContent
  module_function

  def prompt(section)
    {
      model: "gpt-3.5-turbo",
      messages: [
        {role: "system", content: <<~SYSTEM
          
          You are a website SEO expert.
          
          Given a single page website with multiple sections. Provide content related to the given section.
          Respond within the following JSON format. Content can contain markdown formatted text.
          Remove first headline of the content. 
          `
          {
          "section": "",
          "content": "" 
          }
        SYSTEM
        },
        {role: "user", content: <<~TEXT
          Site: #{section.site.title}
          Section: #{section.title}
        TEXT
         }
      ],
      temperature: 0.7,
      max_tokens: 2000
    }
  end
end
