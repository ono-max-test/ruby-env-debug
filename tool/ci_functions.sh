# -*- BASH -*-
# Manage functions used on a CI.
# Run `. tool/ci_functions.sh` to use it.

# Create options with patterns `-n !/name1/ -n !/name2/ ..` to exclude the test
# method names by the method names `name1 name2 ..`.
# See `ruby tool/test/runner.rb --help` `-n` option.
function ci_to_excluded_test_opts {
  local tests_str="${1}"
  ruby <<EOF
    skipped_tests = "${tests_str}".split.map { |test| "-n \!/#{test}\$$/" }
    puts skipped_tests.join(' ')
EOF
  return 0
}

# Create options with patterns `-n /name1/ -n /name2/ ..` to exclude the test
# method names by the method names `name1 name2 ..`.
# See `ruby tool/test/runner.rb --help` `-n` option.
function ci_to_included_test_opts {
  local tests_str="${1}"
  ruby <<EOF
    skipped_tests = "${tests_str}".split.map { |test| "-n #{test}" }
    puts skipped_tests.join(' ')
EOF
  return 0
}
