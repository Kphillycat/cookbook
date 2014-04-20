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
  end

end
