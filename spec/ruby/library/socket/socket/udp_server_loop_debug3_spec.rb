require_relative '../../../spec_helper'
require 'socket'

describe 'Socket.udp_server_loop debug' do
  it 'blocks the caller' do
    # socket_block = -> { Socket.udp_server_loop('127.0.0.1', 0) }
    socket_block = -> do
      Socket.udp_server_sockets('127.0.0.1', 0) do |sockets|
        Socket.udp_server_loop_on(sockets)
      end
    end

    socket_block.should block_caller
  end
end
