Occasionally you may want to just add a page to the website, which doesnt fit anywhere else. Photos, downloads, random text files, they are sometimes very useful. We have used robots.txt in the past, for example.

These random pages could be any file format, and thats alright! Its all accounted for.

# Creating a random page

To create a random page, it should go in the `random_pages` directory. It can be in sub-directories, or by itself raw in the `random_pages` directory. Create your structure as you feel, any directories will appear in the URL so create directories at your own peril.

These pages can have any file extension. a `.md` or `.erb` file will be compiled into something roughly "shefesh website" looking, using the `basic.erb` layout. If you don't know what layouts are, you can learn about them more in [this guide](./Nanoc_Quickstart_for_Sinatra_users). Any other file extensions will be displayed raw. Of course `.html` will display as HTML, and `.pdf` will be a pdf, but there will be no additional processing done to it from our end.

# Viewing the page

Once youve created the page, its time to view it. The pages are written to `/rp/[file_name]`. If they are a `.erb` or `.md` file, they will be written to `/rp/[file_name]/index.html`, meaning you can access it with just `/rp/[file_name]`. Otherwise it will just be `/rp/[file_name].[file_extension]`. This file name can include directories you create, considering `random_pages/` as the root directory.