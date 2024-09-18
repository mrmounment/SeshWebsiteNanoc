Committees are split by academic year. This is automatically sorted into "current" and "former" committees, like magic!

# The File structure

In the `/content/acad_years` directory, there is a folder for every year since the society was formed. If this site is well maintained, you should never have to edit a previous year and should only ever need to look at the most recent one.

In each of these folders, you will find 2 more! `/people` and `/sessions`. For more info on the `/sessions` directory and what you can do with it, have a look [here](../../How_To_Set_Up_Sessions/). We will be working in the `/people` directory. 

If you are adding yourself to an existing committee, you will find a directory for each person on the committee. If you are the first, you will have to be the first one to create a person directory. You may even need to create the directory for your academic year. Don't worry, its not as hard as it sounds.

# Adding a committee member

Each folder needs 2 files. An image and a markdown file. The image should be the same name as the folder (committee members name, all lower case). The markdown file should follow the following structure:

~~~ yaml
---
id: echo
role: President
priority: 0
name: Echo
bio: Echo is a 2nd year Software Engineering student.
image: echo.jpg
contact: Contact them on 
contact-name: linkedin.png 
contact-link: https://www.linkedin.com/in/echo-garratt-12a007236/
personal-name: github.png
personal-link: https://github.com/EchoDevG
---
~~~

And thats it! Write your own info of course. The priority is as follows:

Role           | Priority
---------------|-------
President      | 0
Core committee | 1
Other roles    | 2

This just makes sure things appear in a nice and neat order.
