class Customer
  def initialize(name, account_no)
    @name       = name
    @account_no = account_no
    @balance    = 1000.to_f
  end

  def deposit(amount)
    if amount.to_f < 0
      puts "You cannot make negative deposit"
    else
      @balance = @balance + amount
      puts "#{@name} has deposited -- $#{amount} into:\n  account number -- #{@account_no}\n  account name -- #{@name}"
    end
  end

  def withdraw(amount)
    if amount.to_f < 0
      puts "You cannot make negative withdrawal"
    else
      if @balance > amount
        @balance = @balance - amount
        puts "#{@name} has withdrawn -- $#{amount}\n  from account number -- #{@account_no}\n"
      else
        puts "Insufficient account balance in\n  account number -- #{@account_no}\n  account name -- #{@name}"
      end
      balance
    end
  end

  def balance
    puts "\nAccount balance $#{@balance}\nAccount name -- #{@name}\nAccount number -- #{@account_no}"
  end
end