module.exports = (grunt) ->  
  # Project configuration.
  grunt.initConfig


# command: The shell command to be executed. Must be a string or a function that returns a string. (alias: cmd)
# stdout: If true, stdout will be printed. Defaults to true.
# stderr: If true, stderr will be printed. Defaults to true.
# cwd: Current working directory of the shell command. Defaults to the directory containing your Gruntfile.
# exitCode: The expected exit code, task will fail if the actual exit code doesn't match. Defaults to 0.
# callback: The callback function passed child_process.exec. Defaults to a noop.

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