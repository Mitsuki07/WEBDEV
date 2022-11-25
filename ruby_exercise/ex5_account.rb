class Account
  attr_accessor :name, :account_no, :balance
  @@account_no=0
  def initialize
    @name
    @balance
    @@account_no+=1
  end

  def deposit(amount)
    amount > 0 ? @balance+=amount
  end

  def withdraw(amount)
    @balance >= amount ? @balance-=amount : puts "insufficient balance"
  end
  class Account
    attr_accessor :name, :accountNum, :balance
  
    def initialize( name, accountNum, balance )
      @name = name
      @accountNum = accountNum
      @balance = balance
  
        puts ("#{@name}: #{@balance} ")
    end
  
    def deposit( name, amount )
      if amount>0 
        @balance += amount
        @accountNum += 1
      end
    end
  
    def withdraw( name, amount)
      if amount>0
        @balance -= amount
      end
    end
  
    def transfer( name, amount )
      if @name = name
        @balance -= amount
        puts ("Account number: #{@accountNum} \nAccount holder name: #{@name}\nAccount balance: #{@balance}")
      end
    end
  end
  
  customer1 = Account.new("Rahul", 1, 2000)
  customer2 = Account.new("Abhishek", 2, 3000)
    customer1.transfer(customer2, 200)
  def transfer(amount)
    if @balance >= amount ? 

end
