# README

## Objective

* Perform full CRUD for 1 resource
* Connect two resources together
* Understand form helpers

### Getting Started

* Make a Rails app called brews-crew
* Make a model Brew that has attributes `blend_name`, `origin`, `notes`, and `strength`.  The first three are strings, and `strength` is an integer
* add 'faker' gem to Gemfile
* create seed data

### Deliverables

#### Brews Resource

* route for '/brews' that displays all of your coffees as links to their show pages, with links to delete each brew
* route to create a new brew
* route to edit a brew
* route to '/brews/strongest' find the brews with the highest strength

#### BrewsCustomer Resource
* A Brew can have many customers and a Customer can have many brews
* They will be connected by a join called `brews_customers`(this will be the table name). 
* It will have a `customer_id`, and a `brew_id` that will both be integers.
* It will also have a `price` which will be a float.

#### Customer Resource
A Customer has a `customer_name`, which is a string.

* Make a model Customer with the appropriate attributes
* route for '/customers' that displays all of the customers as links to their show pages
* the show page should also include a list of brews the customer has made ( if any ). Each brew should be a link to that specific brews show page.
* create a new user with a favorite brew (hint: collection_select)

Now that you have created the Customer association:
* the brew show page should display a list of all of the customers who have enjoyed that brew

- Bonus
  * a brew name should be unique
  * a Customer should have a `size`, which should be small, medium, or large
  * a Customer should have a `creamer_strength`, which should be light, regular, or none
  * a Customer should have `special_instructions`, which should be less than 140 characters

## Faker Hint

We haven't used Faker that much so far.  If you're not sure how to generate seed data with Faker, it should look something like:
```
5.times do
  Brew.create(
    blend_name: Faker::Coffee.blend_name,
    origin: Faker::Coffee.origin,
    notes: Faker::Coffee.notes,
    strength: rand(1..5)
  )
end

10.times do
  Customer.create(
    customer_name: Faker::FunnyName.name_with_initial
  )
end
```
