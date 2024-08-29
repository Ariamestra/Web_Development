# Web Applications - Assignment 2

Integrate county-library relationships into your person web application (Assignment 1), making use of Rails active record association and facilitating user-friendly management by concealing the use of foreign keys.

* Ruby version: Ruby 3.0.6

* System dependencies
  - Ruby 3.0.6
  - Rails 7.0.7.2
  - Faker gem 3.4.10

* Configuration
    1. Clone this repository: `git clone https://github.com/msu-denver-cs/cs3710-fall-2023-001-assignment-2-Ariamestra.git`
    2. Create a new rails application: `rails new cs3710-fall-2023-001-assignment-2-Ariamestra`
    3. Navigate to the project directory: `cd cs3710-fall-2023-001-assignment-2-Ariamestra`

* Database creation
    1. Run migrations: `rails db:migrate`
    
* Database initialization
    - A seeds file is included in this application. But if you wish to add anything you can do so by ...
    1. Run: `vi db/seeds.rb`
    2. Add what is needed
    3. Run: `rails db:seed` to populate the database.

* How to run the test suite
    1. Run unit tests: `rails test`
    
* Services (job queues, cache servers, search engines, etc.)
    1. Start rails server by running `rails server` in the project directory. 
    2. Go to your web browser:
        - `http://localhost:3000/people`: This URL will display a list of people.
        - `http://localhost:3000/libraries`: This URL will display a list of libraries.
        - `http://localhost:3000/counties`: This URL will display a list of counties.

* Deployment instructions
This project is not deployed to a hosting server but is hosted on a GitHub repository. Follow the steps below to host your Rails application on GitHub:
    1. Create a GitHub repository for your Rails application by following these steps:
        1. Log in to your GitHub account.
        2. Click the '+' icon in the upper right corner and select "New Repository."
        3. Fill in the repository name, description, and other settings as needed.
        Click the "Create repository" button.
    2. Your Rails application code is committed and pushed to your GitHub repository:
        1. Run `git add .`
        2. Then run `git commit -m "Initial"`
        3. Finally run `git push`.


