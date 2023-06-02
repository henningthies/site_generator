module Image
  module_function

  def prompt(site)
    <<~PROMPT
      Image about "#{site.title}" full body outsite shot.
    PROMPT
  end
end
