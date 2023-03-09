# Setup Ruby + Cucumber

Prerequisites:
1. Download and install for each item below:
 - VS Code =>	https://code.visualstudio.com/download or other text editors (SublimeText, Atom, Eclipse, Notepad++)
 - Web Driver	=> [Chrome] https://chromedriver.chromium.org/  || [Mozilla Firefox] https://github.com/mozilla/geckodriver/releases
 - Ruby	=> [Windows] https://rubyinstaller.org/ || [Linux/MacOS] Install GPG Linux: sudo apt install gnupg  || MacOS: Install RVM: https://rvm.io/rvm/install Install Ruby: https://rvm.io/rubies/installing
 
 2. . Web Driver Installation
Copy the downloaded chromedriver and geckodriver to the bin directory/folder in the Ruby installation, for example:
[Windows] If the Ruby installation is located in the C:\Ruby31-x64 folder, then copy it to the C:\Ruby31-x64\bin folder

[Linux and Mac OS]
Copy the downloaded chromedriver and geckodriver to the bin directory/folder in /usr/local/bin/

3. Install Gem
Then, because we will use the collaboration between ruby + selenium web-driver + cucumber, we also need to install the gems. Type the following command for the installation:
- gem install cucumber
- gem install gherkin
- gem install selenium-webdriver
- gem install bundler
- gem install rspec

4. Environment Variable
Next, we need to initialize the location of the geckodriver path:
Go to System Properties > Advanced System Settings > Environment variables > System Variables > Path > Enter the address of our geckodriver folder earlier.


# How to Run the Script on Local Devices

1. Clone repo <link branch>
2. Direct to the project directory
3. Enter the project directory that we created earlier and Run terminal/command prompt:
- Running all scenarios => type "cucumber" and press Enter (wait until the automation is finished)

- Running specific scenario => type @LoginSuccess or @LoginFailed and press Enter (wait until the automation is finished)
