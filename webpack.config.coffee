webpack = require 'webpack'

module.exports =
	entry: './main.coffee'
	output:
		path: '/tmp/helloweb'
		filename: 'all.js'
	module:
		rules: [
			{ test: /\.coffee$/, use: 'coffee-loader' }
			{ test: /\.pug$/, use: ['file-loader?name=[name].html', 'pug-html-loader'] }
			{ test: /\.sass$/, use: ['style-loader', 'css-loader', 'sass-loader'] }
			{ test: /\.png$/, use: 'file-loader' }
		]
	devtool: 'source-map'
	devServer:
		hot: true
		inline: true
	plugins: [
		new webpack.HotModuleReplacementPlugin
		new webpack.NamedModulesPlugin
	]
