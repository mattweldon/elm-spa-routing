module.exports = {
  files: {
    javascripts: {
      joinTo: {
        'public/js/app.js': /^app/
      }
    },
    stylesheets: {
      joinTo: 'css/app.css'
    }
  },

  server: {
    port: 3000
  },

  paths: {
    // Which directories to watch
    watched: ["src"],

    // Where to compile files to
    public: "public"
  },

  plugins: {
    elmBrunch: {
      mainModules: ["src/App.elm"]
    }
  }
};
