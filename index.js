//Connect to our mySQL database
//Run query
//Console log results

//ES5 way to import library and assign to variable
const mysql = require('mysql2');

//Connect to database
const db = mysql.createConnection({
    host: '34.170.135.140',
    user: 'root',
    password: 'BuildingSoFLo',
    database: 'swecc-summer-2022',
});

//Run simple query
db.query('SELECT * FROM Books_cc', (err, results) => {
    if(err) {
        console.log(err);
    }
    //Output results
    console.log(results);
    db.end(); //Closes connection to database
})


