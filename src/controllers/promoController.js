const controller = {};

controller.list = (req, res) =>{
    res.render('promocion.html', {
        title: 'Promoción'
    });

};


module.exports = controller;