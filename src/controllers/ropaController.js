const controller = {};

controller.list = (req, res) =>{
    res.render('ropa.html', {
        title: 'Ropa | Ajuar'
    });

};


module.exports = controller;