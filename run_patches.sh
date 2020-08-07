#!/bin/bash

set -ex

# %patch0 -p1
# %patch1 -p1
# %patch2 -p1
# %patch3 -p1
# %patch4 -p1
# %patch5 -p1
# %patch6 -p1
# %patch7 -p1
# %patch9 -p1
# %patch11 -p1
# %patch12 -p1
# %patch14 -p1
# %patch19 -p1
# %patch22 -p1
# %patch41 -p1
# %patch42 -p1

cat ruby-2.3.0-ruby_version.patch | patch -p1
cat ruby-2.1.0-Prevent-duplicated-paths-when-empty-version-string-i.patch | patch -p1
cat ruby-2.1.0-Enable-configuration-of-archlibdir.patch | patch -p1
cat ruby-2.1.0-always-use-i386.patch | patch -p1
cat ruby-2.1.0-custom-rubygems-location.patch | patch -p1
cat ruby-1.9.3-mkmf-verbose.patch | patch -p1
cat ruby-2.1.0-Allow-to-specify-additional-preludes-by-configuratio.patch | patch -p1
cat ruby-2.2.3-Generate-preludes-using-miniruby.patch | patch -p1
cat ruby-2.3.1-Rely-on-ldd-to-detect-glibc.patch | patch -p1
cat rubygems-3.0.3-Restore-gem-build-behavior-and-introdcue-the-C-flag-to-gem-build.patch | patch -p1
cat rubygems-3.0.3-Avoid-rdoc-hook-when-its-failed-to-load-rdoc-library.patch | patch -p1
cat ruby-2.7.2-psych-fix-yaml-tests.patch | patch -p1
cat ruby-2.7.1-Timeout-the-test_bug_reporter_add-witout-raising-err.patch | patch -p1
cat ruby-2.6.0-config-support-include-directive.patch | patch -p1

# Patch41: ruby-2.8.0-Brace-the-fact-that-lchmod-can-EOPNOTSUPP.patch
# Patch42: ruby-2.8.0-Moved-not-implemented-method-tests.patch

