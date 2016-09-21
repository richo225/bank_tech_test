class Transaction

  attr_accessor :amount

  def initialize(amount)
    @amount = amount
    @time = Time.now.strftime("%d/%m/%Y")
  end
end
