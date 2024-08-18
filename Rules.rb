#!/usr/bin/env ruby

acad_years = Dir.children("content/acad_years").select{|c| /^\d{4}_\d{2,4}$/.match? c}

compile '/basic_pages/index.md' do
  filter :kramdown
  @name="Home"
  layout "/basic.erb"
  write "/index.html"
end

compile '/basic_pages/*.md' do
  filter :kramdown
  file_name = File.basename(item.identifier,File.extname(item.identifier))
  @name=file_name.split(" ").map {|word| word.capitalize}.join(" ")
  layout "/basic.erb"
  write "/"+file_name+"/index.html"
end

# Now evaluate every rule from the src directory
Dir.glob("src/Rules.*.rb") do |file|
  eval(File.read(file))
end

# Now copy everything in the public directory verbatim
compile '/public/**/*' do
  write @item.identifier.to_s.sub("public/", "")
end

# Ignore anything we haven't explicitly written a rule for
ignore '/**/*'

# Tells the system to use ERB for ERB layoutd
layout '/**/*.erb', :erb