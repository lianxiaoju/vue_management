var express = require('express');
var router = express.Router();
var connect = require('./db/connect')
// var LogFin = require('./login/')
var jwt = require('jsonwebtoken')
var Product = require('./model/product/')

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

router.get('/shopcar', function (req, res, next) {
    let { page, pageSize } = req.query;
    let sql = `select * from product limit ${(page - 1) * pageSize},${pageSize}`
    connect.query(sql, [], (error, result) => {
        if (error) {
            return;
        }
        connect.query('select count(*) from product', [], (error2, res2) => {
            if (error2) {
                return;
            }
            res.json({
                count: res2[0]['count(*)'],
                data: result
            })
        })
    })

})

router.get('/publish', async (req, res, next) => {
    let { id, status } = req.query;
    const item = await Product.update(id,{status})
    console.log(item)
    res.json({
        code:1,
        data:item
    })

})


module.exports = router;
















