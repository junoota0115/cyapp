class Product < ApplicationRecord

  has_one :user
  has_one_attached :image

  def self.search(keyword)
    where(["product_name like?", "%#{keyword}%"])
  end

end
