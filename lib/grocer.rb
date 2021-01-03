require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  i = 0
  while i < collection.length do
    if collection[i][:item] == name
      return collection[i]
    end
    i += 1
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  receipt = cart
  cart.each do |item_hash|
    i = 0
    while i < cart.length do
      if item_hash == receipt[i]
        if receipt[i][:count]
          receipt[i][:count] += 1
          break
        else
          receipt[i][:count] = 1
          break
        end
      end
      i += 1
    end
  end
  receipt.uniq
end

  