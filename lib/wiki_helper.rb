require 'fileutils'

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
    Dir.each_child(File.join("content", "wiki", section_path)) do |child|
        if child != "index.md" then
            listing = listing + "<li><a href='#{File.join("/", "wiki", section_path, File.basename(child, ".md"))}'>#{wiki_title_from_name child}</a></li>"
        end
    end
    listing = listing + "</ul>"
    listing
end

def wiki_title_from_name(file_name)
    if File.basename(file_name) == "index.md" then
        "Section: #{File.basename(File.dirname(file_name)).gsub(/(?<!\\)_/, " ")}"
    else
        File.basename(file_name, ".md").gsub(/(?<!\\)_/, " ")
    end
end