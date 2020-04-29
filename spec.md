# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes). User has many reviews. Location has many reviews.
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User). Review belongs to user. Review belongs to location. 
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients). User has many locations through reviews. Locations has many users through reviews. 
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z); e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients. User has many locations through reviews & Location has many users through reviews.
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity). Content of Review
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item). Review had to be between 4 - 300 letters to be valid.
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes). ActiveRecord Scope is most reviewed link.
- [x] Include signup (how e.g. Devise). Used devise 
- [x] Include login (how e.g. Devise). used devise
- [x] Include logout (how e.g. Devise). used devise
- [x] Include third party signup/login (how e.g. Devise/OmniAuth). Used Devise with OmniAuth for Github log in.
- [x] Include nested resource show or index (URL e.g. users/2/recipes) 
        nested index ie. users/3/reviews 
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
        ie. location/#/reviews/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
        ie. location review too short.

Confirm:
- [x] The application is pretty DRY. Do not reapeat yourself.
- [x] Limited logic in controllers. Tried to limit the controller logic as much as possible. 
- [x] Views use helper methods if appropriate. 
- [x] Views use partials if appropriate