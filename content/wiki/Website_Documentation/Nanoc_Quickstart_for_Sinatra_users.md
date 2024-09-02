For your first-year group project, you used a framework called Sinatra to develop your team's Ruby website.  The ShefESH website uses as different framework called Nanoc.

Nanoc is in many ways quite similar to Sinatra, so a lot of the knowledge you already have is transferable. This page explains the differences between Sinatra and Nanoc to help you get started more quickly.

# Static vs dynamic sites

In a Sinatra application, when a request is made, the server runs Ruby code to generate a response to send to the client. A site that works like this (in any language, not just Ruby) is called _dynamic_, because each request has a reponse generated specifically for it at the time the request is made.

The most important conceptual difference between Sinatra and Nanoc is that Nanoc is a _static site generator_. With Nanoc, your Ruby code run as part of deploying the site to the web server, and it outputs files. This process is generally referred to as compilation. Then, when a user requests a URL, the server simply responds with the relevant file.

This means that there isn't any scope to tailor responses to the specific request, rather than just the URL requested. For example, a site that requires a login system can't be static, because requests to the same URL need to return differently depending on the identity of the user. However, hosting static sites is less computationally intensive than dynamic ones, and that means static sites can be faster while also being cheaper to run - plenty of companies will even let you host a static site on their infrastructure for free. 

# Layouts are the new views

In Sinatra, you have views, which are templates that your Ruby code populates with information.

Nanoc has an identical concept by a different name: layouts. They take the form of ERB files located in the _layouts_ directory. Remember, of course, that the populating happens at compile time, not at request time.

You can also call `yield` within the template like this (we'll see what exactly it does shortly):
```
<%= yield %>
```

Every layout has an _identifier_, which is the path to its ERB file relative to the _layouts_ directory, prefixed with a slash. You can render other layouts within your layout by calling `render` with a layout identifier:
```
<%= render "/another-layout.erb" %>
```

There is no notion of a default layout that every page will inherit from like there is in Sinatra, but you can use the "render" method above to achieve the same effect. For example, in Sinatra, you might have a `layout.erb` which contains a header and a footer. In Nanoc, you would have a `header.erb` and a `footer.erb`, and call `render` wherever you want to use them.

# Rules and helpers are the new controllers

In Sinatra, you have controller files that contain routes, which are blocks of code that determine how to get from a request to a response.

Nanoc has the concept of an _item_, which is a file that makes up the uncompiled (i.e. before running Nanoc) version of the site. Items live in the _content_ directory. Like layouts, items also have identifiers, which this time are relative to the _content_ directory.

You define the site in terms of rules determining how to compile an item from its uncompiled form. For each item, Nanoc reads the _Rules.rb_ file and excecutes the first `compile` block whose argument matches the item identifier. **Because our site is fairly complex, our Rules.rb file just contains code to load the rules other Rules files within the _src_ directory**.

Within the `compile` block you can write any Ruby code you like, but you can also apply filters (which transform the content from one format to another - for example, the Kramdown filter converts Markdown to HTML) and layouts (which we've discussed already). When you apply a layout, the content is inserted into the layout where `yield` is called. You then use the `write` method to specify the file the compiled item should be written to - in other words, the path it should have in the compiled site.

You have access to an object called `@item`, which contains some details about the current item being compiled, and one called `@items`, which is a list of all items in the site. See the [Nanoc documentation](https://nanoc.app/doc/reference/variables/#item) for further information.

Here is an example rule:

```ruby
compile '/wikipages/**/*.md' do # matches all Markdown files under the wikipages directory 
    filter :kramdown # calls the Kramdown filter to convert the Markdown to HTML
    layout '/wikipage.erb' # Apply the wikipage.erb layout
    write "/wiki/#{@item.identifier.without_ext}/index.html" # Write to file
end
```

**Helpers** are Ruby files that live in the _lib_ directory. Methods defined in these files are automatically accessible in Rules.rb, so you can split your code between files.

# Putting it all together

Assuming you followed the [setup instructions](../Setting_Up_Your_Environment/) correctly, you should now be ready to compile the ShefESH website.

In the site directory, run
```
bundle exec nanoc
```

The site will be compiled.

Now run
```
bundle exec nanoc view
```

to start a temporary web server which allows you to view the site.

All being well, you should be able to navigate to the correct IP address in a web browser and view the site. The path of this page will be "/wiki/Website_Documentation/Nanoc_Quickstart_for_Sinatra_users"

# A note about rerun

When developing with Sinatra, you may have used a utility called _rerun_ to automatically reload the web server when you change the site. With Nanoc, you don't need rerun  - the functionality is built-in:

```
bundle exec nanoc view --live-reload
```

The nature of a static site, though, is that reloading the web server isn't actually enough - you also need to recompile the site whenever it changes. Luckily, Nanoc can do this for us as well. In a separate terminal window, run

```
bundle exec nanoc compile --watch
```

Leave this running in the background, and the site will be recompiled every time you change it.

# Concluding remarks

This guide does not cover everything you can do with Nanoc, but it should hopefully be enough to get you started. If you get stuck, the [Nanoc documentation](https://nanoc.app/about/) is fairly good, or you can ask in Discord.

[Website Documentation]