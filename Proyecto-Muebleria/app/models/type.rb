class Type < ActiveRecord::Base
  has_many :products, :dependent => :delete_all
  validates :nombre, presence:  {:message => "no puede estar vacio"}
  validates :descripcion, presence:  {:message => "no puede estar vacio"}

  def self.to_csv(options = {})
    type_columns = ['Nombre', 'Descripcion']

    CSV.generate(options) do  |csv|
      csv << type_columns

      all.each do |project|
        type_values = [project.nombre, project.descripcion]
        csv << type_values
      end
    end

  end
end
