require "menu"
require "account"

describe Menu do

  subject(:menu){Menu.new}
  subject(:account){menu.account}

  describe "#deposit" do
    it "adds amount to the account balance" do
      allow(menu).to receive(:get_amount).and_return(10)
      menu.deposit
      expect(account.balance).to eq(10)
    end
  end

  describe "#withdraw" do
    it "subtracts amount from the account balance" do
      allow(menu).to receive(:get_amount).and_return(10)
      menu.withdraw
      expect(account.balance).to eq(-10)
    end
  end

  describe "#see_balance" do
    it "displays the current account balance" do
      expect(menu.see_balance).to eq(0)
    end
  end
end
