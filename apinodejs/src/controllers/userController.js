User = require('../models/UserModels');

exports.index = (req, res) => {
    User.get((err, user) => {
        if (err) {
            res.json({
                status: 'err',
                code: 500,
                message: err
            });
        }

        res.json(user)
    })
}

//create function for new user
exports.new = async function(req, res) {
    let user = new User()
    user.name = req.body.name
    user.password = req.body.password
    user.email = req.body.email
    user.phone = req.body.phone
    user.password = await user.encryptPassword(req.body.password);
    user.save(function(err) {
        if (err) {
            res.json({
                status: 'err',
                code: 500,
                message: err
            })
        }
        res.json({
            status: 'success',
            code: 200,
            message: 'Register save',
            data: user
        })
    })
}

//create fucntion view user
exports.view = function(req, res) {
    User.findById(req.params.id, function(err, user) {
        if (err) {
            res.json({
                status: 'err',
                code: 500,
                message: err
            })
        }
        res.json({
            status: 'success',
            code: 200,
            message: 'Registros encontrado',
            data: user
        })
    })
}

exports.update = function(req, res) {
    User.findById(req.params.id, function(err, user) {
        if (err)
            res.json({
                status: 'err',
                code: 500,
                message: err
            })
        user.name = req.body.name
        user.password = req.body.password
        user.email = req.body.email
        user.phone = req.body.phone
        user.save(function(err) {
            if (err)
                res.json({
                    status: 'err',
                    code: 500,
                    message: err
                })
            res.json({
                status: 'success',
                code: 200,
                message: 'Registro actualizado',
                data: user
            })
        })
    })
}


exports.delete = function(req, res) {
    User.remove({
        _id: req.params.id
    }, function(err) {
        if (err)
            res.json({
                status: 'err',
                code: 500,
                message: err
            })
        res.json({
            status: 'success',
            code: 200,
            message: 'Registros eliminado'
        })
    })
}