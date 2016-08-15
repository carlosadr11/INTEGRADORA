class Sale < ActiveRecord::Base
  belongs_to :client
  has_many :info_sales, :dependent => :delete_all
  validates :fecha, presence:  {:message => "no puede estar vacio"}
  
  validates :client_id, presence:  {:message => "no puede estar vacio"}
  scope :ultimos, ->{order("created_at DESC").limit(1)}
end
