# Web Applications - Assignment 4

This project is a Single Page Application (SPA) that showcases a relationship between authors(person) and books. It utilizes a Ruby on Rails backend that serves data in JSON format with a Vue.js frontend.

* System dependencies
  - Ruby 3.0.6
  - Rails 7.0.7.2
  - Faker gem 3.4.10
  - Vue.js 2 (as included in the project via `https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js`)

* Installing
    1. Clone this repository: `git clone https://github.com/msu-denver-cs/cs3710-fall-2023-001-assignment-4-Ariamestra.git`
    2. Navigate to the project directory: `cd cs3710-fall-2023-001-assignment-4-Ariamestra`
   

* Database creation
    1. Create models in this case scaffolds were created for (Book and Person).
    2. Run migrations: `rails db:migrate`

* Database initialization
    1. Run: `vi db/seeds.rb`
    2. Add what is needed (This seeds file is from Web Application Assignment 3 with libraries and counties removed)
    3. Run: `rails db:seed` to populate the database.

* How to run the test suite
    - Run `rails test`

* Services (job queues, cache servers, search engines, etc.)
    1. Start rails server by running `rails s` in the project directory. 
    2. Go to your web browser:
        - `http://localhost:3000/index.html`: This URL will display the Vue.
        - `http://localhost:3000/books.json`: This URL will display JSON data for books.
        - `http://localhost:3000/people.json`: This URL will display JSON data for people.

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

