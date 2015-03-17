# Yelp Copy
_____________________

This was our project for Week 9 of Makers Academy. The task was to create a copy of Yelp using Rails.

##Pair Partner

[Oliver Lucas](https://github.com/olucas92)

##Learning Objectives

The aim of the week was to start getting our heads around Rails, and to start using tools like the Devise Gem and AWS.

##Tools used

* Ruby
* Rails
* ActiveRecord
* PostgreSQL
* Devise and Omniauth
* AWS
* Rack Flash

* Rspec
* Capybara

##Domain Model / CRC

A user can sign up, create/edit/delete a restaurant, create/edit/review a review for a restaurant, and endorse a review. A user cannot edit/delete a restaurant/review written by another user; nor can they review the same restaurant more than once.

Classes:

User
Restaurant
Review
Endorsement


___________________________

##How to use

``` $ bundle install```

``` $ rails s ```

_______________________________

##Issues faced

Using the devise gem, in particular omniauth, proved quite a challenge. I also struggled to get this on heroku and imagine that the issue is something to do with AWS. 


##Future intentions

This was my first go at outside-in testing, and I would like to try this approach in other projects. Since moving on from the project it seems that the images no longer load and the Facebook Login also fails - I have a feeling that I've reassigned the both the Facebook and AWS keys, this therefore needs fixing. I would like to continue adding functionality to this, improve the front end, and get it hosted on heroku.


