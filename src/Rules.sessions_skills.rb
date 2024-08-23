# Copy prereq icons
route '/prereqs/*/icon.png' do
  prereq_name = /\/prereqs\/([0-9a-zA-Z_]+)\/icon.png/.match(@item.identifier)[1]
  "/prereq_icons/#{prereq_name}.png"
end

compile '/basic_pages/sessions.erb' do
  filter :erb, locals: {acad_years: acad_years}
  layout "/basic.erb"
  write "/sessions/index.html"
end

ignore '/acad_years/*/sessions/*/session.md'

route '/acad_years/*/sessions/*/*' do
  @item.identifier.to_s
end