class Ventum < ActiveRecord::Base
  has_many :clients, :dependent => :delete_all
end
