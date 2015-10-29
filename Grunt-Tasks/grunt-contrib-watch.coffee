module.exports = (grunt) ->
	grunt.config "watch",

		options:
			spawn: false
			livereload: true

		css:
			files: "src/stylus/**/*.{css,styl}"
			tasks: ["clean:css", "css:dev", "copy:css"]

	grunt.loadNpmTasks "grunt-contrib-watch"
	return
