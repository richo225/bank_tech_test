require "account"

describe Account do

  subject(:account){Account.new}

  describe "#initialize" do
    it "begins with a balance of zero" do
      expect(account.balance).to eq(0)
    end
  end

  describe "#deposit" do
    it "adds value to the account balance" do
      account.deposit(10)
      expect(account.balance).to eq(10)
    end

    it "deposit must be greater than zero" do
      expect{account.deposit(-5)}.to raise_error("Please deposit a positive amount")
      expect{account.deposit(0)}.to raise_error("Please deposit a positive amount")
    end

  end

  describe "#withdraw" do
    it "subtracts the value from the account balance" do
      account.withdraw(10)
      expect(account.balance).to eq(-10)
    end

    it "withdrawal must be greater than zero" do
      expect{account.withdraw(-5)}.to raise_error("Please withdraw a positive amount")
      expect{account.withdraw(0)}.to raise_error("Please withdraw a positive amount")
    end
  end

end
