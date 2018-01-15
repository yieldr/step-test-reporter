#!/bin/sh

test_reporter="$WERCKER_STEP_ROOT/test-reporter"

main() {
  display_version

  cmd="$WERCKER_TEST_REPORTER_COMMAND"

  if [ -z "$WERCKER_TEST_REPORTER_COMMAND" ]; then
    cmd="after-build"
  fi

  args=

  if [ -n "$WERCKER_TEST_REPORTER_BATCH_SIZE" ]; then
    echo "WERCKER_TEST_REPORTER_BATCH_SIZE=$WERCKER_TEST_REPORTER_BATCH_SIZE"
    args="$args --batch-size $WERCKER_TEST_REPORTER_BATCH_SIZE"
  fi

  if [ -n "$WERCKER_TEST_REPORTER_COVERAGE_ENDPOINT" ]; then
    echo "WERCKER_TEST_REPORTER_COVERAGE_ENDPOINT=$WERCKER_TEST_REPORTER_COVERAGE_ENDPOINT"
    args="$args --coverage-endpoint $WERCKER_TEST_REPORTER_COVERAGE_ENDPOINT"
  fi

  if [ -n "$WERCKER_TEST_REPORTER_COVERAGE_INPUT_TYPE" ]; then
    echo "WERCKER_TEST_REPORTER_COVERAGE_INPUT_TYPE=$WERCKER_TEST_REPORTER_COVERAGE_INPUT_TYPE"
    args="$args -t $WERCKER_TEST_REPORTER_COVERAGE_INPUT_TYPE"
  fi

  if [ -n "$WERCKER_TEST_REPORTER_EXIT_CODE" ]; then
    echo "WERCKER_TEST_REPORTER_EXIT_CODE=$WERCKER_TEST_REPORTER_EXIT_CODE"
    args="$args --exit-code $WERCKER_TEST_REPORTER_EXIT_CODE"
  fi

  if [ -n "$WERCKER_TEST_REPORTER_ID" ]; then
    echo "WERCKER_TEST_REPORTER_ID=$WERCKER_TEST_REPORTER_ID"
    args="$args --id $WERCKER_TEST_REPORTER_ID"
  fi

  if [ -n "$WERCKER_TEST_REPORTER_PREFIX" ]; then
    echo "WERCKER_TEST_REPORTER_PREFIX=$WERCKER_TEST_REPORTER_PREFIX"
    args="$args --prefix $WERCKER_TEST_REPORTER_PREFIX"
  fi

  if [ -n "$WERCKER_TEST_REPORTER_DEBUG" ]; then
    echo "WERCKER_TEST_REPORTER_DEBUG=$WERCKER_TEST_REPORTER_DEBUG"
    args="$args --debug $WERCKER_TEST_REPORTER_DEBUG"
  fi

  raw_args=$WERCKER_TEST_REPORTER_ARGUMENTS

  echo "Running codeclimate test-reporter command"
  echo "$(basename $test_reporter) $cmd $args $raw_args"

  eval "$test_reporter" "$cmd" "$args" "$raw_args"
}

display_version() {
  echo "Running codeclimate test-reporter version:"
  "$test_reporter" --version
  echo ""
}

main
