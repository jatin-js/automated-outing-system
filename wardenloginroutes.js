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
        console.log("Database is connected ... warden databse");
    } else {
        console.log("Error connecting database ... nn");
    }
});

// login
exports.login = function(req,res){
    const wardenId= req.body.wardenId;
    console.log(wardenId);
    const mobileNo = req.body.mobileNo;
    // console.log(mobileNo);
    connection.query('SELECT * FROM warden WHERE wardenId = ?',[wardenId], function (error, warden, fields) {
        if (error) {
            throw error;
        }else{
            if(warden.length >0){
                if(warden[0].phoneNumber === mobileNo){
                    exports.wardenId = warden[0].collegeId;
                    res.redirect('/warden/requests');
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