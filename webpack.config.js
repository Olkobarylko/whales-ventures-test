const path = require("path");
const MiniCssExtractPlugin = require("mini-css-extract-plugin");
const globImporter = require("node-sass-glob-importer");

module.exports = {
  mode: "development",
  entry: {
    main: "./src/js/main.js",
  },
  devtool: 'source-map',
  output: {
    path: path.resolve(__dirname, "dist/js/"),
    filename: "bundle.js",
  },
  module: {
    rules: [
      {
        test: /.(scss|css)$/,
        use: [
          {
            loader: MiniCssExtractPlugin.loader,
          },
          {
            loader: "css-loader",
            options: {
              sourceMap: true,
            },
          },
          {
            loader: "postcss-loader",
            options: {
              sourceMap: true,
              config: {
                path: "postcss.config.js",
              },
            },
          },
          {
            loader: "sass-loader",
            options: {
              sourceMap: true,
              sassOptions: {
                importer: globImporter(),
              },
            },
          },
        ],
      },
      {
        test: /\.(jpg|jpeg|gif|png|svg|webp)$/,
        use: [
          {
            loader: "file-loader",
            options: {
              outputPath: "../images",
            },
          },
        ],
      },
      {
        test: /\.(woff(2)?|ttf|eot|otf)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
        use: [
          {
            loader: "file-loader",
            options: {
              name: "[name].[ext]", // Зберігає оригінальну назву файлу з розширенням
              outputPath: "../fonts", // Шлях до вихідної папки
            },
          },
        ],
      },

    ],
  },
  plugins: [
    new MiniCssExtractPlugin({
      filename: "../css/main.css",
    }),
  ],
};
