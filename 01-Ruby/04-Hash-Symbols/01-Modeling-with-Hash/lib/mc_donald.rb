# create a reference hash
DISHES_CALORIES ={
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Big Mac" => 540,
  "McChicken" => 350,
  "French Fries" => 230,
  "Salad" => 15,
  "Coca Cola" => 150,
  "Sprite" => 150
}



def poor_calories_counter(burger, side, beverage)
  # look up the calories of each item and sum it all up
  return DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end

poor_calories_counter("Hamburger", "French Fries", "Coca Cola")
