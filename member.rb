class Member

  attr_reader :name, :socket

  def initalize(name, socket)
    @name = name
    @socket = socket
  end

  def welcome_message(members)
    socket.print "welcome, #{name}. #{member.count} people here besides you."
  end
end
