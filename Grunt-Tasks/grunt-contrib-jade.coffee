module.exports = (grunt) ->
	grunt.config "jade",
		options:
			pretty: true
			client: false
		dev:
			options:
				basedir: "src"
			files: [{
				cwd: "src/pages"
				src: "**/*.jade"
				dest: "build/public"
				expand: true
				ext: ".html"
			}]
	grunt.loadNpmTasks "grunt-contrib-jade"
	return
