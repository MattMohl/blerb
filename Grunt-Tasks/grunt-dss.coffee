module.exports = (grunt) ->
	grunt.config "dss",
		docs:
			files:
				'css-api/stylus/': 'src/stylus/**/*.{css,styl}'

			options:
				template: 'docs/css/dss-template/'
				include: 'src/stylus/main.styl'
				include_empty_files: false

	grunt.loadNpmTasks "grunt-dss"
	return
