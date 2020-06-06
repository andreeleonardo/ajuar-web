const controller = {};

controller.list = (req, res) =>{
    res.render('ajuareate.html', {
        title: '#ajuareate'
    });

};

controller.save = (req, res) =>{
    const data =req.body;
    req.getConnection((err, conn) =>{
        conn.query('INSERT INTO contact set ? ', [data], (err, contact) =>{
            if(err){
                res.json(err);
            }
            res.redirect('ajuareate.html');
            console.log(contact)
            });
        });
};

module.exports = controller;