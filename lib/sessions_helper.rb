def session_location_link(item)
    # Generates a card that links to the session location. 
    # +item+ is the session.md item
    "<a class=\"session-location-link\" href=\"https://ssid.sheffield.ac.uk/campus-map/?location=#{item[:building]}\">
        #{item[:room]}, #{item[:building].gsub("-", " ").split(" ").map(&:capitalize).join(" ")}
    </a>" # "Room Name, Building Name"
end

def session_dependencies(item)
    depends = item.fetch(:depends, [])
    return "<div class=\"session-dependencies\"><p>This session should be accessible without any prerequisites</p></div>" if depends.empty?

    "<div class=\"session-dependencies\">
        <details>
            <summary>Session prerequisites
                #{depends.map{|d| "<img src=\"/skill_icons/#{d}.png\">"}.join}
            </summary>
            <ol>
                #{depends.map{|d| 
                "<li>
                    <img src=\"/skill_icons/#{d}.png\">
                    <p>#{md_to_html items["/skills/#{d}/description.md"].raw_content}</p>
                </li>
                "}.join}
            <ol>
    </div>"

end