require 'fileutils'

Nanoc::Filter.define(:md_tableofcontents) do |content, params|
    content = "
1. TOC
{:toc}

#{content}"
    content
end

def wiki_add_section_indices(top_path="content/wiki")
    Dir.each_child(top_path) do |child|
        child_path = File.join(top_path, child)
        if Dir.exist? child_path then
            section_index_path = File.join(child_path, "index.md")
            unless File.exist? section_index_path
                FileUtils.cp("lib/stock_wiki_index_page.md", section_index_path)
            end
            wiki_add_section_indices child_path
        end
    end
end

def wiki_list_section(section_path)
    listing = "<ul class='wiki-section-listing'>"
    Dir.children(File.join("content", "wiki", section_path)).sort.each do |child|
        if (Dir.exist?(File.join("content", "wiki", section_path, child)) || child.end_with?(".md")) && (child != "index.md") then
            
            if @item.identifier.to_s.end_with? File.join(section_path, child) then
                listing = listing + "<li class=\"sidenav-current-page\"><span>#{wiki_title_from_name child}</span></li>"
            else 
                listing = listing + "<li><a href='#{File.join("/", "wiki", section_path, File.basename(child, ".md"))}'>#{wiki_title_from_name child}</a></li>"
            end
        end
    end
    listing = listing + "</ul>"
    listing
end

def wiki_title_from_name(file_name)
    if File.basename(file_name) == "index.md" then
        "Section page: \"#{File.basename(File.dirname(file_name)).gsub(/(?<!\\)_/, " ")}\""
    else
        File.basename(file_name, ".md").gsub(/(?<!\\)_/, " ")
    end
end

def wiki_link_definitions
    wiki_link_definitions = {}
    @items.find_all("/wiki/**/*.md").each do |item|
      wiki_link_definitions[item.identifier.components[1..].join("/").sub(/\.md$/, "").gsub(/(?<!\\)_/, " ")] = [item.identifier.without_ext, wiki_title_from_name(item.identifier.to_s)]
      if item.identifier.to_s.end_with? "index.md"
        wiki_link_definitions[item.identifier.components[1..-2].join("/").gsub(/(?<!\\)_/, " ")] = [item.identifier.to_s.sub(/index\.md$/, ""), wiki_title_from_name(item.identifier.to_s)]
      end
    end
    wiki_link_definitions
end

