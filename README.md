# Chitter Challenge


## Challenge:


Write a small Twitter clone that will allow the users to post messages to a public stream.

## User Stories


```
STRAIGHT UP

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED -  DID NOT ATTEMPT

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep
```
## Functionality:

* You don't have to be logged in to see the peeps.
* Makers sign up to chitter with their email, password, name and a username (e.g. samm@makersacademy.com, password123, Sam Morgan, sjmog).
* The username and email are unique.
* Peeps (posts to chitter) have the name of the maker and their user handle.

## Getting Started ##

- Fork this repo, and clone to your local machine.
- Change into the directory `cd chitter-challenge`
- Run the command  `gem install bundle` (if you don't have bundle already)
- When the installation completes, run `bundle`
- run `rake db:create`
- run `rake db:migrte`
- run command `rackup -p 4567` in your terminal
- visit http://localhost:4567/

## Usage 

![Chitter](/images/Home.png "Home")
![Chitter](/images/Login.png "Login")
![Chitter](/images/Loggedin.png "Loggedin")


## Tech Used ##
- Ruby
- RSpec
- Capybara
- ActiveRecord ORM
- Postgre SQL
- CSS
- HTML
- Sinatra

## Testing ##

- Navigate to the top level of the directory
- run `rspec` in your command line


## Project Status
- Further implementations include completing advanced user story above. 
- Reply to a peep form another maker in order to start a conversation 
- Improve CSS 


