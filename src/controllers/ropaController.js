const controller = {};

controller.list = (req, res) =>{
    req.getConnection((err, conn) =>{
        conn.query('select * from producto', (err, producto) =>{
            if(err){
                res.json(err);
            }
            console.log(producto);
            res.render('ropa.html', {
                data:producto,
                title: 'Ropa'
            });
        });
    });
};

module.exports = controller;
