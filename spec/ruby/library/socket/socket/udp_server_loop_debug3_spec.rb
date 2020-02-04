require_relative '../spec_helper2'
# require_relative '../fixtures/classes'

describe 'Socket.udp_server_loop debug' do
  it 'blocks the caller' do
    socket_block = -> { Socket.udp_server_loop('127.0.0.1', 0) }
    socket_block.should block_caller
  end
end
