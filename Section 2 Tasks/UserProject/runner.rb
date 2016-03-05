require 'pp'
require_relative 'user'


user = User.new 'andy.bell.github@example.com', 'Andy'

pp user

user.save
