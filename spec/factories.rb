FactoryGirl.define do
  factory :recipe do
    name "Pizza"
    description "Delicious Pizza Pie"
    prep_instructions "Knead dough into round shape, spread pizza sauce over top, sprinkle cheese and other desirable toppings "
  end

  factory :ingredient do
    name "Tomato Sauce"
    quantity 1
    unit "Can"
    # recipe
  end

  # factory :ingredient_2 do
  #   name "Cheese"
  #   quantity 4
  #   unit "Cups"
  #   recipe
  # end

  # factory :ingredient_3 do
  #   name "Dough"
  #   quantity 3
  #   unit "Lbs"
  #   recipe
  # end
end
