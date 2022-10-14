



var mysql = require('mysql');
const { faker } = require('@faker-js/faker');



var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',     // your root username
  database : 'join_us'   // the name of your db
});

// var q = 'SELECT COUNT(*) AS total FROM users';
// The equivalent SQL query:

// SELECT CURTIME() as time, CURDATE() as date, NOW() as now;


// connection.query(q, function (error, results, fields) {
//    if (error) throw error;
//    	console.log(results[0].total)
// });

// connection.end();



// var q = 'INSERT INTO users (email) VALUES ("rusty_the_dog@gmail.com")';

// connection.query(q, function (error, results, fields) {
//    if (error) throw error;
//    	console.log(results)
// });

// connection.end();

// var person = {email: faker.internet.email()};

// connection.query('INSERT INTO users SET ?', person, function (error, results, fields) {
//    if (error) throw error;
//    	console.log(results)
// });

// connection.end();

// An easier approach that allows for dynamic data



// var person = {
//     email: faker.internet.email(),
//     created_at: faker.date.past()
// };
 
// var end_result = connection.query('INSERT INTO users SET ?', person, function(err, result) {
//   if (err) throw err;
//   console.log(result);
// });

// The Code To INSERT 500 Random Users
// var mysql = require('mysql');
// var faker = require('faker');
 
 
// var connection = mysql.createConnection({
//   host     : 'localhost',
//   user     : 'root',
//   database : 'join_us'
// });
 
 
// var data = [];
// for(var i = 0; i < 500; i++){
//     data.push([
//         faker.internet.email(),
//         faker.date.past()
//     ]);
// }
 
 
// var q = 'INSERT INTO users (email, created_at) VALUES ?';
 
// connection.query(q, [data], function(err, result) {
//   console.log(err);
//   console.log(result);
// });
 
// connection.end();



// var data = []
// for(var i = 0; i < 500; i++) {
// 	data.push([
// 		faker.internet.email(),
// 		faker.date.past()
// 	]);
// }

// console.log(data);

var q = 'SELECT created_at FROM users ORDER BY created_at ASC LIMIT 1';

connection.query(q, function (error, results, fields) {
   if (error) throw error;
   	console.log(results)
});

connection.end();

