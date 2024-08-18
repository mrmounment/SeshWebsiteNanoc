require 'kramdown'

def md_to_html(markdown_text)
    Kramdown::Document.new(markdown_text).to_html
end