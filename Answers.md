# Supplemental Module Challenge: Table View Controllers & Talking Characters

## Questions

Demonstrate your understanding of today's concepts by answering the following free-form questions. Submit them as a text file along with your project.

* What is a detail view controller?
It's a secondary view controller after the main controller. It's normally contained detail information from the main view controller.

* What does a segue do? How do you use it and where?
A segue is a transition between two view controllers. It helps define the app flow.

* What are other ways your detail view controller could get its information? Why use segues?
Using Singleton pattern, initialize with the characters, segues, etc.
Because that's the fast way to do it.


* Why must you conditionally cast custom cell types when using them with table views? How do you do this?
So I can access the specific information in the cell. I used  `as?` to cast the custom cell type.


* Why must you conditionally cast detail view controller types when using them with segues? How do you do this?
So I can set the specific character in the detail view controller. I used `as?` to cast the custom view controller type.
