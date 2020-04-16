require_relative './part_1_solution.rb'
require "pry"

def apply_coupons(cart, coupons)
  if coupons
    coupons.each do |coupon_info|
      var = find_item_by_name_in_collection(coupon_info[:item], cart)
    if coupon_info[:item] == var[:item]
      var[:count] = var[:count] - coupon_info[:num]
              cart << {
              :item => coupon_info[:item].concat(" W/COUPON"),
              :price => coupon_info[:cost]/coupon_info[:num],
              :clearance => var[:clearance], 
              :count => coupon_info[:num]
              } 
  end
  end
end
cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each do |item_info|
    if item_info[:clearance] == true
      item_info[:price] = item_info[:price] - (item_info[:price] * 0.2).round(2)
    end
  end
  cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
  consolidate_cart(cart)
  apply_coupons(cart, coupons)
  apply_clearance(cart)
  total = 0
  cart.each do |item_info|
    total += item_info[:price]
  end
  if total > 100
    total = total - (total * 0.1)
  end
  total
  binding.pry
end
