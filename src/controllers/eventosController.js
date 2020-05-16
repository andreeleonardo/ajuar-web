const controller = {};

controller.list = (req, res) =>{
    res.render('eventos.html', {
        title: 'Eventos | Ajuar'
    });

};


module.exports = controller;