# yieldr/test-reporter [![wercker status](https://app.wercker.com/status/e8ea0bce480755230ffa3230c679d009/s "wercker status")](https://app.wercker.com/project/bykey/e8ea0bce480755230ffa3230c679d009)

This step allows the user to send test reports to [Code Climate](https://codeclimate.com/).

# Options:

- `id` (optional) Your repo's test reporter id. Read [here](https://docs.codeclimate.com/docs/finding-your-test-coverage-token) on how to find yours.
- `coverage-endpoint` (optional) Use this to report coverage to your locally-hosted Code Climate: Enterprise instance.

# Example

```
deploy:
	steps:
	  - yieldr/test-reporter@0.4.2
	  		id: pydjvVvCgIEyKOgIakHyYPy3QyN6B5mbW7PfocaCv5qxvPzJpXf1TdqEZdGqFbs
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
