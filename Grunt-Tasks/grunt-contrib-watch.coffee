module.exports = (grunt) ->
	grunt.config "watch",

		options:
			spawn: false
			livereload: true

		html:
			files: "src/**/*.html"
			tasks: ["clean:html", "copy:html"]

		js:
			files: "src/js/**/*.js"
			tasks: ["clean:js", "copy:js"]

		css:
			files: "src/stylus/**/*.{css,styl}"
			tasks: ["clean:css", "css:dev", "copy:css"]

	grunt.loadNpmTasks "grunt-contrib-watch"
	return
