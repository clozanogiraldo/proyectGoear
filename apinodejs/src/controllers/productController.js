Product = require('../models/ProductsModels');

exports.index = (req, res) => {
    Product.get((err, product) => {
        if (err) {
            res.json({
                status: 'err',
                code: 500,
                message: err
            });
        }

        res.json(product)
    })
}

//create function for new product
exports.new = function(req, res) {
    let product = new Product()
    product.name = req.body.name
    product.direction = req.body.direction
    product.phone = req.body.phone
    product.food = req.body.food
    product.location = req.body.location
    product.price = req.body.price
    product.event = req.body.event
    product.environment = req.body.environment
    product.save(function(err) {
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
            data: product
        })
    })
}

//create fucntion view products
exports.view = function(req, res) {
    Product.findById(req.params.id, function(err, product) {
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
            data: product
        })
    })
}

exports.update = function(req, res) {
    Product.findById(req.params.id, function(err, product) {
        if (err)
            res.json({
                status: 'err',
                code: 500,
                message: err
            })
        product.name = req.body.name
        product.direction = req.body.direction
        product.phone = req.body.phone
        product.food = req.body.food
        product.location = req.body.location
        product.price = req.body.price
        product.event = req.body.event
        product.environment = req.body.environment
        product.save(function(err) {
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
                data: product
            })
        })
    })
}


exports.delete = function(req, res) {
    Product.remove({
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