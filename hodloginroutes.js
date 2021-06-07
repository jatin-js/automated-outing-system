//-----------/usr/bin/mysql -u root -p---------for opening mysql server locally

const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    socketPath: '/Applications/MAMP/tmp/mysql/mysql.sock', //for mac and linux
    database: 'outpass'
    

});

connection.connect(function (err) {
    if (!err) {
        console.log("Database is connected ... hod databse");
    } else {
        console.log("Error connecting database ... nn");
    }
});


// registration
exports.register = function (req, res) {
    // console.log("req",req.body);
    const today = new Date();
    const hod = {
        "name": req.body.username,
        "block": req.body.block,
        "phoneNumber": req.body.mobileNo,
        "collegeId": req.body.registrationNo,
        "email": req.body.email,
        "password": req.body.password
    };
    connection.query('INSERT INTO hod SET ?', hod, function (error, hod, fields) {
        if (error) {
            res.send({
                "code": 400,
                "failed": "error occurred"
            });
            throw error;
        } else {
            console.log('The solution is: ', hod);
            res.send({
                "code": 200,
                "success": "user registered successfully"
            });
        }
    });
};

// login
exports.login = function(req,res){
    const clgId= req.body.collegeId;
    // console.log(regNo);
    const mobileNo = req.body.mobileNo;
    // console.log(mobileNo);
    connection.query('SELECT * FROM hod WHERE collegeId = ?',[clgId], function (error, hod, fields) {
        if (error) {
            throw error;
        }else{
            // console.log('The solution is: ', results[0].phoneNumber);
            if(hod.length >0){
                // console.log(typeof (results[0].phoneNumber));
                // console.log(typeof (JSON.parse(mobileNo)));
                // if(hod[0].phoneNumber === JSON.parse(mobileNo)){
                if(hod[0].phoneNumber === mobileNo){
                    exports.collegeId = hod[0].collegeId;
                    res.redirect('/hod/requests');
                    // res.send('loggedin successfully');
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
