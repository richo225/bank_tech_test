require "account"
require "transaction"

describe Transaction do

  subject(:account){Account.new}

  it "transaction amount is stored when deposit/withdrawal made" do
    account.deposit(20)
    expect(transaction.amount).to eq(20)
  end
end
