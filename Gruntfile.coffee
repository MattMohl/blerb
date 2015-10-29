module.exports = (grunt) ->
	# Configuration
	grunt.cacheMap = []
	grunt.initConfig pkg: grunt.file.readJSON "./package.json"

	# Load tasks from Grunt-Tasks folder
	grunt.loadTasks "Grunt-Tasks"

	# Register task aliases
	grunt.registerTask "default", [
		"clean:all"
		"css:dev"
		"plop-images"
		"connect"
		"browserSync"
		"watch"
	]

	# NOTE: 
	# - Initial Grunt call runs clean:all
	# - WATCH will clean individual types
	# - WATCH COPY will be done by individual type-tasks, not the global

	# HTML
	# grunt.registerTask "html:dev", [
	# 	"jade:dev"
	# 	"copy:html"
	# ]

	# CSS
	grunt.registerTask "css:dev", [
		"stylus:dev"
		"copy:css"
	]

	# Generate Documentation
	# grunt.registerTask "css:doc", [
	# 	"dss"
	# ]

	# Dump image files from src to dist - no minification yet.
	grunt.registerTask "plop-images", ["copy:image_simple"]
