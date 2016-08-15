require 'prawn/table'
class ProvidersPdf < Prawn::Document
  def initialize(providers)
    super()
    @providers = Provider.order("nombre  DESC").all
    provider_id
  end

  def provider_id
    image "#{Rails.root}/app/assets/images/11.png", height: 80
    y_position = cursor + 50
    bounding_box([200, y_position], :width => 300, :height => 30) do
    text "Lista de Proveedores", size: 20, style: :bold
    end

    font_size 10
    move_down 40


    table provider_id_all do
      row(0).font_style = :bold
      columns(1).align = :right
      columns(2..3).align = :center
      columns(2..3).width = 80
      columns(0..1).width = 80
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def provider_id_all
    [["Nombre", "Apellido", "Domicilio", "telefono", "email","Total de pagos",
      "fecha", "Total Pago"]] +
        @providers.map do |project|
          [project.nombre, project.apellido, project.domiciolio, project.telefono,
           project.email, project.totalProductos, project.fecha, project.totalPago]
        end
  end
  end
