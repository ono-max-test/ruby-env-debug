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
# %patch15 -p1
# %patch19 -p1
# %patch22 -p1
# %patch24 -p1
# %patch25 -p1
# %patch26 -p1
# %patch27 -p1
# %patch42 -p1

patches="
ruby-2.3.0-ruby_version.patch
ruby-2.1.0-Prevent-duplicated-paths-when-empty-version-string-i.patch
ruby-2.1.0-Enable-configuration-of-archlibdir.patch
ruby-2.1.0-always-use-i386.patch
ruby-2.1.0-custom-rubygems-location.patch
ruby-1.9.3-mkmf-verbose.patch
ruby-2.1.0-Allow-to-specify-additional-preludes-by-configuratio.patch
ruby-2.2.3-Generate-preludes-using-miniruby.patch
ruby-2.3.1-Rely-on-ldd-to-detect-glibc.patch
rubygems-3.0.3-Restore-gem-build-behavior-and-introdcue-the-C-flag-to-gem-build.patch
rubygems-3.0.3-Avoid-rdoc-hook-when-its-failed-to-load-rdoc-library.patch
ruby-dwarf5-avoid_crash-r1.patch
ruby-2.7.1-Timeout-the-test_bug_reporter_add-witout-raising-err.patch
ruby-2.6.0-config-support-include-directive.patch
ruby-2.7.0-preview1-IO.select-on-all-platforms-to-wait-for-input-with-recvfr.patch
ruby-2.6.3-fiddle-1.0.0-ffi-closure-alloc-default.patch
ruby-3.0.0-Convert-ip-addresses-to-canonical-form.patch
rubygem-bundler-2.1.0-dont-use-insecure-temporary-directory-as-home-directory.patch
ruby-2.8.0-Moved-not-implemented-method-tests.patch
"

for p in $patches; do
  echo "Patch: $p"
  cat "${p}" | patch -p1
done
