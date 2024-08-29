# Web Applications - Assignment 3

This assignment builds on assignment 2 by introducing the concept of books to our application. Each book entry is defined by three main attributes: a title, an author (person), and an ISBN number. Then these books form a many-to-many relationship with books by making a junction table. To ensure valid data, I’ve implemented validations for each book entry, and to ensure these validations function correctly, I’ve developed a model tests.

* System dependencies
  - Ruby 3.0.6
  - Rails 7.0.7.2
  - Faker gem 3.4.10

* Configuration
    1. Clone this repository: `git clone https://github.com/msu-denver-cs/cs3710-fall-2023-001-assignment-3-Ariamestra.git`
    2. Navigate to the project directory: `cd cs3710-fall-2023-001-assignment-3-Ariamestra`

* Database creation
    1. Create mdoels in this case scaffolds were created
    2. Run migrations: `rails db:migrate`

* Database initialization
    1. Run: `vi db/seeds.rb`
    2. Add what is needed (This seeds file is from Web Application Assignment 3)
    3. Run: `rails db:seed` to populate the database.

* How to run the test suite
    1. Run `rails test test/models/book_test.rb` to test validations
    2. Run `rails test`

* Services (job queues, cache servers, search engines, etc.)
    1. Start rails server by running `rails s` in the project directory. 
    2. Go to your web browser:
        - `http://localhost:3000/people`: This URL will display a list of people.
        - `http://localhost:3000/libraries`: This URL will display a list of libraries.
        - `http://localhost:3000/counties`: This URL will display a list of counties.
        - `http://localhost:3000/books`: This URL will display a list of books.
        - `http://127.0.0.1:3000/books_libraries`: This URL will display a list of books associated with libraries.

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


