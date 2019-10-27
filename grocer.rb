def find_item_by_name_in_collection(name, collection)
 # output = nil
  i = 0
  while i < collection.length 
  if name == collection[i][:item] 
    return collection[i] 
end
i += 1
  end
  #output
end

def consolidate_cart(cart)
  new_hash = {}
  i = 0 
  while i < cart.length do
    item = cart[i]
 item_name = item[:item]
  if not new_hash[item_name]
    new_hash[item_name] = {:item => item[:item], :price => item[:price], :clearance => item[:clearance], :count => 1}
  else
     new_hash[item_name][:count] += 1
end
  i += 1
  end
  new_hash.map{|key,value| value}
end


#.to_f (to float)

def get_coupon(item, coupons)
  for coupon in coupons do
    if item[:item] == coupon[:item]
      return coupon
    end
  end
  nil
end

def apply_coupons(cart, coupons)
  new_array = []
  for item in cart do
    coupon = get_coupon(item, coupons)
    if coupon
      discounted_price = coupon[:cost] / coupon[:num]
      discounted_item = {:item => item[:item], :price => discounted_price,
        :clearance => item[:clearance], :count => coupon[:num]}
        new_array.push(discounted_item)
    else
      new_array.push(item)
    end
  end
  new_array
end
#change string name and add W/COUPON

def apply_clearance(cart)
new_array = []
  i = 0
  sale = cart[i][:clearance]
  cost = cart[i][:cost]
  while i < collection.length 
  if sale == true 
    cost * 0.8
  else 
    cost
    i += 1
end
    return collection[i] 
end
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)


  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
