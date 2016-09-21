class Transaction

  attr_accessor :amount, :time

  def initialize(amount)
    @amount = amount
    @time = Time.now.strftime("%d/%m/%Y")
  end
end
