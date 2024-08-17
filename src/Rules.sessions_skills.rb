# Copy skill icons
compile '/skills/*/icon.png' do
  skill_name = /\/skills\/([0-9a-zA-Z_]+)\/icon.png/.match(@item.identifier)[1]
  write "/skill_icons/#{skill_name}.png"
end
