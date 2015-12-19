var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) {
      console.log("messages get")
      models.messages.get(req, function(data){
        res.end(JSON.stringify(data))
      });
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      models.messages.post(req, function(data){
        res.end(JSON.stringify(data))
      });
    },

    // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      models.users.get(req, function(data){
        res.send(JSON.stringify(data))
      });
      console.log('users get')
    },
    post: function (req, res) {
      models.users.post(req, function(data){
        res.send(JSON.stringify(data))
      });console.log("users post")
    },
    
  }
};

