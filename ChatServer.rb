require "socket"

class Server
  def initialize(port, ip)
    @server = TCPServer.open(ip, port)
    @connections  = 
    {
      clients:{ client_name: {attributes}, ...} 
    }
    @rooms = {}
    @clients = {}
  end
  
  def run
    loop 
    {
     #For each user connected by server, creates a new thread.
     Thread.start(@server.accept) do | client |
       name = client.gets.chomp.to_sym
       @connection[:clients].each do |other_name, other_client|
         if nick_name == other_name || client == other_client
           client.puts "This username already exsists."
           Thread.kill self
         end
       end
       puts "#{nick_name} #{client}"
       @connection[:clients][nick_name] = client
       client.puts "You connected! Chat your heart out!"
     end 
    }
  end
  
end
server = Server.new("localhost", 3000)
server.run