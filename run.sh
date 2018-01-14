#!/bin/sh

test_reporter="$WERCKER_STEP_ROOT/test-reporter"

main() {
  "$test_reporter" version --client

  args=

  if [ -z "$WERCKER_TEST_REPORTER_ID" ]; then
    echo "WERCKER_TEST_REPORTER_ID=$WERCKER_TEST_REPORTER_ID"
    args="--id=\"$WERCKER_TEST_REPORTER_ID\""
  fi

  if [ -z "$WERCKER_TEST_REPORTER_COVERAGE_ENDPOINT" ]; then
    echo "WERCKER_TEST_REPORTER_COVERAGE_ENDPOINT=$WERCKER_TEST_REPORTER_COVERAGE_ENDPOINT"
    args="$args --coverage-endpoint=\"$WERCKER_TEST_REPORTER_COVERAGE_ENDPOINT\""
  fi

  eval "$test_reporter" "$args"
}

main
