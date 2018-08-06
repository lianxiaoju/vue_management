const connect = require('../../db/connect')


router.post('/login', function (req, res, next) {
    let { name, pwd } = req.query;
    const sql = "select * from admin where name='" + name + "'and pwd='" + pwd + "'"
    var userInfo = parseInt(Math.random() * 10000)
    connect.query(sql, [name, pwd], (error, result) => {
        if (error) {
            return;
        }
        if (result.length > 0) {
            res.cookie("userInfo", userInfo, {
                maxAge: 1000 * 60 * 60 * 24 * 30
            })

            res.json({
                code: 1,
                msg: result
            })
        } else {
            res.json({
                code: 0,
                msg: '您的用户名或密码有误,请再次输入'
            })
        }

    });
})




module.exports = {
    Test,
}