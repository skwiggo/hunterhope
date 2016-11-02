var webpack = require('webpack')

config = {
  entry: "./src/hunterHope.js",
  output: {
    filename: "bundle.js",
    path: "./build"
  },
  devtool: 'source-map',
  plugins: [
          new webpack.ProvidePlugin({
             $: "jquery",
             jQuery: "jquery"
         })
      ]
}

module.exports = config;