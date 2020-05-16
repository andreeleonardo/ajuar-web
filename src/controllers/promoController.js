const controller = {};

controller.list = (req, res) =>{
    res.render('promocion.html', {
        title: 'Promoción | Ajuar'
    });

};


module.exports = controller;