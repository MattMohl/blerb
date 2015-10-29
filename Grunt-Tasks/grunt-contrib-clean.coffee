module.exports = (grunt) ->
	grunt.config "clean",

		all:
			src: ["./build", "./dist"]
			# dot: true # clean hidden files as well

		html:
			src: ["./build/public/**/*.html", "./dist/public/**/*.html"]

		js:
			src: ["./build/public/**/*.js", "./dist/public/**/*.js"]

		css:
			src: ["./build/public/css", "./dist/public/css"]

	grunt.loadNpmTasks "grunt-contrib-clean"
	return
