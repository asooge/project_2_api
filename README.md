# Bazaar Memes: GA Project 2

This api allows a user to sign up, sign in, and access the meme database in various ways. User can create memes that belong to only them. They can also update and delete memes that belong to them. Memes can be viewed on a global level (all memes in the database from various users) or on a user level (only memes that belong to the user.) Comments can also be created by a user that belong to both a user and a meme. Likewise Upvotes can be created with the value of 1 or -1, and belong to both the user and the meme.

### Technologies Used:

  -Core technologies: Ruby on Rails framework.

  -Data stored in PostgreSQL database

  -deployed using Heroku

### Important Links:

  Deployed API: https://dashboard.heroku.com/apps/rocky-atoll-42611

  API Github repo: https://github.com/asooge/project_2_api

  Deployed client: https://asooge.github.io/bazaarMemes/

  Client Github repo: https://github.com/asooge/bazaarMemes

### Planning and development process:
  Began planning with an entity relationship diagram (ERD.) My main entities needed for the MVP were only User and Meme. My goal was to meet MVP, and then to add resources for comments and upvotes, with the relationship of comments belonging to user and meme, and upvotes belonging to user and meme. I generated a scaffold for memes with columns for Image:string, text_1:string, text_2: string, font_1_size:number and font_size_2:number and User:references. I tested all basic CRUD functionality using curl scripts. The memes controller inherits from the ProtectedController so that only memes that belong to the user can be updated or deleted. User sign-in serializer updated to display all user's memes on sign-in.

  Once MVP was achieved, I added a resource for comments by generating a scaffold for comments with comment:string, user:references, and meme:references. Tested CRUD functionality for comments using curl scripts. Meme serializer was updated to display all comments that belong to each meme.

  Once the comment feature was implemented on the front end, I moved on to upvotes. I generated a scaffold for upvotes with value:integer, user:references, and meme:references. I tested CRUD functionality using curl scripts. Finally, updated meme serializer to display all upvotes for each meme, and user sign-in serializer to display all user's comments and upvotes on sign-in. 


### User Stories:

1) As a user I want to be able to sign in and create a meme.

2) As a user I want to be able to preview my meme before creating it.

3) As a user I want to be able to view all memes I have created and update and delete them as I see fit.

4) As a user I want to be able to see memes from all other users and comment and vote on them as I see fit.

5) As a user I want to be able to see other user's comments on my memes and net upvote/downvotes.

6) As a user, I would like full functionality and intuitive layout on both desktop and mobile.

### Unsolved problems to fix in future iterations:

  Originally would have liked to use and save image files for memes and meme templates, but this would have required a different approach, and integration with an image server for storing memes and html canvas for generating memes. Perhaps a future generation of the app will use image files rather than image-urls. That being said, I was pleased with what I could produce with just html and css styling of text over an image url, and this approach allows for dynamic updating of memes, perhaps in a way that would not be so easily achieved with saved image files.

  Another feature I would like to improve on is the sorting by most recent, most commented, and most (net) upvotes. Currently this functionality is implemented on the client. I would like to be able to do the sorting on the back end, so that when the api call is made, the database will retrieve the data and sort based on the user's request. I think this should be easy enough to implement, but would require additional methods in the memes controller and possibly additional routes. Further research would be neccesary on my part to determine which approach would be more efficient and implement accordingly.

### Entity Relationship Diagrams:

![ERD](images/ERD.JPG)
