## setup-leiningen

[![Continuous Integration](https://github.com/oxr463/setup-leiningen/workflows/Continuous%20Integration/badge.svg)](https://github.com/oxr463/setup-leiningen/actions)

Setup your GitHub Actions workflow with Leiningen.

## Example

```yaml
- name: Use oxr463/setup-leiningen
  uses: oxr463/setup-leiningen@0.0.1
  with:
    exec: |
      lein uberjar && \
      cp "$(find . -name '*.jar')" .
```

## Acknowledgement

Dockerfile initially based on [Andrew Phillips' ClojureScript Lein Image](https://github.com/theasp/docker-clojurescript-nodejs/blob/master/Dockerfile-lein).

Now uses the [official Clojure image](https://hub.docker.com/_/clojure).

## License

SPDX-License-Identifier: [MIT](LICENSE)

## Reference

- [Hello world docker action](https://github.com/actions/hello-world-docker-action)

## See Also

- [Setup Cordova](https://github.com/oxr463/setup-cordova)
