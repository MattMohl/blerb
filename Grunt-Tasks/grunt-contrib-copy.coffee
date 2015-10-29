module.exports = (grunt) ->
	grunt.config "copy",
		public:
			files: [{
				expand: true
				dot: true
				cwd: "build/public"
				src: "**/*"
				dest: "dist/public/"
			}]

		html:
			files: [{
				expand: true
				cwd: "build/public"
				src: "**/*.html"
				dest: "dist/public/"
			}]

		css:
			files: [{
				expand: true
				cwd: "build/public/css"
				src: "**/*.css"
				dest: "dist/public/css/"
			}]

		image_simple:
			files: [{
				expand: true
				cwd: "src/images"
				src: "**/*.{svg,png,jpg,gif}"
				dest: "dist/public/images/"
			}]
			
	grunt.loadNpmTasks "grunt-contrib-copy"
	return
