> This guide was written several years ago and has not yet been updated. You may encounter outdated information.

Setting up [Juice Shop](https://owasp.org/www-project-juice-shop/) is simple, but might be daunting if you're new to cybersecurity - follow our guide below to get started!

# Try Hack Me

We will be using Try Hack Me during the session - it is a great platform for learning ethical hacking, and their Juice Shop room provides some great 'nudges' for exploring the basics of the system.

Don't worry, you don't have to pay (although Try Hack Me's premium rooms are great!) Just create an account and [visit this link to join the room](https://tryhackme.com/room/juiceshop) (you'll need to log in first, otherwise you may be told the room is private).

From here, you need to deploy the machine using the 'Deploy' button - this will create an 'instance' of Juice Shop, hosted on Try Hack Me, that you can connect to via the IP address shown on the screen (yours will be different!).

![The 'Active Machine Information' panel](../js-thm-active-machine.png)

Before you hop onto the machine and start hacking, you'll need to connect to the TryHackMe network! You can use a tool such as OpenVPN to do this. Here is a [guide](https://tryhackme.com/access).

In short, all you need to do is download your connection pack (from the same link) and run "sudo openvpn /path/to/YourUsername.ovpn" - once it has initialised, you should be able to visit the IP address of your instance in a normal web browser, and start hacking!

![The Juice Shop homepage](../js-juice-shop-homepage.png)

We recommend Kali Linux for the above, and for exploring the site itself - it comes with OpenVPN and all the other tools you might need (like Burp Suite) preinstalled. You can, however, do Juice Shop on whatever operating system you like - as long as you can connect to the TryHackMe network, you'll be fine :)

Don't worry if you're not familiar with the Linux commands we used above, or can't get it working - the alternative methods below might be easier!

# Other methods

Alternatively, you can use one of the methods below to create a more stable version of Juice Shop that doesn't run through TryHackMe.

The documentation recommends either running the application locally, or to deploy to Heroku (you'll need an account). Both methods are described in [the excellent documentation](https://bkimminich.gitbooks.io/pwning-owasp-juice-shop/content/part1/running.html).

We recommend using the 'Deploy to Heroku' method from the guide above - it's even simpler than deploying via TryHackMe, and will create an app that you can navigate to directly in your browser!

An official Heroku instance is also available at <https://juice-shop.herokuapp.com> - however, as [this guide](https://elements.heroku.com/buttons/jsalado/juice-shop) explains, you are better off deploying your own in case you make any mistakes!