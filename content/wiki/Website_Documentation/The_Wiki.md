The wiki section of the website will be used for information that may be useful to society members or the committee, such as:

- guides for setting up software that we use.
- introductions to important fundamental skills.
- references to resources elsewhere on the Web that you may find useful.
- documentation for the ShefESH website itself, as you are reading now.

The wiki is represented by a collection of Markdown files which are located in the _content/wiki_ directory. Each subdirectory of _content/wiki_ becomes a "section" of the wiki.  This page explains how to write and update the wiki.

# Add a new page

To add a new wiki page, create a new Markdown file in the _content/wiki_ directory. The filename should be _Title.md_, where _Title_ is replaced by the desired page title. To insert a space in the title, use an underscore (_) in the file name. To insert a literal underscore, use two consecutive underscores (__). There is not currently a way to insert two consecutive spaces. Then, write the page content in the Markdown file.

A page **cannot** share its path (excluding the extension) with a section. For example, you can have a page called _wiki/Vegetables/Potato.md_ **or** a secton called _wiki/Vegetables/Potato_, but not both.

If you want a section called _Potato_, but also want a page to be displayed when someone just navigates just to the _Potato_ section (rather than a page within it), then create a file called `index.md` within the _Potato_ section - see the information below on "section index pages". Note this means that the filename of a page **cannot** be `index.md` in any other situation (so the title cannot be "index").

It's technically possible, but for the benefit of those with case-insensitive filesystems (and also for our sanity), you should also avoid creating multiple pages with the same name in different cases. (This also means no pages called "Index", "INDEX", "iNdEx" etc.)

# Notes about writing content for wiki pages

### Headings

In wiki pages, a first-level heading in Markdown (`#`) will render as an HTML `h2` element, a second-level heading (`##`) as a `h3` element and so on. This is because the `h1` element for the page will automatically be inserted, containing the title that you specified using the page filename.

Please use headings in a well-formed way (start with `#` and progress through heading levels as far as necessary without skipping any). Don't start the page with a first-level heading containing the title - as above, this is done automatically. Instead, first-level headings should be the titles of sections of the page (and you don't have to start with one - it's fine to have some introductory material beforehand).

### Table of contents

A table of contents is automatically inserted below the main page header by the Markdown parser for all wiki pages that have at least one heading in the Markdown. Don't manually write a table of contents.

### Linking within the wiki

Simply enclosing a wiki page title in square brackets will automatically insert a link to that page.

### The content itself

Try to write clearly and concisely. Large language models (such as ChatGPT) will usually produce output that is both overly wordy and inaccurate, so please avoid them. If you need help writing something, there's no shame in asking for help from the rest of the committee - others will be happy to help, and that will result in far better content than an LLM could ever produce.

Bear in mind that whatever you are writing is most of the time going to be read on a computer screen. Split your content into sections with meaningful headings, allowing users to easily identify the section they need. Avoid very long paragraphs - these form "walls of text" which are uncomfortable to read. Where appropriate, use tables and bulleted lists.

Consider accessibility - the same principles apply here as anywhere else. Perhaps the most important one to draw attention to here is that you should specify alternative text for all images, and avoid using images of text. Also, do not use custom colours or colour coding - the default colours have been chosen to give sufficient contrast for text to be readable.

# Edit a page

To edit an existing page, edit the corresponding Markdown file. The fastest way to do this, at least for small edits, is to click the "Edit this page on GitHub" link found on each page to launch the GitHub online editor. You may prefer to use a different editor, in which case you will have to pull the repository and then push your changes once you are done.

Whichever method you choose, be sure to pay attention to the same notes as in the previous section.

# Add a section

A section on the wiki is simply a directory in the filesystem. The naming rules are the same as for pages, except that you must never create a section called `index` because it will conflict with automatically-generated `index.md` files (see below). Also, of course, you should not use a _.md_ extension. You can nest sections as deep as you like (or as deep as the filesystem can handle!).

If you create a file called `index.md` within the section, it will be treated as a "section index", meaning that it will be displayed if a user navigates to the root of the section. If you don't create this file, it will be created for you automatically, and will contain a function call to generate a list of pages within the section. (You can then edit this as any other page).


# Renaming and deleting

**Please avoid renaming or deleting pages and sections** if at all possible. You are highly likely to break links if you do this.

If you're absolutely sure there is no other solution than to rename or delete something, please compile the site with the change on your local machine before deploying, and pay attention to the Kramdown "missing link definitions" warnings. This will at least allow you to fix broken links _within_ the wiki, which is better than nothing.

Of course, there is no way to mitigate broken links from elsewhere on the Web, so ideally, leave a page in place with the old name containing a link pointing to the new one (in the case of renaming) or information on the circumstances of the deletion (in the case of deleting). In some cases, though, there is the risk of this causing confusion, so use your judgement here.