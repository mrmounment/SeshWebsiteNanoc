#!/usr/bin/env ruby


wiki_add_section_indices

compile '/basic_pages/index.md' do
  filter :kramdown
  layout "/basic.erb"
  write "/index.html"
end

compile '/basic_pages/contact.md' do
  filter :kramdown
  layout "/basic.erb"
  write "/contact/index.html"
end

compile '/wiki/**/*.md'  do
  filter :erb if @item.fetch(:parse_erb, false)
  filter :kramdown
  layout "/wiki/wiki_page.erb"

  if item.identifier =~ '**/index.*'
    write item.identifier.without_ext + ".html"
  else
    write item.identifier.without_ext + '/index.html'
  end

end

compile '/public/**/*' do
    write item.identifier.to_s.sub("public/", "")
end

compile '/**/*' do
   # Fallback rule to catch and ignore anything not covered above
end


# Use ERB for ERB files
layout '/**/*.erb', :erb
