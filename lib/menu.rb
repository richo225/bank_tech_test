require_relative "account"

class Menu

  def initialize
    @account = Account.new
    greeting
  end

  def greeting
    puts "What would you like to do?"
    loop do
      print_menu
      process STDIN.gets.chomp
    end
  end

  def print_menu
    puts "1. Deposit money"
    puts "2. Withdraw money"
    puts "3. See balance"
    puts "4. Exit"
  end

  def process selection
    case selection
      when "1"
        puts "Processing..."
        deposit
      when "2"
        puts "Processing..."
        withdraw
      when "3"
        puts "Processing..."
        see_balance
      when "4"
        puts "Exiting program..."
        exit
      else
        puts "I don't know what you meant, please try again"
    end
  end

  def deposit
    puts "Please input an amount to deposit:"
    @account.deposit(get_amount)
  end

  def withdraw
    puts "Please input an amount to withdraw:"
    @account.withdraw(get_amount)
  end

  def see_balance
    puts "Current balance: £#{@account.balance}"
  end

  private

  def get_amount
    STDIN.gets.chomp.to_i
  end

end
