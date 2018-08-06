// Connect.js文件中连接数据库
const mysql = require("mysql");
var conn = mysql.createConnection({
    host: 'localhost',
    password: "111111",
    user: 'root',
    database: 'lechun',
    port: '3306'
});
conn.connect((error) => {
    if (error) {
        console.log("失败")
    } else {
        console.log("数据库连接成功")
    }
})

module.exports = conn;