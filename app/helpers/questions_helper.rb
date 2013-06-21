module QuestionsHelper
  def print_content(text)
    raw(url2link(html_escape(text).gsub(/\r\n|\r|\n/, "<br />")))
  end

  def url2link(text, options={})
    target = options[:target] || '_blank'
    URI.extract(text).uniq.each{|url|
      text.gsub!(url, "<a href='#{url}' target='#{target}'>#{truncate(url, :length => 40)}</a>")
    }
    return text
  end
end
