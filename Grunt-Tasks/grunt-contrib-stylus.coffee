module.exports = (grunt) ->
	grunt.config "stylus",
		dev:
			options:
				compress: false
				# firebug: true
			files:
				"build/public/css/main.css": "src/stylus/main.styl"
		prod:
			options:
				compress: true
			files:
				"build/public/css/main.css": "src/stylus/main.styl"

	grunt.loadNpmTasks "grunt-contrib-stylus"
	return
