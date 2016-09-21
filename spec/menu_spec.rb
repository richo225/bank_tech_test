require "menu"
require "account"

describe Menu do

  subject(:menu){Menu.new}
  subject(:account){menu.account}

  describe "#deposit" do
    it "adds value to the account balance" do
      menu.stub(:get_amount) {10}
      menu.deposit
      expect(account.balance).to eq(10)
    end
  end
end
