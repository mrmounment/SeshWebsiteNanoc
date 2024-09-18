wiki_add_section_indices


compile '/wiki/**/*.md'  do
    filter :erb if @item.fetch(:parse_erb, false)
    filter :kramdown
    layout "/wiki/wiki_page.erb"
  
    if @item.identifier =~ '**/index.*'
      write @item.identifier.without_ext + ".html"
    else
      write @item.identifier.without_ext + '/index.html'
    end
  
  end
  