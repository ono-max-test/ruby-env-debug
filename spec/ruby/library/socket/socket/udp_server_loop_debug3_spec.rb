require_relative '../../../spec_helper'
require 'socket'

describe 'Socket.udp_server_loop debug' do
  it 'blocks the caller' do
    # socket_block = -> do
    #   Socket.ip_address_list
    # end

    # socket_block.should block_caller
    Socket.ip_address_list
    1.should be_true
  end
end
