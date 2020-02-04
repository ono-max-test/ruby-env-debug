require 'socket'

block = -> { Socket.udp_server_loop('127.0.0.1', 0) }

t = Thread.new do
  block.call
end

20.times do |i|
  puts "[DEBUG] block_caller.rb [#{i}] #{t.status}"
  case t.status
  when "sleep"    # blocked
    t.kill
    t.join
    break
  when false      # terminated normally, so never blocked
    t.join
    break
  when nil        # terminated exceptionally
    t.value
  else
    Thread.pass
  end
end
