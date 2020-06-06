const controller = {};

controller.list = (req, res) =>{
    req.getConnection((err, conn) =>{
        conn.query('select * from producto', (err, producto) =>{
            if(err){
                res.json(err);
            }
            console.log(producto);
            res.render('coleccion.html', {
                data:producto,
                title: 'Colección'
            });
        });
    });
};

module.exports = controller;
