compile '/basic_pages/committee.erb' do
    filter :erb, locals: {acad_years: acad_years}
    layout "/basic.erb"
    write "/committee/index.html"
end
  

compile '/acad_years/*/people/*/*' do
    write @item.identifier.to_s
end