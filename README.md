<a name="readme-top"></a>

<p align="center">
	<img width="200" height="200" margin-right="100%" src="img/logo.png">
</p>
<p align="center">
	<a href="https://github.com/YellowPluff/Zebra-Shark/graphs/contributors">
		<img alt="Contributors" src="https://img.shields.io/github/contributors/YellowPluff/Zebra-Shark.svg?style=for-the-badge&kill_cache=1" />
	</a>
	<a href="https://github.com/YellowPluff/Zebra-Shark/network/members">
		<img alt="Forks" src="https://img.shields.io/github/forks/YellowPluff/Zebra-Shark.svg?style=for-the-badge&kill_cache=1" />
	</a>
	<a href="https://github.com/YellowPluff/Zebra-Shark/issues">
		<img alt="Issues" src="https://img.shields.io/github/issues/YellowPluff/Zebra-Shark.svg?style=for-the-badge&kill_cache=1" />
	</a>
	<a href="https://github.com/YellowPluff/Zebra-Shark/pulls">
    	<img alt="Pull Requests" src="https://img.shields.io/github/issues-pr/YellowPluff/Zebra-Shark.svg?style=for-the-badge&kill_cache=1" />
    </a>
	<a href="https://github.com/YellowPluff/Zebra-Shark/blob/master/LICENSE.txt">
		<img alt="License" src="https://img.shields.io/github/license/YellowPluff/Zebra-Shark.svg?style=for-the-badge&kill_cache=1" />
	</a>
</p>

<!-- ABOUT ZEBRA Shark -->
## About Zebra Shark

<p align="center">
	<img margin-right="75%" src="img/demo.gif">
	<sub>Video is using iTerm2 and img/terminal_background.jpg</sub>
</p>


Jump to <a href="#installation-directions">Installation</a>

Why use Zebra Shark? **Portability** and **Simplicity**.

#### Portability:
* Designed to run on base zsh.
* Does not require or use any additional external software, dependencies, fonts, etc.
* Zebra Shark will look, behave, and perform the same no matter the system it's running on.

#### Simplicity:
* Quick zero configuration install
* Code is written so you can easily enable/disable specific features with only single character changes
* Dedicated prompt and alias file for even the most novice Zsh users

Continue reading below to elevate and transform your shell experience.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FEATURES & USAGE -->
## Features & Usage

For a full list of features with examples, please refer to the [Wiki](https://github.com/YellowPluff/Zebra-Shark/wiki)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

Zebra Shark is nothing more than a bunch of text files. That's all. This means that installing Zebra Shark is just copying the files to your computer. Fortunately, I've made it easy.

### Prerequisites

Zsh. To verify you have zsh installed, you can run the following command.
  ```
  zsh --version
  ```

If you got back a zsh version, you can continue to <a href="#installation-directions">Installation</a>. If not, you'll have to install zsh. Keep reading to install zsh.

#### How to install Zsh (on Linux systems)

1. Make sure you meet the following prerequisites before we can proceed further.
	* Any popular Linux distro, preferably updated to the latest version
    * Sudo access or any user with root privileges

2. Install Zsh
	* For Debian-based Linux systems:
		```
		sudo apt install zsh
		```

	* For Fedora-based Linux systems:
		```
		sudo dnf install zsh
		```

	* For Arch-based Linux systems:
		```
		sudo pacman -S zsh
		```

3. Once installed, you can verify the installation with the following command. This command will show the currently installed version of zsh.
	```
	zsh --version
	```

4. With Zsh now installed, you should set it as your default shell. You can do that with the following command.
	```
	chsh -s $(which zsh)
	```
	You can verify that it worked with the following command.
	```
	echo $SHELL
	```

<a name="installation-directions"></a>
### Installation

Copy and paste the following command into your terminal. The setup will back up an existing ~/.zshrc file if you have one.

	cd; git clone https://github.com/YellowPluff/Zebra-Shark.git; ./Zebra-Shark/setup/install_zebra_shark.zsh; source .zshrc

#### Uninstallation

If for some reason you don't like it and wish to uninstall Zebra Shark, you can do so with the following command. This will remove all Zebra Shark files as if it never existed on your system.

	cd; rm -rf Zebra-Shark; rm .zshrc; exit

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement."
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

Thank you to the following:

* [Img Shields](https://shields.io)
* [Zsh-Async](https://github.com/mafredri/zsh-async)
* [Melissa]()

<p align="right">(<a href="#readme-top">back to top</a>)</p>