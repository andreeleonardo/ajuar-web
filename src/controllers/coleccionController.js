const controller = {};

controller.list = (req, res) =>{
    res.render('coleccion.html', {
        title: 'Colección | Ajuar'
    });

};


module.exports = controller;