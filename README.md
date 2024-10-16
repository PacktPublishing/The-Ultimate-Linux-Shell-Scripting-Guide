<h1 align="center">
The Ultimate Linux Shell Scripting Guide, First Edition</h1>
<p align="center">This is the code repository for <a href ="https://www.packtpub.com/en-us/product/the-ultimate-linux-shell-scripting-guide-first-edition/9781835463574"> The Ultimate Linux Shell Scripting Guide, First Edition</a>, published by Packt.
</p>

<h2 align="center">
Automate, Optimize, and Empower tasks with Linux Shell Scripting
</h2>
<p align="center">
Donald A.  Tevault</p>

<p align="center">
   <a href="https://packt.link/SecNet" alt="Discord" title="Learn more on the Discord server"><img width="32px" src="https://cliply.co/wp-content/uploads/2021/08/372108630_DISCORD_LOGO_400.gif"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://packt.link/free-ebook/9781835463574"><img width="32px" alt="Free PDF" title="Free PDF" src="https://cdn-icons-png.flaticon.com/512/4726/4726010.png"/></a>
 &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://packt.link/gbp/9781835463574"><img width="32px" alt="Graphic Bundle" title="Graphic Bundle" src="https://cdn-icons-png.flaticon.com/512/2659/2659360.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
   <a href="https://www.amazon.com/Ultimate-Linux-Shell-Scripting-Guide/dp/1835463576/"><img width="32px" alt="Amazon" title="Get your copy" src="https://cdn-icons-png.flaticon.com/512/15466/15466027.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
</p>
<details open> 
  <summary><h2>About the book</summary>
<a href="https://www.packtpub.com/product/unity-cookbook-fifth-edition/9781805123026">
<img src="https://content.packt.com/B21693/cover_image_small.jpg" alt="Unity Cookbook, Fifth Edition" height="256px" align="right">
</a>

Embark on a comprehensive journey through command shells with this hands-on manual. While Bash is a Linux staple, Z shell and PowerShell are rising stars, applicable to Linux, macOS, and Unix. Progress seamlessly through chapters, each building on the last, creating a solid foundation. Learn through a unique approach: concepts, examples, and interactive labs. These labs, nearly a hundred strong, form the core of experiential learning, essential for script creation.

Focusing on Linux commands and their scripting applications, this manual is universally relevant across Linux and select Unix-like systems. It goes beyond theory, offering practical scripts for real-world Linux administration. Scripts are designed for manageability, aiding learning and troubleshooting. The goal is to nurture the ability to craft intelligent, functional shell scripts.

While centered on Bash, this book offers a peek into the future with Z Shell and PowerShell, expanding your skills and adaptability. This book is systematically structured and engaging so that it will guide you to master command shells, equipping you for real-world Linux challenges.</details>
<details open> 
  <summary><h2>Key Learnings</summary>
<ul>

<li>Grasp the concept of shells and explore their diverse types for varied system interactions</li>

<li>Master redirection, pipes, and compound commands for efficient shell operations</li>

<li>Leverage text stream filters within scripts for dynamic data manipulation</li>

<li>Harness functions and build libraries to create modular and reusable shell scripts</li>

<li>Explore the basic programming constructs that apply to all programming languages</li>

<li>Engineer portable shell scripts, ensuring compatibility across diverse platforms beyond Linux</li>

</ul>

  </details>

<details open> 
  <summary><h2>Chapters</summary>
     <img src="https://cliply.co/wp-content/uploads/2020/02/372002150_DOCUMENTS_400px.gif" alt="Unity Cookbook, Fifth Edition" height="556px" align="right">
<ol>

  <li>Getting Started with the Shell</li>

  <li>Interpreting Commands</li>

  <li>Understanding Variables and Pipelines</li>

  <li>Understanding Input/Output Redirection</li>

  <li>Customizing the Environment</li>

  <li>Text Stream Filters – Part 1</li>

  <li>Text Stream Filters – Part 2</li>

  <li>Basic Shell Script Construction</li>

  <li>Filtering Text with grep, sed, and Regular Expressions</li>

  <li>Understanding Functions</li>

  <li>Performing Mathematical Operations</li>

  <li>Automating Scripts with here Documents and expect</li>

  <li>Scripting with ImageMagick</li>
 
  <li>Using awk–Part 1</li>

  <li>Using awk–Part 2</li>

  <li>Creating User Interfaces with yad, dialog, and xdialog</li>

  <li>Using Shell Script Options with getops</li>

  <li>Shell Scripting for Security Professionals</li>

  <li>Shell Script Portability</li>

  <li>Shell Script Security</li>

  <li>Debugging Shell Scripts</li>

  <li>Introduction to Z Shell Scripting</li>

  <li>Using PowerShell on Linux</li>

</ol>

</details>


<details open> 
  <summary><h2>Requirements for this book</summary>
Since the book begins with the very basics of Linux and Unix command-line usage, the reader really
just needs to be comfortable with the idea of setting up VirtualBox and installing Linux, FreeBSD, and
OpenIndiana virtual machines.
    
VirtualBox is a free download that you can get from here [Download VirtualBox](https://www.virtualbox.org/) (Free).

To run VirtualBox, you’ll need a machine with a CPU that is capable of virtualization. Most modern
CPUs have that capability, with the exception of certain Intel Core i3 and Core i5 models. (That’s because
they lack the hardware acceleration that’s required for virtualization.) Also, you’ll have to ensure
that virtualization is enabled in your computer’s BIOS.
For the demos, we’ll be using Fedora, Debian, Ubuntu, FreeBSD, and OpenIndiana virtual machines.
Here’s where you can download the installation images:

- **Fedora:** [Get Fedora](https://fedoraproject.org/)
- **Debian:** [Get Debian](https://www.debian.org/)
- **Ubuntu:** [Get Ubuntu](https://ubuntu.com/)
- **FreeBSD:** [Get FreeBSD](https://www.freebsd.org/)
- **OpenIndiana:** [Get OpenIndiana](https://openindiana.org/)

In all cases, you’ll need to create a normal user account that has full sudo privileges. That happens
automatically with Ubuntu and OpenIndiana during installation. With Debian and Fedora, that will
happen automatically if you omit creating a root user password during installation.
For FreeBSD, things are a bit different. That’s because the FreeBSD installer will have you create a
password for the root user, and sudo won’t be installed. So, here’s the procedure for installing FreeBSD.

- **Ubuntu & OpenIndiana:** Automatically grants sudo privileges during installation.
- **Debian & Fedora:** Omit creating a root user password during installation to grant the user full sudo privileges.

- **For FreeBSD:**
- ***Add yourself to the `wheel` group during FreeBSD installation, like this:***

1. When you get to the installer section that has you create your own user account, you’ll see:<br><br>
   ```Login group is `your_username`. Invite `your_username` into other groups.```<br><br>
   Respond by typing `wheel`, in order to add yourself to the wheel group.
  
2. After the installation has completed, log into the root user account, using the password that you created during installation.<br><br>
   ***Install sudo on FreeBSD, like this:*** <br>
1. Install the sudo package by doing:
     ```
     pkg install sudo
     ```
2. Configure `sudo` so that members of the wheel group have full sudo privileges. Begin by entering the command:
     ```
     visudo
     ```
3. Scroll down to where you see this line:
     ```
     # %wheel ALL=(ALL:ALL) ALL
     ```
     - Remove the `#` and any leading spaces from this line.
     - Save and exit.

4. Log out from the root user's account, and log back in with your own account.
   When you need to perform an administrative command, you can now use sudo, as you would on any Linux distro.<br><br>

***Next, you’ll need to install `bash` on FreeBSD.*** <br>
Since `bash` doesn’t come installed on FreeBSD by default, you’ll need to install it yourself. Here’s the
procedure.

1. Install `bash` with this command
   ```
   sudo pkg install bash
    ```
2. Create a symbolic line to the `bash` executable, like this:
   ```
   sudo ln -s /usr/local/bin/bash /bin/bash
    ```
  </details>
    


<details> 
  <summary><h2>Get to know Author</h2></summary>

_Donald A.  Tevault_  but you can call him Donnie - got involved with Linux way back in 2006, and has been working with it ever since. He holds the Linux Professional Institute Level 3-Security certification, and the GIAC Incident Handler certification. Donnie is a professional Linux trainer, and thanks to the magic of the internet, teaches Linux classes literally the world over from the comfort of his living room. He's also a Linux security researcher for an IoT security company.



</details>
<details> 
  <summary><h2>Other Related Books</h2></summary>
<ul>

  <li><a href="https://www.packtpub.com/en-us/product/linux-kernel-programming-second-edition/9781803232225">Linux Kernel Programming, Second Edition</a></li>

  <li><a href="https://www.packtpub.com/en-us/product/the-software-developers-guide-to-linux-first-edition/9781804616925">The Software Developer's Guide to Linux, First Edition</a></li>
 
</ul>

</details>
