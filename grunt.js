module.exports = function(grunt) {

    grunt.initConfig({

        meta: {
            banner: '/*! Part of the Barebones theme written by Kasper Kronborg Isager */',
        },

        min: {

            dist: {
                src: [
                    //"<banner:meta.banner>",
                    "js/modules/application.js",
                    "js/libraries/!(_)*.js"
                ],
                dest: "js/framework.min.js"
            },

        },

        watch: {
            files: [
                "<config:min.dist.src>"
            ],
            tasks: "min"
        }

    });

    grunt.registerTask("default", "min");

};