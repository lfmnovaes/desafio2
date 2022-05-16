# Challenge Plathanus/Tabas (Exercise 2)

> Backend: Model Property with a required name and has many photos; for each property, the third photo is the property cover; the photos are stored locally

> Frontend: Display the list of properties with their cover photo, the layout style has to be similar to www.tabas.com layout style; The app should have the ability to seed the database with 50 properties, 3-5 photos per property

## Built With

Ruby >= 3.0.0

Ruby on Rails >= 7.0.0

Postgresql >= 12.0

TailwindCSS >= 3.0.0

## Getting Started

- To get a local copy of the repository please run the following commands on your terminal:
   ```
   git clone https://github.com/lfmnovaes/desafio2.git
   ```
- Go to the cloned directory with `cd desafio2`
- Run `bundle install` to install the necessary rails gems
- Run `npm install` to install the necessary JavaScript packages
- Install the `postgresql` database and all necessary dependencies (if you are on Ubuntu for example, run `sudo apt install postgresql postgresql-contrib`)
- Run `rails db:create` and `rails db:migrate` to create the database locally
  - If you already have one with the same name just run `rails db:reset` instead
- After installing everything, you can run now the website with `./bin/dev` (to run rails with tailwind in the development environment)

## Running linters locally
- Rubocop (Ruby code linter)
```
rubocop
```
- Stylelint (CSS linter)
```
npx stylelint "**/*.{css,scss}"
```

## Testing
- Using RSpec and Capybara
``` 
rspec spec/
```

## Authors

👤 **Luís Fernando**

- GitHub: [![@lfmnovaes](https://img.shields.io/github/followers/lfmnovaes?color=lightgray&style=plastic&labelColor=blue)](https://github.com/lfmnovaes)
- Twitter: [![@lfmnovaes](https://img.shields.io/twitter/follow/lfmnovaes?style=plastic&labelColor=blue)](https://www.twitter.com/lfmnovaes/)
- LinkedIn: [![@lfmnovaes](https://img.shields.io/badge/LinkedIn-blue?style=plastic&logo=linkedin)](https://www.linkedin.com/in/lfmnovaes/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./LICENSE) licensed.
