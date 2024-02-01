# EC2-auto-logger



<a id="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
  - [🎬 Representation](#representation)
  - [🧮 Kanban Board](#kanban-board)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Edge Cases](#edge-cases)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 EC2 Auto Logger <a id="about-project"></a>

**EC2 Auto Logger** is a script that improves my productiviy i.e. it automates my daily workflow of logging in to my AWS EC2 instance remotely with a .pem file maintaining a clean and organized file/folder structure rather than a clutter of .pem files in my DOwnloads folder that I struggle to look through to figure out which was most recently downloaded.
 
 
## 🛠 Built With <a id="built-with"></a>

### Tech Stack <a id="tech-stack"></a>

<details>
  <summary>Bash</summary>
</details>

<!-- Features -->

### Key Features <a id="key-features"></a>

- **Locate .pem file**
- **Initiate login to instance**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo <a id="live-demo"></a>

[Live demo for functioning script](https://drive.google.com/file/d/14VNdykCKq6MkHreWp6JI1h3kSD4_6r-E/view?usp=sharing).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a id="getting-started"></a>

To get a local copy up and running, follow these steps.

### Setup

1. create a ~/AWS_SSL folder to manage all your ssh keys for logins to your instances

2. Create a filename.sh file and copy the contents of move_and_ssh.sh into it on your preferred location

3. Give the .sh file execute permissions with: 

``` 
  chmod +x filename.sh

```

4. Create an alias in your /.bashrc file to use when running the script in this case *loginaws*

``` 
  alias loginaws='move_and_ssh.sh'

```

5. Close file and reload shell configuration with

```
    source ~/.bashrc 
```


<p align="right">(<a href="#readme-top">back to top</a>)</p>


### Usage <a id="usage"></a> 

- Download your allocated .pem file from labs.

- Run the command loginaws from terminal

- Enter IPV4 Address of your remote EC2 instance.

- Congratulations !!! Logged in successfully with a few clicks
 

<p align="right">(<a href="#readme-top">back to top</a>)</p>


### Edge Cases <a id="#edge-cases"></a> 
- The script checks for downloads of labsuser.pem file, If you have a .pem file with different naming, adjust the variable in the script.

- The location of the .pem file keys downloaded are presumed to be in the downloads folder.
  
<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- AUTHORS -->
## 👥 Authors <a id="authors"></a>  
 
👤 **Abel Morara**
- GitHub: [@githubhandle](https://github.com/ProgramKingAbel)
- Twitter: [@twitterhandle](https://twitter.com/CeoAbel1)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/abel-morara/
  
<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a id="future-features"></a> 
 
- **[Handle remote Login to multiple instances]**

 
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a id="contributing"></a>

Contributions, issues, as well as feature requests are welcome! Fork the Repo and make some magic.

Feel free to check the [issues page](https://github.com/ProgramKingAbel/EC2-auto-logger/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->
## ⭐️ Show your support <a id="support"></a>

If you like this script, kindly leave a comment below and share it with
someone who enjoys coding! or still, give it a ⭐️!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
 
## 📝 License <a id="license"></a> 

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
