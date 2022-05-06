DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Big Mac" => 540,
  "McChicken" => 350,
  "French Fries" => 230,
  "Salad" => 15,
  "Coca Cola" => 150,
  "Sprite" => 150
}

MEALS = {
  "Happy Meal" => ["Cheese Burger", "French Fries", "Coca Cola"],
  "Best Of Big Mac" => ["Big Mac", "French Fries", "Coca Cola"],
  "Best Of McChicken" => ["McChicken", "Salad", "Sprite"]
}

def poor_calories_counter(burger, side, beverage)
  return DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end

def calories_counter(orders)
  # TODO: return number of calories for a less constrained order
  total = 0
  orders.each do |order|
    if DISHES_CALORIES.key?(order)
      total += DISHES_CALORIES[order]
    else
      meal = MEALS[order]
      total += poor_calories_counter(meal[0], meal[1], meal[2])
    end
  end
  return total
end

orders = ["French Fries", "Happy Meal", "Sprite", "Best Of McChicken", "Best Of McChicken", "Happy Meal"]
puts calories_counter(orders)
# => 1575
