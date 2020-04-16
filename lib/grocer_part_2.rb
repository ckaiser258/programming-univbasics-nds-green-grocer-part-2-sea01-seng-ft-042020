require_relative './part_1_solution.rb'
require "pry"

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  if coupons
  cart.each do |item_info|
    coupons.each do |coupon_info|
    if coupon_info[:item] == item_info[:item]
      item_info[:count] = item_info[:count] - coupon_info[:num]
              cart << {
              :item => coupon_info[:item].concat(" W/ COUPON"),
              :price => coupon_info[:cost]/coupon_info[:num],
              :clearance => item_info[:clearance], 
              :count => coupon_info[:num]
              } 
    end
    # if item_info[:count] < 1
    #   cart.delete(item_info)
    #end
  end
  end
end
cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
end
