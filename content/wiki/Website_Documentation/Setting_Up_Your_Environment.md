# Repository

The website's Git repository is located at <https://github.com/ShefESH/SeshWebsiteNanoc>. Clone this repository into a suitable directory using whatever method you prefer.

If you can't access this repository, you probably haven't been added to the ShefESH Github organisation yet, in which case you will need to ask the society president to add you.

# Ruby

For your group project, you probably used Codio for development. That was for the main reason that if people working on the same project have different versions of Ruby or gems, it can cause strange incompatibilities which are a pain to debug.

For ShefESH, we won't use Codio, so the first step is to install the correct version of Ruby on your machine (that being the same one that will be used when the production version of the site is compiled by Cloudflare).

## Windows users

You have two options. The first is simply to follow the Linux instructions within [the Windows Subsystem for Linux (WSL)](https://learn.microsoft.com/en-us/windows/wsl/install). The second is to use RubyInstaller to get a working Ruby installation on your Windows system. I'd probably lean slightly towards the WSL approach, but either will work.

If you want to use Rubyinstaller, the steps are as follows:

1. Go to <https://rubyinstaller.org/downloads/> and select the correct version of RubyInstaller:
    - Version numbers are of the form _x_._y_._z_. The _x_ and _y_ parts of the version you download must match the version specified in the file _.ruby-version_ but the _z_ part doesn't have to. So, for example, if the specified version is 3.2.2 then 3.2.2, 3.2.3 and 3.2.9 would all work but 3.3.0 wouldn't.
    - You want the **x64** version (unless for some reason you have a 32-bit CPU) **with devkit**
2. Run the installer you have downloaded
    - In the "Optional Tasks" section, Make sure the "Add Ruby executables to your PATH" option is enabled 
    - Make sure the "MSYS2 development toolchain" installation component is selected. (The other optional component, the documentation, is not strictly necessary but unless you are really short of disk space you might as well have it)
3. When the installer is done, click Finish (with the "Run 'ridk install'" option selected)
4. You should be presented with some lovely ASCII art which reads "RubyInstaller 2 for Windows" and the question "Which components shall be installed?". Press Enter to accept the defaults (this is installation of the "devkit" we were talking about earlier - in effect, you are installing various dependencies that are required for you to later be able to install Gems). Hopefully you will see the message "Install MSYS2 and MINGW Development Toolchain succeeded" or words to that effect.

## Linux and WSL users

1. Download rbenv (a piece of software for managing installed versions of Ruby) using the script on [its website](https://rbenv.org/)
   - I don't recommend installing a distribution-packaged version of rbenv as it's likely to be out of date.
2. Do whatever is necessary to ensure that the output of `rbenv init -` is evaluated when your shell starts. This sets your PATH so that when you run `ruby`, `bundle` etc., you call the rbenv's installed version and not just whatever your distribution happens to provide by default.
    - If you use Bash - which you probably do unless you explicitly know that you don't - you do this by adding the following line to the bottom of the _.bashrc_ file in your home directory.
        ~~~
        eval "$(rbenv init -)"
        ~~~
3. After closing and reopening your terminal window, change into the SeshWebsiteNanoc directory and run `rbenv install` to install the correct version of Ruby (auto-detected from the file _.ruby-version_)

## Mac users
You _should_ just be able to follow the Linux instructions, except you can skip step 2. But I don't currently have access to a Mac to test on, so I can't be sure.

# IDE

You don't need a specific IDE to work with Nanoc. I personally use [Visual Studio Code](https://code.visualstudio.com) but anything that can edit text files will work. I suggest installing [this extension](https://marketplace.visualstudio.com/items?itemName=CraigMaslowski.erb), otherwise the syntax highlighting will behave strangely when editing ERB files.

**Windows users**: If you installed Ruby in WSL, you should also run VS Code from within WSL. See [Microsoft's documentation](https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode) for more information.

# Gems

If you followed the above steps correctly, installing the required gems should be as simple as running `bundle install` in the SeshWebsiteNanoc project directory.

**Windows users**: If you used RubyInstaller, you will find that you can't call `bundle` from a plain command prompt window or the integrated terminal in VS Code. To solve this problem, call `ridk enable` first to add the required executables to the PATH. The "Command Prompt with Ruby" entry added to the start menu by RubyInstaller does this for you.

# Next

If you have successfully followed all the instructions above, you are ready to move on to the [Nanoc Quickstart for Sinatra users](../Nanoc_Quickstart_for_Sinatra_users/) page.
