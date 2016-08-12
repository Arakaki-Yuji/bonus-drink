class BonusDrink
  def self.total_count_for(amount)
    service_amount = amount / 3
    if amount === 0 || service_amount === 0
      return amount
    end

    rest = amount % 3
    amount_used_service = amount - rest
    amount_used_service + total_count_for(service_amount + rest)
  end
end
