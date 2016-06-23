def add_to_array (array, item)
  array << item
  return array
end

def build_array (color1, color2, color3)
  colors_array = []
  colors_array += [color1, color2, color3]
  return colors_array
end

p build_array("green", "red", "black")

pet_names = []
p pet_names
pet_names += ["fido", "spot", "fluffy", "spike", "bob"]
p pet_names
pet_names.delete_at(2)
p pet_names
pet_names.insert(2, "chainsaw")
p pet_names
pet_names.delete("fido")
p pet_names
bob = pet_names.include?("bob").to_s
p "Yes, it is #{bob}"
pet_types = ["hamsters", "dogs", "cats"]
pets_array = pet_names + pet_types
p pets_array


p add_to_array(pet_names, "snowball")
p add_to_array(pet_types, "lizard")
p add_to_array(pets_array, "fish")