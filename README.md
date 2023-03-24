<a name="readme-top"></a>

<!--
HOW TO USE:
This is an example of how you may give instructions on setting up your project locally.

Modify this file to match your project and remove sections that don't apply.

REQUIRED SECTIONS:
- Table of Contents
- About the Project
  - Built With
  - Live Demo
- Getting Started
- Authors
- Future Features
- Contributing
- Show your support
- Acknowledgements
- License

OPTIONAL SECTIONS:
- FAQ

After you're finished please remove all the comments and instructions!
-->


<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Budget app <a name="about-project"></a>

This is an app that allows users to track their budget by keeping track of their transactions based on different catagories specified by the user.

- You can find a video description of my project [here](https://drive.google.com/file/d/1_-idt9VCLpIjtdjo4HCwYLmtRiRmc-Yb/view?usp=sharing)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">React.js</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- User authentication when login
- Allows users to create any category of their choice.
- Tracks the transactions made with in each category.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>


- [Live Demo Link](https://budget-app-0rul.onrender.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- `Ruby` installed in your machine, you can user this [link](https://www.ruby-lang.org/en/documentation/installation/) to install in your OS. 
- `PostgreSQL` is installed in your machine, you can refer this [link](https://www.timescale.com/blog/how-to-install-psql-on-mac-ubuntu-debian-windows/) to install in your machine. Then run:


### Setup

Clone this repository to your desired folder:
```
  git clone git@github.com:yonas44/budget-app.git

  cd budget-app

  bundle install
```

### Usage

To run the project, execute the following command:


```
  rails db:create db:migrate

  rails server 
```

- NOTE: In the `development.rb` file, make sure to provide a working `email` to the user_name section and `password` generated from your email provider to have the project working, or you can follow this steps to skip the validation:
1. Remove or comment the `:confirmable` from the `User.rb` devise options.
2. Comment line[76 - 86] from the `development.rb`, which is handling the email comfirmation.
3. Start your server and try again.


### Run tests

To run tests, run the following command:

```
  rspec --format documentation
```

### Deployment

- You can deploy this project on render using this [link](https://render.com/docs/deploy-rails)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Author <a name="authors"></a>

- GitHub: [@yonas44](https://github.com/yonas44)
- LinkedIn: [Yonas Tesfu](https://linkedin.com/in/yonas-tesfu)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>


- [] Allow user to edit their profile.
- [] Allow user to edit a group/ category.
- [] Add income registering feature.
- [] Add algorithm to take income, cost and user saving goal and give suggestion.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project make sure to leave a like. Thanks in advance 🙏

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank [Gregoire Vella on Behance](https://www.behance.net/gregoirevella) and [Microverse](https://www.microverse.org/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
