# yieldr/test-reporter [![wercker status](https://app.wercker.com/status/e8ea0bce480755230ffa3230c679d009/s "wercker status")](https://app.wercker.com/project/bykey/e8ea0bce480755230ffa3230c679d009)

This step allows the user to send test reports to [Code Climate](https://codeclimate.com/).

# Commands:

- `after-build`     Locate, parse, and re-format supported coverage sources. Upload pre-formatted coverage payloads to Code Climate servers.
- `before-build`    To be run before a build
- `env`             Infer and output information about the environment the reporter is running in.
- `format-coverage` Locate, parse, and re-format supported coverage sources.
- `help`            Help about any command
- `sum-coverage`    Combine (sum) multiple pre-formatted coverage payloads into one.
- `upload-coverage` Upload pre-formatted coverage payloads to Code Climate servers.

# Args:

- `batch-size`          (optional, default 500) Batch size for source files (default 500)
- `coverage-endpoint`   (optional, default "https://api.codeclimate.com/v1/test_reports") Endpoint to upload coverage information to
- `coverage-input-type` (optional) Type of input source to use [clover, cobertura, coverage.py, excoveralls, gcov, gocov, jacoco, lcov, simplecov]
- `id`                  (optional) Your repo's test reporter identifier. Read [here](https://docs.codeclimate.com/docs/finding-your-test-coverage-token) on how to find yours.
- `prefix`              (optional) The root directory where the coverage analysis was performed

# Example

```
deploy:
	steps:
	  - yieldr/test-reporter@0.4.2:
	  		id: pydjvVvCgIEyKOgIakHyYPy3QyN6B5mbW7PfocaCv5qxvPzJpXf1TdqEZdGqFbs
	  		coverage-input-type: gocov
	  		command: after-build
```

# License

The MIT License (MIT)

# Changelog

<!--
## 1.1.0

- Update to kubectl to version `1.1.3`
-->


## 0.4.2

- Initial release
