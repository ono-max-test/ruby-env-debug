# %patch0 -p1
cat ruby-2.3.0-ruby_version.patch | patch -p1

# %patch1 -p1
cat ruby-2.1.0-Prevent-duplicated-paths-when-empty-version-string-i.patch | patch -p1

# %patch2 -p1
cat ruby-2.1.0-Enable-configuration-of-archlibdir.patch | patch -p1

# %patch3 -p1
cat ruby-2.1.0-always-use-i386.patch | patch -p1

# %patch4 -p1
cat ruby-2.1.0-custom-rubygems-location.patch | patch -p1

# %patch5 -p1
cat ruby-1.9.3-mkmf-verbose.patch | patch -p1

# %patch6 -p1
cat ruby-2.1.0-Allow-to-specify-additional-preludes-by-configuratio.patch | patch -p1

# %patch7 -p1
cat ruby-2.2.3-Generate-preludes-using-miniruby.patch | patch -p1

# %patch9 -p1
cat ruby-2.3.1-Rely-on-ldd-to-detect-glibc.patch | patch -p1
# %patch10 -p1
cat ruby-2.5.0-Add-Gem.operating_system_defaults.patch | patch -p1

# %patch14 -p1
# %patch15 -p1
# %patch16 -p1
# %patch20 -p1
# %patch22 -p1
# %patch23 -p1
# %patch24 -p1

# Patch14: ruby-2.7.2-psych-fix-yaml-tests.patch | patch -p1
# Patch15: ruby-2.6.0-library-options-to-MAINLIBS.patch | patch -p1

# Patch16: ruby-2.5.1-Avoid-need-of-C++-compiler-to-pass-the-test-suite.patch | patch -p1
# Patch20: ruby-2.6.0-rdoc-6.0.1-fix-template-typo.patch | patch -p1
# Patch24: ruby-2.6.0-configure-fstack-protector-strong.patch | patch -p1
# Patch22: ruby-2.6.0-config-support-include-directive.patch | patch -p1
# Patch23: ruby-2.6.0-use-larger-keys-for-SSL-tests.patch | patch -p1
