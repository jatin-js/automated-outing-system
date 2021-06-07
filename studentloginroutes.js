//-----------/usr/bin/mysql -u root -p---------for opening mysql server locally

const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    port : '8888',
    user: 'root',
    password: 'root',
    socketPath: '/Applications/MAMP/tmp/mysql/mysql.sock', //for mac and linux
    database: 'outpass'
});

connection.connect(function (err) {
    if (err) {
        console.log("Error connecting database ... nn");
    } else {
        console.log("Database is connected ... studentlogin page");
    }
});


// registration
exports.register = function (req, res) {
    // console.log("req",req.body);
    const today = new Date();
    const student = {
        "name": req.body.name,
        "block": req.body.block,
        "branch": req.body.branch,
        "course": req.body.course,
        "phoneNumber": req.body.phoneNumber,
        "registrationNo": req.body.registrationNo,
        "roomNo": req.body.roomNo,
        "email": req.body.email,
        "password": req.body.password
    };
    connection.query('INSERT INTO student SET ?', student, function (error, student, fields) {
        if (error) {
            res.send({
                "code": 400,
                "failed": "error occurred"
            });
            throw error;
        } else {
            console.log('The solution is: ', student);
            res.redirect('/student');
        }
    });
};

// login
exports.login = function(req,res){
    const regNo= req.body.registrationNo;
    // console.log(regNo);
    const mobileNo = req.body.mobileNo;
    // console.log(mobileNo);
    connection.query('SELECT * FROM student WHERE registrationNo = ?',[regNo], function (error, results, fields) {
        if (error) {
            throw error;
        }else{
            // console.log('The solution is: ', results[0].phoneNumber);
            if(results.length >0){
                // console.log(typeof (results[0].phoneNumber));
                // console.log(typeof (JSON.parse(mobileNo)));
                    if(results[0].phoneNumber === mobileNo){
                        console.log("student mobile match");
                        exports.branch = results[0].branch;
                        exports.regNo = results[0].registrationNo;
                        exports.name = results[0].name;
                        exports.block = results[0].block;
                        exports.contact = results[0].phoneNumber;
                        exports.roomNo = results[0].roomNo;
                        exports.email = results[0].email;
                        // console.log(results[0].registrationNo);
                        res.redirect('/studentForm');
                }
                else{
                    res.send({
                        "code":204,
                        "success":"Email and password does not match"
                    });
                }
            }
            else{
                res.send({
                    "code":204,
                    "success":"Email does not exits"
                });
            }
        }

    });
};
