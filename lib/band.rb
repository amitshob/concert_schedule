class Band < ActiveRecord::Base
  has_and_belongs_to_many(:venues)
  # has_many(:instructions)
  # has_and_belongs_to_many(:tags)
  # #has_many: :ingredients, through: :ingredients_recipes
end
