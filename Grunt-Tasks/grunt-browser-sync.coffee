module.exports = (grunt) ->
	grunt.config "browserSync",

		dev:
			options:
				ui:
					port: 8000
				port: 8888
				proxy: "localhost:3000"
				watchTask: true

			# bsFiles:
			# 	src: "dist/public/css/root.css"

	grunt.loadNpmTasks "grunt-browser-sync"
	return
