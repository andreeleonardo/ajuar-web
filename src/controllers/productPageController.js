const controller = {};

controller.list = (req, res) =>{
    const id = req.params.producto;
    
    req.getConnection((err, conn) =>{
        conn.query('Select * from producto where id_producto = ?', [id],(err, producto) =>{
            if(err){
                res.json(err);
            }
            console.log(producto);
            res.render('product-page.html', {
                data:producto,
                title: 'Product'
            });
        });
    });
};

module.exports = controller;