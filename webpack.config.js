const path = require('path');
const { merge } = require('webpack-merge');

const commonConfig = {
    entry: {
        main: path.resolve(__dirname, "typescript", "main.ts"),
    },
    output: {
        library: "[name]",
        path: path.join(__dirname, "assets"),
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

const productionConfig = {
    mode: 'production',
};

const developmentConfig = {
    mode: 'development',
    devtool: 'inline-source-map',
};

module.exports = (env, argv) => {
    if (argv.mode === 'production') {
        return merge(commonConfig, productionConfig);
    } else {
        return merge(commonConfig, developmentConfig);
    }
};