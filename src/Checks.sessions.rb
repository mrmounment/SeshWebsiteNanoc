# Checks all session files to make sure the properties make sense, and removes them if they don't

must_delete_identifiers = []

@items.find_all("/acad_years/*/sessions/*/session.md").each do |item|
    if item.key? :depends then
        item[:depends].each do |d|
            if @items["/prereqs/#{d}/description.md"] == nil or @items["/prereqs/#{d}/icon.png"] == nil then
                warn "Session \"#{item.identifier}}\" references the prereq \"#{d}\", which does not have a corresponding description and/or icon."
                must_delete_identifiers.push item.identifier
                next
            end
        end
    end

    unless item.fetch(:'online-session', false) then
        unless item.key? :building and item.key? :room then
            warn "Session \"#{item.identifier}}\" does not have a building and room set, and is not an online session."
            must_delete_identifiers.push item.identifier
            next
        end

    end

end

@items.delete_if {|item| must_delete_identifiers.include? item.identifier}