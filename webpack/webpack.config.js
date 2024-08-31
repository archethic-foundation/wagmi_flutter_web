const path = require('path');
const { merge } = require('webpack-merge');

const commonConfig = {
    entry: {
        main: path.resolve(__dirname, "..", "typescript", "main.ts"),
    },
    output: {
        library: "[name]",
        path: path.join(__dirname, "../assets"),
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
    optimization: {
        minimize: true,
        concatenateModules: true,
        splitChunks: {
            chunks: 'all', // Consider all types of chunks (entry, async, etc.)
            name: 'main', // Force all chunks into a single 'main' chunk
        },
    },
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