# Capstone Project for Ruby on Rails

> This is a Website based on the Lifestyle web, where you can create and vote articles, and the most voted article will be displayed on the main page of the web.

# About

> This is an app where you can create an account and then login to create articles and vote for the better ones. The main purpose of this project was to build the correct associations between the categories and the articles to show the correct content on the main page.

What you can do on the app:
- Sign up and Log in
- Create articles and see other articles from all the users
- Users can vote for all the articles

In this project I:
- Used PostgreSQL as the database
- Created advanced associations between users, articles, and categories
- Used scopes to make more efficient database queries
- Created models, views, and controllers for users, articles, and categories
- Used Rspec to test model validations and associations
- Added a unique vote or unvote button for each article with a user

# Application Screenshot
![screenshot of Geekers Page](app_screenshot.png)

## Video

You can watch this [video](https://www.loom.com/share/e2f7f441e1404c5faaa92163f6048b29) where I am explaining all the functionality of the app.

## Built With

- Ruby v2.7.2
- Ruby on Rails v6.0.3.6
- Heroku
- PostgreSQL

## Live Demo

You can visit [here](https://fathomless-escarpment-63145.herokuapp.com/) our app.

## Getting Started

To get a local copy up and running follow these simple example steps:

- Clone this repository.
- Open the project folder where the repository was downloaded.
- In your terminal, run the command `bundle install`. This will install all the required dependencies.
- Thereafter, run the migrations. To do this, while in the project root folder, run the command: `rails db:migrate`.
- Run the command `yarn install --check-files` to install all the yarn dependencies of the project.

## Prerequisites

- Ruby v2.7.2
- Ruby on Rails v6.0.3.6
- Postgres: >=9.5

## Usage
### Heroku

- Open this [link](https://fathomless-escarpment-63145.herokuapp.com/) in your browser

### Local

- Start the server with:

```
    rails server
```
- Open `http://localhost:3000/` in your browser

### Instructions

1. Create a user in 'Sign Up'
2. Create an article
3. Check the categories available in "All Categories"
4. Check all the articles from each category
5. Vote for all your favorite articles

### Run tests

```
    rspec --format documentation
```

## Author

👤 **Alexis Varela**
- Github: [@alexisbec](https://github.com/alexisbec)
- Linkedin: [Alexis Varela](www.linkedin.com/in/alexbec)
- Twitter: [@AlexisV31667779](https://twitter.com/AlexisV31667779)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome in the [issues](https://github.com/alexisbec/lifestyle-articles/issues) page.

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](https://github.com/alexisbec/lifestyle-articles/blob/development/LICENSE) licensed.
