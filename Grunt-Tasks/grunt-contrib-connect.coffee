module.exports = (grunt) ->
	grunt.config "connect",
		server:
			options:
				base: "dist/public/"
				hostname: "*"
				port: 3000
				livereload: true

	grunt.loadNpmTasks "grunt-contrib-connect"
	return
