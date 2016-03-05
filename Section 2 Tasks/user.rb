module Destructable
  def destroy(anyobject)
    puts "I will destroy the object"
  end
end

class User
  include Destructable
  attr_accessor :name,:email
  def initialize(name,email)
    @name = name
    @email = email
  end
  def run
    puts "Hey I'm running"
  end
  def self.identify_yourself
    puts "Hey I am a class method"
  end
#no longer needed due to attr_accessor
# def get_name
#   @name
# end
# def set_name(name)
#   @name = name
# end
end

class Buyer < User
  def run
    puts "I'm not running, I am a buyer"
  end
end

class Seller < User
end

class Admin < User

end

user = User.new("Andy","andy@example.com")
puts "My users name is #{user.name} and his email is #{user.email}"
user.name = "new"
user.email = "changed@example.com"
puts "My new users name is #{user.name} and his changed email is #{user.email}"

buyer1 = Buyer.new("John Doe", "johndoe@example.com")
buyer1.run
seller1 = Seller.new("Jane Doe", "janedoe@example.com")
seller1.run
admin1 = Admin.new("Jack Doe", "jdoe@example.com")
admin1.run

puts Buyer.ancestors
user.destroy("myname")
#User.identify_yourself
#user = User.new("Andy")
#user1 = User.new("John")
#user2 = User.new("Kevin")

#puts User.ancestors
#user.run
#user1.run
#user2.run

#puts user
#puts user1
#puts user2

#puts user.get_name
#user.set_name("New Name")
#puts user.get_name
