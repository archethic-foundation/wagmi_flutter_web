const path = require('path');
module.exports = {
    entry: {
        main: path.resolve(__dirname, "..", "typescript", "main.ts"),
    },
    devtool: 'inline-source-map',
    output: {
        library: "[name]",
        path: path.join(__dirname, "../lib/assets"),
        filename: "[name].js",
    },
    resolve: {
        extensions: [".ts", ".js"],
    },
    module: {
        rules: [
            {
                test: /\.tsx?$/,
                loader: "ts-loader",
                exclude: /node_modules/,
            },
        ],
    },
};