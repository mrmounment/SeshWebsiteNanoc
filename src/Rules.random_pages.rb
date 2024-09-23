compile '/random_pages/**/*.erb' do
  filter :erb
  layout "/basic.erb"

  file_name = @item.identifier.without_ext.to_s.sub("random_pages/", "")

  if @item.identifier =~ '**/index.*'
    write "/rp/" + file_name + ".html"
  else
    write "/rp/" + file_name + "/index.html"
  end
end

compile '/random_pages/**/*.md' do
    filter :kramdown
    layout "/basic.erb"

    file_name = @item.identifier.without_ext.to_s.sub("random_pages/", "")

    if @item.identifier =~ '**/index.*'
      write "/rp/" + file_name + ".html"
    else
       write "/rp/" + file_name + "/index.html"
    end
end

compile '/random_pages/**/*.*' do
    file_name = @item.identifier.to_s.sub("random_pages/", "") 
    write "/rp/" + file_name
end
