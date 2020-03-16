# A contemplating action instance for seAp

## Site URLs
- [Staging](https://neontribe.github.io/ca-seap)
- [Production TBC](#)

### Elm with Webpack and Yarn
- `elm.json` for elm packages
- `package.json` for node packages
- `yarn.lock` current versions of node packages
- `webpack.config.js` - build and compile config
- `src` - the app source files

## Installation
- You will need `elm@0.19`, `node` and `yarn`. Follow the official install instructions.
- You will need some files from the `github.com/neontribe/contemplating-action` project. Get them by running `bash build.sh`. The build script will copy and install the necessary files for the project.
￼
## Development
- `yarn` to install
- `yarn dev` to watch files and serve to `localhost:3000`
- Only brand specific files will be commited to this repo when edited. (see `.gitignore`)

## Tests
We're using [elm-test](https://github.com/rtfeldman/node-test-runner/releases/tag/0.18.12) for testing.
- `yarn test` from root of site to run tests

## Code Style
We're using [elm-format](https://github.com/avh4/elm-format) to standardise formatting.
The output of different versions of elm-format varies significantly, so please use version `0.8.1`.
- e.g. `yarn format src` from the root of site to format all files in `src`

## Deployment

### To staging (GitHub pages) with Travis
We're using [Travis](https://travis-ci.org).
- On every push to the repo, Travis will build and run tests
- To trigger a deploy to gh-pages, create and push a tag (e.g. `git tag v1.0.0 && git push origin --tags`
Encrypted vars can be added to `.travis.yml` using the travis cli tools as decribed in the [travis docs](https://docs.travis-ci.com/user/encryption-keys/#usage).
Currently configured with GITHUB_TOKEN value.


### To Production
The production is hosted using [now.sh](https://now.sh).
The process is manual and requires deploying two now apps. You can do that by installing now and deploying the separate now.json files.
To speed this up you can make sure `now` is installed globally before running npx `yarn global add now`.
This will deploy what is currently in your dist folder, so make sure you have a build in `dist/` that you want to deploy.

Quickstart:
```bash
./build.sh
yarn build
npx now --prod
npx now --prod -A now.redirect.json
```

This will require access to the Hospice Hope now account: [https://zeit.co/ca-advocacy-people](https://zeit.co/ca-advocacy-people).
