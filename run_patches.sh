#!/bin/bash

# Patch0: ruby-2.3.0-ruby_version.patch
# Patch1: ruby-2.1.0-Prevent-duplicated-paths-when-empty-version-string-i.patch
# Patch2: ruby-2.1.0-Enable-configuration-of-archlibdir.patch
# Patch3: ruby-2.1.0-always-use-i386.patch
# Patch4: ruby-2.1.0-custom-rubygems-location.patch
# Patch5: ruby-1.9.3-mkmf-verbose.patch
# Patch6: ruby-2.1.0-Allow-to-specify-additional-preludes-by-configuratio.patch
# Patch7: ruby-2.2.3-Generate-preludes-using-miniruby.patch
# Patch9: ruby-2.3.1-Rely-on-ldd-to-detect-glibc.patch
# Patch10: ruby-2.5.0-Add-Gem.operating_system_defaults.patch
# Patch15: ruby-2.6.0-library-options-to-MAINLIBS.patch
# Patch16: ruby-2.5.1-Avoid-need-of-C++-compiler-to-pass-the-test-suite.patch
# Patch20: ruby-2.6.0-rdoc-6.0.1-fix-template-typo.patch
# Patch24: ruby-2.6.0-configure-fstack-protector-strong.patch
# Patch22: ruby-2.6.0-config-support-include-directive.patch
# Patch23: ruby-2.6.0-use-larger-keys-for-SSL-tests.patch

set -ex

# %patch0 -p1
# git am ruby-2.3.0-ruby_version.patch

# %patch1 -p1
# git am ruby-2.1.0-Prevent-duplicated-paths-when-empty-version-string-i.patch

# %patch2 -p1
# git am ruby-2.1.0-Enable-configuration-of-archlibdir.patch

# %patch3 -p1
# git am ruby-2.1.0-always-use-i386.patch

# %patch4 -p1
# cat ruby-2.1.0-custom-rubygems-location.patch | patch -p1

# %patch5 -p1

# cat ruby-1.9.3-mkmf-verbose.patch | patch -p1

# %patch6 -p1

# cat ruby-2.1.0-Allow-to-specify-additional-preludes-by-configuratio.patch | patch -p1

# %patch7 -p1

# cat ruby-2.2.3-Generate-preludes-using-miniruby.patch | patch -p1

# %patch9 -p1

# cat ruby-2.3.1-Rely-on-ldd-to-detect-glibc.patch | patch -p1

# %patch10 -p1

# cat ruby-2.5.0-Add-Gem.operating_system_defaults.patch | patch -p1

# %patch15 -p1

# cat ruby-2.6.0-library-options-to-MAINLIBS.patch | patch -p1

# %patch16 -p1

# git am ruby-2.5.1-Avoid-need-of-C++-compiler-to-pass-the-test-suite.patch

# %patch20 -p1

# cat ruby-2.6.0-rdoc-6.0.1-fix-template-typo.patch | patch -p1

# %patch22 -p1

# git am ruby-2.6.0-config-support-include-directive.patch

# %patch23 -p1

# git am ruby-2.6.0-use-larger-keys-for-SSL-tests.patch

# %patch24 -p1

# git am ruby-2.6.0-configure-fstack-protector-strong.patch


