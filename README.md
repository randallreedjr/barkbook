# Welcome

This repository contains starter code for a technical assessment. The challenges can be done at home before coming in to discuss with the Bark team or can be done as a pairing exercise at the Bark office. Either way, we don't expect you to put more than an hour or two into coding. We recommend forking the repository and getting it running before starting the challenge if you choose the pairing approach.

# Set up

Fork this repository and clone locally

You'll need [Ruby 2.5.7](https://rvm.io/rvm/install) and [Rails 5](https://guides.rubyonrails.org/v5.2/getting_started.html) installed.

Run `bundle install`

Initialize the data with `rake db:reset`

Run the specs with `rspec`

Run the server with `rails s`

View the site at http://localhost:3000

# Tasks
* [x] Add pagination
* [ ] Multiple dog images on form
* [x] Associate dogs with owners
* [x] Allow editing only by owner
* [x] Like other owners' dogs
* [x] Sort index page by number of likes in last hour
* [ ] Display ad.jpg image after every two dogs in index

# Candidate Notes

With more time, the first thing I would want to do is make the testing more robust. For example, adding helpers to simulate logging in a user would allow more thorough testing of the dog editing and destroying actions.

Additionally, adding the `cancancan` gem for authorization would be worth exploring, but the very simple use cases in this challenge did not warrant the time it would take to set it up.
