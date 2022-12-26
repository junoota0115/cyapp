class Product < ApplicationRecord
  has_one :user
  has_one_attached :image

  with_options presence: true do
    validates :product_name
    validates :price
    validates :stock
    validates :comment
  end
    
  def self.search(keyword)
    where(["product_name like?", "%#{keyword}%"])
  end

end
