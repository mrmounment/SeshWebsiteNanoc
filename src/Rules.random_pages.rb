compile '/random_pages/**/*.erb' do
  filter :erb
  layout "/basic.erb"

  file_name = File.basename(@item.identifier,File.extname(@item.identifier))

  if @item.identifier =~ '**/index.*'
    write "/rp/" + file_name + ".html"
  else
    write "/rp/" + file_name + "/index.html"
  end
end

compile '/random_pages/**/*.md' do
    filter :kramdown
    layout "/basic.erb"

    file_name = File.basename(@item.identifier,File.extname(@item.identifier))

    if @item.identifier =~ '**/index.*'
      write "/rp/" + file_name + ".html"
    else
       write "/rp/" + file_name + "/index.html"
    end
end

compile '/random_pages/**/*.*' do
    file_name = File.basename(@item.identifier)    
    write "/rp/" + file_name
end
