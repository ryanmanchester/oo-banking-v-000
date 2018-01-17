require 'pry'
class Transfer
attr_accessor :sender, :receiver, :status, :amount

def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = "pending"
end

def valid?
  if @sender.valid? && @receiver.valid?
    true
  else
    false
  end
end

def execute_transaction
  #binding.pry
  if @status == "pending"
   @receiver.balance += amount
   @sender.balance -= amount
   @status = "complete"
 # else
 #   @status = "complete"
 end
 if !@sender.valid?
   "Transaction rejected. Please check your account balance."
   #@status = "rejected"
 end


end

end
