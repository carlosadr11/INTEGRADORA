class Product < ActiveRecord::Base
  belongs_to :type
  has_many :info_sales, :dependent => :delete_all
  validates :nombre, presence:  {:message => "no puede estar vacio"}
  validates :cantidad, presence:  {:message => "no puede estar vacio"}
  validates :precio, presence:  {:message => "no puede estar vacio"}
  validates :type_id, presence:  {:message => "no puede estar vacio"}

  def self.to_csv(options = {})
   products_columns = ['Fecha', 'Precio', 'Tipo']

    CSV.generate(options) do  |csv|
      csv << products_columns

      all.each do |project|
        products_values = [project.cantidad, project.precio, project.type.nombre]
        csv << products_values
      end
    end

  end

end
