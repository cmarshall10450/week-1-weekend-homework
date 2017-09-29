def pet_shop_name(shop)
	return shop[:name]
end

def total_cash(shop)
	return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
	shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
	return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, amount)
	shop[:admin][:pets_sold] += amount
end

def stock_count(shop)
	return shop[:pets].length
end

def pets_by_breed(shop, breed)
	pets = []
	for pet in shop[:pets]
		if pet[:breed] == breed
			pets << pet
		end
	end

	return pets
end

def find_pet_by_name(shop, name)
	for pet in shop[:pets]
		return pet if pet[:name] == name
	end

	return nil
end

def remove_pet_by_name(shop, name)
	pets = shop[:pets]
	for pet in pets
		pets.delete(pet) if pet[:name] == name
	end
end