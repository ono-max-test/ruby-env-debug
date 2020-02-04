require_relative '../spec_helper'
require_relative '../fixtures/classes'

describe 'Socket.udp_server_loop debug' do
  it 'blocks the caller' do
    -> { Socket.udp_server_loop('127.0.0.1', 0) }.should block_caller
  end
end
