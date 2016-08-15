require 'prawn/table'
class ClientsPdf < Prawn::Document
  def initialize(clients)
    super()
    @clients = Client.order("nombre  DESC").all
    clients_id
  end

  def clients_id
    image "#{Rails.root}/app/assets/images/11.png", height: 80
    y_position = cursor + 50
    bounding_box([200, y_position], :width => 300, :height => 30) do
    text "Lista de Clientes", size: 20, style: :bold
    end

    font_size 10
    move_down 40


    table clients_id_all do
      row(0).font_style = :bold
      columns(1).align = :right
      columns(2..3).align = :center
      columns(2..3).width = 80
      columns(0..1).width = 80
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def clients_id_all
    [["Nombre", "Apellido", "Domicilio", "Telefono", "Email"]] +
        @clients.map do |project|
          [project.nombre, project.apellido, project.domicilio, project.telefono, project.email]
        end
  end
  end
