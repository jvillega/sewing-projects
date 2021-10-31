var mysql=require('mysql');
var database=require('./database.js');
var connection=mysql.createConnection(database.config);

/**
 * Query database for all projects.
 * @param {function} callback Function to call after database query.
 */
exports.get_projects = (callback) => {
  var query='select * from projects;';

  connection.query(query,(err,data) => {
    console.log(data);
    if (err) {
      console.log(err);
      callback(true);
      return;
    }
    callback(false,data);
  });
}
