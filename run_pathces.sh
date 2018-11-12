#!/bin/bash

# %patch0 -p1

patch -p1 < ruby-2.3.0-ruby_version.patch

# %patch1 -p1

patch -p1 < ruby-2.1.0-Prevent-duplicated-paths-when-empty-version-string-i.patch

# %patch2 -p1

patch -p1 < ruby-2.1.0-Enable-configuration-of-archlibdir.patch

# %patch3 -p1

patch -p1 < ruby-2.1.0-always-use-i386.patch

# %patch4 -p1

patch -p1 < ruby-2.1.0-custom-rubygems-location.patch

# %patch5 -p1

patch -p1 < ruby-1.9.3-mkmf-verbose.patch

# %patch6 -p1

patch -p1 < ruby-2.1.0-Allow-to-specify-additional-preludes-by-configuratio.patch

# %patch7 -p1

patch -p1 < ruby-2.2.3-Generate-preludes-using-miniruby.patch

# %patch9 -p1

patch -p1 < ruby-2.3.1-Rely-on-ldd-to-detect-glibc.patch

# %patch10 -p1

patch -p1 < ruby-2.4.3-Fix-Command-injection-in-lib-resolv-lazy_initialize.patch

# %patch13 -p1

patch -p1 < ruby-2.5.1-TestTimeTZ-test-failures-Kiritimati-and-Lisbon.patch
