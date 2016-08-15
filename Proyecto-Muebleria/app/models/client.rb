class Client < ActiveRecord::Base
  has_many :sales, :dependent => :delete_all
  has_many :info_sales, dependent: :destroy
  validates :nombre, presence:  {:message => "no puede estar vacio"}
  validates :apellido, presence:  {:message => "no puede estar vacio"}
  validates :domicilio, presence:  {:message => "no puede estar vacio"}
  validates :email, presence:  {:message => "no puede estar vacio"}
  validates :telefono, presence:  {:message => "no puede estar vacio"}

  def self.to_csv(options = {})
    client_columns = ['Nombre', 'Apellido', 'Domicilio', 'Telefono', 'Email']

    CSV.generate(options) do  |csv|
      csv << client_columns

      all.each do |project|
        client_values = [project.nombre, project.apellido, project.domicilio, project.telefono,
                           project.email]
        csv << client_values
      end
    end

  end
end
