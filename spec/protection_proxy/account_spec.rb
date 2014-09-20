require_relative '../../protection_proxy_demo'

describe Account do
  it "makes deposits" do
    account = Account.new
    account.deposit 50
    expect(account.balance).to eq 50
  end

  it "makes withdrawals" do
    account = Account.new
    account.deposit 50
    account.withdraw 25
    expect(account.balance).to eq 25
  end
end
