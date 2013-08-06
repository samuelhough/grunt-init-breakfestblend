module.exports = (grunt) ->  
  # Project configuration.
  grunt.initConfig
    exec: 
      test:
        command: "cake test"
        exitCode: 0
    watch:
      lib:
        files: "lib/*.coffee"
        tasks: ["exec:test"]

      test:
        files: "test/*.coffee"
        tasks: [ "exec:test" ]

  grunt.loadNpmTasks "grunt-exec"
  grunt.loadNpmTasks "grunt-contrib-watch"
  
  # Default task.
  grunt.registerTask "default", [ "exec:test", "watch" ]
