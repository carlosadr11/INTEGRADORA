require 'prawn/table'
class TypesPdf < Prawn::Document
  def initialize(payments)
    super()
    @types = Type.order("nombre  DESC").all
    types_id
  end

  def types_id
    image "#{Rails.root}/app/assets/images/11.png", height: 80
    y_position = cursor + 50
    bounding_box([200, y_position], :width => 300, :height => 30) do
    text "Lista de Tipos de Productos", size: 20, style: :bold
    end

    font_size 10
    move_down 40


    table payments_id_all do
      row(0).font_style = :bold
      columns(1).align = :right
      columns(2..3).align = :center
      columns(2..3).width = 80
      columns(0..1).width = 80
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def payments_id_all
    [["Nombre", "Descripcion"]] +
        @types.map do |project|
          [project.nombre, project.descripcion]
        end
  end
  end
