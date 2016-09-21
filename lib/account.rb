require_relative "transaction"

class Account

  attr_accessor :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(value)
    raise "Please deposit a positive amount" if !positive?(value)
    save_deposit(value)
    @balance += value
  end

  def withdraw(value)
    raise "Please withdraw a positive amount" if !positive?(value)
    save_withdrawal(value)
    @balance -= value
  end

  def save_deposit(value)
    @transaction = Transaction.new(value, @balance, "deposit")
    @transactions << @transaction
  end

  def save_withdrawal(value)
    @transaction = Transaction.new(value, @balance, "withdraw")
    @transactions << @transaction
  end

  def print_receipt
    puts "Date || Type || Amount || Balance"
    @transactions.each do |transaction|
      puts "#{transaction.time} || #{transaction.type} || £#{transaction.amount} || £#{transaction.balance}"
    end
  end

  private

  def positive?(value)
    value > 0
  end

end
