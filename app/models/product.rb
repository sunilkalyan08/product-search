class Product < ApplicationRecord
  def self.search(params)
    products = self.where(upc: params[:search])
    if products.present?
      push_to_redis(products)
      products
    else
      nil
    end
  end

  def self.push_to_redis(products)
    products.map{|a| $redis.sadd("user_searched_products", a.upc)}
  end

  def self.history
    searched_upcs = $redis.smembers("user_searched_products")
    self.where(upc: searched_upcs)    
  end
end
