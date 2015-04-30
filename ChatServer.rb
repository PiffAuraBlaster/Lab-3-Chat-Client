require "socket"

class Server
  def initialize(port, ip)
    @server = nil
    @connections  = 
    {
      clients:{ client_name: {attributes}, ...} 
    }
    @rooms = {}
    @clients = {}
  end
end