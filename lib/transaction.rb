class Transaction

  attr_accessor :time,:type,:amount,:balance

  def initialize(amount, balance, type)
    @time = Time.now.strftime("%d/%m/%Y")
    @type = type
    @amount = amount
    @balance = balance
  end


end
