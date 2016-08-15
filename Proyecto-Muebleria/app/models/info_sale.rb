class InfoSale < ActiveRecord::Base
  belongs_to :sale
    belongs_to :product
  validates :product_id, presence:  {:message => "no puede estar vacio"}
  validates :cantidad, presence:  {:message => "no puede estar vacio"}

end
