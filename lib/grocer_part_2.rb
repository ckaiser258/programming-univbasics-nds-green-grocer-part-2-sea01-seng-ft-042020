require_relative './part_1_solution.rb'
require "pry"

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  if coupons
    coupons.each do |coupon_info|
      var = find_item_by_name_in_collection(coupon_info[:item], cart)
    if coupon_info[:item] == var[:item]
      var[:count] = var[:count] - coupon_info[:num]
              cart << {
              :item => coupon_info[:item].concat(" W/ COUPON"),
              :price => coupon_info[:cost]/coupon_info[:num],
              :clearance => var[:clearance], 
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
