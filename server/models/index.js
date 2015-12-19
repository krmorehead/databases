var db = require('../db');

module.exports = {
  messages: {
    get: function (res, callback) {
      callback('hello world');
    }, // a function which produces all the messages
    post: function (res, callback) {
      callback("hello post")
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function (res, callback) {
      callback('users get')
    },
    post: function (res, callback) {
      callback('users post')
    }
  }
};

