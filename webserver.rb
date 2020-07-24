# http_server.rb
require 'socket'
require '/Users/connormorrey/simplechatserver/members.rb'
require '/Users/connormorrey/simplechatserver/member.rb'
server = TCPServer.new 5678
puts "server running on port 5678"
members = Members.new

while true
  tcp_socket = server.accept
  Thread.new (tcp_socket) do |socket|
    socket.print "enter your name."
    name = socket.gets.chomp
    member = Member.new(name, socket)
    member.welcome_message(members)
    member.add(member)
    socket.close

  end
end
