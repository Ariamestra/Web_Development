## README

* Ruby version: Ruby 3.0.6

* System dependencies
  - Ruby 3.0.6
  - Rails 7.0.7.2
  - Faker gem 3.4.10

* Configuration
  1. Clone this repository.
  2. Run 'git add .', 'git commit -am initial', 'git push' to test everything is working correctly
  3. Run 'rails generate scaffold Person name:string email:string address:string phone:string library_card:integer' to generate a scaffold named person including names, emails, addresses, phone numbers, and library card numbers. 
  4. Run 'bundle add faker' to add the faker gem to your application 

* Database creation & initialization
  1. Run 'rails db:migrate' to execute a pending database schema changes specified in migration files to ensure the database remains in sync with the application's code
  2. Add the code given to you in the assignment to db/seeds.rb file by running 'vi db/seeds.rb'
  3. Run 'rails db:seed' to create initial database
  4. Run 'rails server' and go to 'http://localhost:3000/people' to see the database that was created.

* Services (job queues, cache servers, search engines, etc.)
  - Install and set up Google Chrome if not already installed on your local machine or server.

* Deployment instructions
  1. Run 'git add.'
  2. Run 'git commit -am "After adding scaffold"'
  3. Run 'git push'

* How to run the test suite
  - Run 'rails test' to run the tests