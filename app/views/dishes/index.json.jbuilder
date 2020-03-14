json.dishes @dishes do |dish|
  json.dishname dish.name
  json.sub_category dish.sub_category
  json.category_id dish.category_id
  json.category_name dish.category.name
end