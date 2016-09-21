class Account

  attr_accessor :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(value)
    raise "Please deposit a positive amount" if !positive?(value)
    save_transaction(value)
    @balance += value
  end

  def withdraw(value)
    raise "Please withdraw a positive amount" if !positive?(value)
    @balance -= value
  end

  def save_transaction(value)
    @transactions << value
  end

  private

  def positive?(value)
    value > 0
  end
end
