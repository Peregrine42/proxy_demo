class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit amount
    @balance += amount
  end

  def withdraw amount
    @balance -= amount
  end

end

class ProtectionProxy
  def initialize subject
    @subject = subject
  end

  def respond_to? name
    #@subject.respond_to? name || super
    [:withdraw, :deposit].include? name || super
  end

  def method_missing name, *args, user
    super unless respond_to? name

    if user == "Bob"
      @subject.withdraw name, args
    else
      raise ProtectionError.new "Unknown user #{user} attempted to access account."
    end
  end
end

class ProtectionError < StandardError
end
