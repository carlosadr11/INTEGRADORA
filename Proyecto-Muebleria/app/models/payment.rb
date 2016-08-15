class Payment < ActiveRecord::Base
  belongs_to :provider
  validates :provider_id, presence:  {:message => "no puede estar vacio"}
  validates :abono, presence:  {:message => "no puede estar vacio"}

  def self.to_csv(options = {})
    payments_columns = ['Fecha', 'Abono', 'Proveedor']

    CSV.generate(options) do  |csv|
      csv << payments_columns

      all.each do |project|
        payments_values = [project.fecha, project.abono, project.provider.nombre]
        csv << payments_values
      end
    end

  end

end
