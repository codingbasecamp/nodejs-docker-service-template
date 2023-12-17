# **NodeJS Service Template**

This documentation explains the basic requirements for setting up a NodeJS application for the first time on your machine, irrespective of the operating system you are using.

## **List of Tools to install**
Following are the tools required to install before running NodeJS

- Docker Desktop
- Git CLI

You need to consider few ***prerequisites*** for **Docker Desktop**. Docker Desktop has some hardware prerequisites like:

### **Install Docker Desktop on Mac and Linux/Ubuntu**
Installing Docker Desktop on Mac and Linux/Ubuntu is more straightforward find the instructions in the following links:

- [Install on Mac](https://docs.docker.com/desktop/install/mac-install/)
- [Install on Linux](https://docs.docker.com/desktop/install/linux-install/)

### **Install Docker Desktop on Windows**

The following reference is from [Docker Documentation](https://docs.docker.com/desktop/install/windows-install/) check out the link for installation details.

- WSL version 1.1.3.0 or later.
- Windows 11 64-bit: Home or Pro version 21H2 or higher, or Enterprise or Education version 21H2 or higher.
- Windows 10 64-bit:
    - We recommend Home or Pro 22H2 (build 19045) or higher, or Enterprise or Education 22H2 (build 19045) or higher.
    - Minimum required is Home or Pro 21H2 (build 19044) or higher, or Enterprise or Education 21H2 (build 19044) or higher.
- Turn on the WSL 2 feature on Windows. For detailed instructions, refer to the Microsoft [documentation](https://docs.microsoft.com/en-us/windows/wsl/install-win10).

- The following hardware prerequisites are required to successfully run WSL 2 on Windows 10 or Windows 11:
    - 64-bit processor with [Second Level Address Translation (SLAT)](https://en.wikipedia.org/wiki/Second_Level_Address_Translation)
    - 4GB system RAM
    - Enable hardware virtualization in BIOS. For more information, see [Virtualization](https://docs.docker.com/desktop/troubleshoot/topics/#virtualization).

### **Alternative: Github Codespaces**
In case your machine doesn't meet the requirements an alternate solution to quickly get started is using [Github Codespaces](https://github.com/codespaces). You'll have to setup your github account for that. 

Follow the instructions in the following links to access Github Codespaces.
- [Setup Github Account](https://www.youtube.com/watch?v=Gn3w1UvTx0A) (Incase you don't have one)
- [Go to Github Codespaces](https://github.com/codespaces)
- Create a Blank Template.
- Create an `index.js` file.
- Test Run using the `Run and Debug` button from the left menu.

After installing Docker Desktop or setting up Codespaces, install Git CLI. Git CLI generally comes installed with most of Mac and Linux machines! following the instructions to install Git CLI in case you don't have it installed.

### **Verify Git pre-installation**

In the Terminal of your respective OS `Terminal` for Mac / Linux and `cmd` for Windows

```
git --version

git version 2.36.0.windows.1 (Windows cmd output)
```

In case `git` it not installed you'll most likely see an error like `git: command not found` or `'git' is not recognized..`

### **Installing Git CLI**
Use the following link to install Git CLI for your respective OS.

- [Git CLI Installer](https://git-scm.com/downloads)

Try the git command again as discussed above to verify if git has successfully been installed.

## **Hello World!**
Once everything is done from earlier steps, the local environment is ready for running the application. Run the following command to download the `nodejs-service-template` repository.

**For Mac and Linux:**
- Open the terminal

```
mkdir ~/Projects

cd ~/Projects

git clone https://github.com/codingbasecamp/nodejs-service-template.git helloworld
```

**For Windows:**
- Open the cmd

```
mkdir C:\Users\\{userName}\Documents\Projects

cd C:\Users\\{userName}\Documents\Projects

git clone https://github.com/codingbasecamp/nodejs-service-template.git helloworld
```

The above commands are performing 3 operations:
- Creating `Projects` directory.
- Navigating into the `Projects` directory.
- Downloading the `Hello World` project in `Projects` directory.

In case anyone is having issue cloning the repo you can use the [attached link](https://docs.github.com/en/repositories/creating-and-managing-repositories/troubleshooting-cloning-errors) to find and fix the issue.

Now that the project is downloaded, it can be executed using the following commands from the project directory. Make sure your Docker Desktop is running before running the command. In case you see a prompt after running the second command just sellect ***(yes/y)***

```
docker-compose up --build -d

docker exec -w /app -it ubuntuginx bash
```

The above commands are performing 2 operations:
- Building our working environment.
- Running the environment to access the `node` command
- If successful you'll be able to run `node --version` and will get the nodeJS version as output.
