# macOS set up

1. Install [Homebrew](https://brew.sh/)
   ```
   $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   ```
1. Install Homebrew packages
   ```
   $ brew install antigen findutils bash vim bat php git wp-cli python mysql@5.7 grep zsh composer coreutils nginx ruby
   ```
1. Place [.zshrc](./.zshrc) file in home directory (`~/`) and modify as needed
1. Change your default shell to zsh
   ```
   $ chsh -s $(which zsh)
   ```
1. Install [Node Version Manager](https://github.com/creationix/nvm) and [Node](https://nodejs.org/en/)
   ```
   $ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
   $ nvm install node
   ```
1. Install [Valet](https://laravel.com/docs/5.8/valet#installation) and change tld
   ```
   $ valet tld wldev
   ```
1. Install your preferred editor and editorconfig/prettier plugins to automatically match the formatting defined in each project's `.prettierrc` and `.editorconfig`
1. Install other useful programs like [Sequel Pro](https://www.sequelpro.com/)

> Note: you may need to restart your terminal between each of the steps above.

# project set up

WordPress projects should use the [pt-wordpress](https://github.com/wlion/pt-wordpress) template.

Laravel projects should use the [pt-laravel](https://github.com/wlion/pt-laravel) template. Copy the [Open Compute Project](https://github.com/wlion/open-compute-project) CMS using [this snapshot](https://github.com/wlion/open-compute-project/tree/f8e679bc14d2ebe288a2c79ae45aee7e70478c27) for our latest React-based CMS implementation.

Both templates should pull our latest [CSS Framework](https://github.com/wlion/css-framework) when starting a new project.

# build process

Our project templates are already set up to use the latest Webpack (v4). Our Webpack implementation is inspired by [Facebook's react-scripts package](https://github.com/facebook/create-react-app/tree/master/packages/react-scripts). We should use the `react-scripts` package as an example of Webpack best practices when updating our own build process.

# react production examples

- [Hustler Turf Ad-materials](https://www.hustlerturf.com/ad-materials) ([code](https://github.com/wlion/hustlerturf-com/blob/master/resources/assets-ads/js/index.js))
- [Open Compute CMS](http://opencompute.wldev/admin) ([code](https://github.com/wlion/open-compute-project/tree/master/resources/assets-admin/js))
- [Open Compute Product Search with Algolia](http://opencompute.wldev/products) ([code](https://github.com/wlion/open-compute-project/blob/master/resources/assets/js/marketplace.js))
- [Open Compute Member Directory](http://opencompute.wldev/membership) ([code](https://github.com/wlion/open-compute-project/blob/master/resources/assets/js/directory.js))
- [Propane Dealer Search](https://propane.com/where-to-buy/find-propane-supplier/) ([code](https://github.com/wlion/propane-com/blob/master/wp-content/themes/wlion/assets/js/map-locator.js))

# fe dev interview process

- [take home exercise](https://github.com/wlion/candidate-exercise-fe)
- in-person interview ([questions](https://codesandbox.io/s/ry6yw4z3rp?module=%2Fsrc%2FforEach.js)) ([example answers](https://codesandbox.io/s/x7ryvql0qp?module=%2Fsrc%2FforEach.js))
  - the tests will pass once the functions are correct
  - functions should be written in this order: forEach -> map -> reduce
  - candidate can ask questions and consult documentation to see the standard js api for these functions
