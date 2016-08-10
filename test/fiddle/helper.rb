# frozen_string_literal: true
require 'test/unit'
require 'fiddle'

# FIXME: this is stolen from DL and needs to be refactored.

libc_so = libm_so = nil

if !libc_so || !libm_so
  ruby = EnvUtil.rubybin
  ldd = `ldd #{ruby}`
  #puts ldd
  libc_so = $& if !libc_so && %r{/\S*/libc\.so\S*} =~ ldd
  libm_so = $& if !libm_so && %r{/\S*/libm\.so\S*} =~ ldd
  #p [libc_so, libm_so]
end

Fiddle::LIBC_SO = libc_so
Fiddle::LIBM_SO = libm_so

module Fiddle
  class TestCase < Test::Unit::TestCase
    def setup
      @libc = Fiddle.dlopen(LIBC_SO)
      @libm = Fiddle.dlopen(LIBM_SO)
    end

    def teardown
      if /linux/ =~ RUBY_PLATFORM
        GC.start
      end
    end
  end
end
