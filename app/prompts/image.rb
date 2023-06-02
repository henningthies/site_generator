module Image
  module_function

  def prompt(site)
    <<~PROMPT
      Image about "#{site.title}" comic style no text.
    PROMPT
  end
end
