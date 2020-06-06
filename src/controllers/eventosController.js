const controller = {};

controller.list = (req, res) =>{
    res.render('eventos.html', {
        title: 'Eventos'
    });

};


module.exports = controller;