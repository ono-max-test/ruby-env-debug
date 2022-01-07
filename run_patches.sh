#!/bin/bash

cat ruby-2.3.0-ruby_version.patch | patch -p1
cat ruby-2.1.0-Prevent-duplicated-paths-when-empty-version-string-i.patch | patch -p1
cat ruby-2.1.0-Enable-configuration-of-archlibdir.patch | patch -p1
cat ruby-2.1.0-always-use-i386.patch | patch -p1
cat ruby-2.1.0-custom-rubygems-location.patch | patch -p1
cat ruby-1.9.3-mkmf-verbose.patch | patch -p1
cat ruby-2.7.0-Initialize-ABRT-hook.patch | patch -p1
