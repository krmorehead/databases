var db = require('../db');
var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'star',
  database : 'chat'
});


module.exports = {
  messages: {
    get: function (res, callback) {
      connection.connect();
  
      var request = 'SELECT m.message, u.user_name, r.room_name FROM messages m,users u, rooms r where (u.id = m.user_id and r.id = m.room_id);'
      // returns message, user_name, room_name
      connection.query(request, function(err, rows, fields) {
        if (err) throw err;
        console.log('-------ROWS-------');
        console.log(rows);
        // rows, fields
        callback(rows);
      });

      connection.disconnect();
    }, // a function which produces all the messages
    post: function (res, callback) {
    /*
    for foreign id's select the name from the other list
    returning the id
    */
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

