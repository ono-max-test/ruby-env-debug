require_relative '../../../spec_helper'
require 'socket'

describe 'Socket.udp_server_loop debug' do
  it 'blocks the caller' do
    socket_block = proc { Socket.ip_address_list }

    # This line is okay.
    puts "[DEBUG] 1 Socket.ip_address_list"
    p Socket.ip_address_list

    puts "[DEBUG] 2 Socket.ip_address_list"
    p Socket.ip_address_list

    # This line is error.
    # See spec/mspec/lib/mspec/matchers/block_caller.rb
    puts "[DEBUG] 3 Socket.ip_address_list with mspec block_caller"
    socket_block.should_not block_caller
    # true.should be_true
  end
end
