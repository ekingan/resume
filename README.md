# README
This is a resume app built with a Rails 5 Graphql API and React. It includes a simple form to add new job to the resume. The seed.rb contains all my info, but you could seed it with your own, obvi.

## Installation Instructions

* Ruby version 2.6.1
* Rails version 5.2.3
* PostgreSQL 11
* NPM ~ 6.7.0
* Client side dependencies are include in the `package.json` file

Once you clone the repo, cd into the main folder and run the following commands:

* `bundle install`
* `rake db:create db:migrate db:seed`

Then cd into the client directory and run `npm install`

## To run the project

* Inside the root directory start the server with:
`rails s -p 3001`

* Inside the client directory enter:  
`npm run start`

* Visit the page at `localhost:3000/resumes/1`

