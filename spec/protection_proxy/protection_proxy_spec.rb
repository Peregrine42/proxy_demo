require_relative '../../protection_proxy_demo'

describe ProtectionProxy do
  it "stops unknown users accessing the account" do
    real_account = Account.new
    unknown_user = "Fred"
    account = described_class.new(real_account)
    expect { account.withdraw(50, unknown_user) }.to raise_error ProtectionError,
                                                                 "Unknown user #{unknown_user} attempted to access account."
  end

  it "responds to account methods" do
    account = ProtectionProxy.new(Account.new)
    expect(account.respond_to?(:withdraw)).to be_truthy
    expect(account.respond_to?(:foo)).to      be_falsey
  end
end
