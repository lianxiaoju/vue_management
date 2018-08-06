const connect = require('../../db/connect')

const update = (id, options) => {
  let sql = 'update product set'
  for (var key in options) {
    sql += ' '+key+'='+options[key];
  }
  console.log(sql)
  sql += ' where id='+id;
  console.log(sql);

  return new Promise((resolve, reject) => {
    connect.query(sql, [], (error) => {
      if(error){
        reject();
        return;
      }
      detail({id: id}).then((res) => {
        resolve(res[0])
      })
    })
  })
}

const detail = (options) => {
  const sql = 'select * from product where `id`=?';

  return new Promise((resolve, reject) => {
    connect.query(sql, [options.id], (error, res) => {
      if(error){
        reject();
        return;
      }
      resolve(res)
    })
  })
}


module.exports = {
    update,
    detail
}