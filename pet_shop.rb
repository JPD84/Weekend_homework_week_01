require('pry')
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  return pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,sold)
  pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)
  pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  found = []
  for pet in pet_shop[:pets]
    found << pet if(pet[:breed] == breed)
  end
  return found
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name]== name
      return pet
    end
  end
  return nil

end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name]== name
      pet_shop[:pets].delete(pet)
    end
  end #needs to find a pet also to complete code!

  return nil
end


def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end


def customer_cash (customer)
  # binding.pry
  return customer[:cash]

end


def remove_customer_cash(customer, cash)
  return customer[:cash] -= cash
end


def customer_pet_count(customer)
  return customer[:pets].count

end


def add_pet_to_customer(customer, new_pet)
  # binding.pry
  return customer[:pets].push(new_pet)

end


def customer_can_afford_pet(customer, new_pets)
  if customer[:cash] >= new_pets[:price]
    return true
  else
    return false
  end
end

# binding.pry
# def sell_pet_to_customer__pet_found(customer_cash, pets)
#   pets_sold = pets[:name]
#   if customer[:cash] >= pets[:price]
#     return true
#   else
#     return false
#   end
#   sum = total_cash(pet_shop)
#   assert_equal =[:admin][:total_cash]
#   return total_cash
# end

#key to last 2 questions could be solving this one?


def sell_pet_to_customer__pet_found(customer_cash, pets)
  result = pet_found("Arthur")
  assert_equal([:names] ,pets)
end
