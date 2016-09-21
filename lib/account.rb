class Account

  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def deposit(value)
    raise "Please deposit a positive amount" if !positive?(value)
    @balance += value
  end

  private

  def positive?(value)
    value > 0
  end
end
