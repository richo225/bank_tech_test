require_relative "transaction"

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
    save_transaction(value)
    @balance -= value
  end

  def save_transaction(value)
    @transaction = Transaction.new(value)
    @transactions << @transaction
  end

  def print_receipt
    puts "Date || Amount || Balance"
    @transactions.each do |transaction|
      puts "#{transaction.time} || £#{transaction.amount}"
    end
  end

  private

  def positive?(value)
    value > 0
  end

end
