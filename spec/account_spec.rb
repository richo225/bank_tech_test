require "account"

describe Account do

  subject(:account){Account.new}

  describe "#initialize" do
    it "begins with a balance of zero" do
      expect(account.balance).to eq(0)
    end
  end

end
