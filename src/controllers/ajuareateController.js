const controller = {};

controller.list = (req, res) =>{
    res.render('ajuareate.html', {
        title: '#ajuareate | Ajuar'
    });

};

module.exports = controller;