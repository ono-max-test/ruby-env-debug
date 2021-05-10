# -*- BASH -*-

function ci_to_excluded_tests {
  local tests_str="${1}"
  ruby <<EOF
    skipped_tests = "${tests_str}".split.map { |test| "-n \!/#{test}\$$/" }
    puts skipped_tests.join(' ')
EOF
  return 0
}

function ci_to_included_tests {
  local tests_str="${1}"
  ruby <<EOF
    skipped_tests = "${tests_str}".split.map { |test| "-n #{test}" }
    puts skipped_tests.join(' ')
EOF
  return 0
}
