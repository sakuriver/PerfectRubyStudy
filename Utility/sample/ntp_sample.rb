require 'socket'

Process.daemon

PORT_NUMBER = 4423
HOST_NAME = 'localhost'

TCPServer.open HOST_NAME, PORT_NUMBER do |server|
    loop do
        client = server.accept
        client.puts Time.now
        client.close
    end
end
