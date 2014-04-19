json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :description, :prep_instructions
  json.url recipe_url(recipe, format: :json)
end
