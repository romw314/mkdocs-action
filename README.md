# MkDocs GitHub Action

Build your MkDocs project using GitHub Actions.

## MkDocs plugins

* `mkdocs-material`
* `mkdocs-git-revision-date-localized-plugin`
* `mkdocs-swan`
* `mkdocs-helm`
* `mkdocs-licenseinfo`
* `mkdocs-multilang`
* `mkdocs-autozip`

Feel free to open an issue to request a plugin. You can also add it to `Dockerfile` and `README.md` and open a PR.

## Inputs

| Id            | Description                                                        | Required | Default      |
|---------------|--------------------------------------------------------------------|----------|--------------|
| `config-file` | The path to the MkDocs configuration file                          | No       | `mkdocs.yml` |
| `output-dir`  | The directory to output the HTML site to, relative to `workdir`    | No       | `_site`      |
| `workdir`     | The root directory of your project (which contains the `docs` dir) | No       | `.`          |

## Example usage

All examples may use outdates versions of actions and you may want to update them.

### Simple build

```yaml
name: MkDocs Build

jobs:
  build:
    runs-on: ubuntu-20.04
    steps:
    - name: Checkout
      uses: actions/checkout@v3
    - name: Build with MkDocs
      uses: romw314/mkdocs-action@v2
```

### Deploy to GitHub Pages

```yaml
name: MkDocs Build

jobs:
  build:
    runs-on: ubuntu-20.04
    steps:
    - name: Checkout
      uses: actions/checkout@v3
    - name: Build with MkDocs
      uses: romw314/mkdocs-action@v2
    - name: Upload artifact
      uses: actions/upload-pages-artifact@v1.0.9
  deploy:
    runs-on: ubuntu-20.04
    steps:
    - name: Configure Pages
      uses: actions/configure-pages@v4.0.0
    - name: Deploy to Pages
      uses: actions/deploy-pages@v3.0.1
```
