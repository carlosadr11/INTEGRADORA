require 'prawn/table'
class PaymentsPdf < Prawn::Document
  def initialize(payments)
    super()
    @payments = Payment.order("fecha  DESC").all
    payments_id
  end

  def payments_id
    image "#{Rails.root}/app/assets/images/11.png", height: 80
    y_position = cursor + 50
    bounding_box([200, y_position], :width => 300, :height => 30) do
    text "Lista de Pagos", size: 20, style: :bold
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
    [["Fecha", "Abono", "Proveedor"]] +
        @payments.map do |project|
          [project.fecha, project.abono, project.provider.nombre]
        end
  end
  end
