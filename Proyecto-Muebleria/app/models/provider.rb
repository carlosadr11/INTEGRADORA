class Provider < ActiveRecord::Base

  has_many :payments, :dependent => :delete_all
  validates :email, presence:  {:message => "no puede estar vacio"}
  validates :telefono, presence:  {:message => "no puede estar vacio"}
  validates :apellido, presence:  {:message => "no puede estar vacio"}
  validates :nombre, presence:  {:message => "no puede estar vacio"}
  validates :domiciolio, presence:  {:message => "no puede estar vacio"}
  validates :totalPago, presence:  {:message => "no puede estar vacio"}
  validates :totalProductos, presence:  {:message => "no puede estar vacio"}


  def self.to_csv(options = {})
    provider_columns = ['Nombre', 'Apellido', 'Domicilio', 'telefono', 'email','Total de pagos',
                         'fecha', 'Total Pago']

    CSV.generate(options) do  |csv|
      csv << provider_columns

      all.each do |project|
        provider_values = [project.nombre, project.apellido, project.domiciolio, project.telefono,
                           project.email, project.totalProductos, project.fecha, project.totalPago ]
        csv << provider_values
      end
    end

  end


end
