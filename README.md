# SYMPLY BOOK ME

A RESTFUL API built with Ruby on Rails. This application exposes API endpoints for booking an appointment with a lawyer front end application. The application allows user to register, login, view available lawyers and book appointments with lawyers.

## Built With
- Ruby 2.7.1
- Ruby on Rails
- PostgreSQL
- Postman
- Rspec


## Endpoints: /api/v1

Method | EndPoint | Action
--- | ----- | ---
POST | users | Register a user
POST | login | Login a registered user
DELETE | logout | Logout a user
GET | lawyers | Fetch all lawyers
GET | lawyers/:id | Fetch a specific lawyer
POST | appointments | Book an appointment
GET | appointments | Fetch appointments for a specific user
DELETE | appointments/:id | Delete a users appointment
--- | --- | ---


# Getting Started

## Running locally 

```
- Clone this repository
$ git clone https://github.com/okikiola11/symply-book-me-api.git
$ cd symply-book-me-api
$ bundle install
$ rails db:create && rails db:migrate
$ rails s
$ localhost:3000

- Use postman to test the endpoints.

- To run the tests
$ bundle exec rspec

```

## Live link
Click <a href="https://symply-book-me.herokuapp.com/">symply book me</a>

## Contributing
- To contribute to this project
- Fork this repository & clone locally.
- Create an upstream remote and sync your local copy.
- Create a new branch.
- Push your code to your origin repository.
- Create a new Pull Request .

## Author

👤 Apelehin Okikiola

- Github: [@okikiola11](https://github.com/okikiola11)
- Twitter: [@Kikiolla3](https://twitter.com/Kikiolla3)
- LinkedIn: [@okikiola-apelehin](https://www.linkedin.com/in/okikiola-apelehin-459008122/)


## 🤝 Contributing
 Contributions, issues and feature requests are welcome!
- create an issue <a href="https://github.com/okikiola11/symply-book-me-api.git/issues">here</a>

## Show your support 
- Give a ⭐️ if you like this project!

## Acknowledgments
- Microverse curriculum.
