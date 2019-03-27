module Completos
  TOTAL = 100

  def occupancy
    amount = TOTAL

    required_fields.each do |field|
      amount = amount - percent_by_field unless public_send(field).present?
    end

    amount.round(2)
  end

  private

  def percent_by_field
    TOTAL.to_f / required_fields.count
  end
end
