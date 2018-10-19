# Module 2 Code Challenge Review

## The Domain

We are going to write a site to help a small store keep track of user orders. They need to work with three things: users, orders, and items.

* **customer** will have a first name, a last name, and an email address. Every customer must have a first name and a last name and two customers could have the same name. A customer may not have an email address, but two customers cannot have the same email. A customer should be able to have many orders.

* **items** must have a name, a description, and a price. The price must be a positive number, but might not be an integer (e.g. $12.99). No two items can have the same name and a description must be at least 10 words long.

* **orders** must belong to *exactly* one customer and must have *at least* one item. Additionally, orders will have a status attribute, 'sent', which must be either *true* or *false*.

## User stories

Users of our website should be able to:

1. See a list of all orders.
2. Create a new order. When creating a new order they should be able to:
  1. Choose from a list of preexisting items and/or create a new item on the same page.
  2. Choose from a list of preexisting customers or create a new customer on the same page.
3. Edit an order.
4. View all orders.
5. Delete an order.
