wiki_add_section_indices

compile '/wiki/**/*.md'  do
    filter :erb if @item.fetch(:parse_erb, false)
    filter :md_tableofcontents
    filter :kramdown, link_defs: wiki_link_definitions, header_offset: 1, auto_ids: true
    layout "/wiki/wiki_page.erb"
  
    if @item.identifier =~ '**/index.*'
      write @item.identifier.without_ext + ".html"
    else
      write @item.identifier.without_ext + '/index.html'
    end
  
end

compile '/wiki/**/*.*'  do
  if ['png', 'jpg', 'jpeg', 'gif'].include? @item.identifier.ext then
    write @item.identifier
  else
    @item.delete_if { true }
  end
end

