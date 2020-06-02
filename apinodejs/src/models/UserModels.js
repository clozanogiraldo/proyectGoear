let mongoose = require('mongoose')
const bcrypt = require('bcryptjs');

let userShema = mongoose.Schema({
    name: {
        type: String,
        required: true,
    },
    password: {
        type: String,
        required: true,
    },
    email: {
        type: String,
        required: true,
    },
    phone: {
        type: String,
        required: true,
    },
    create: {
        type: Date,
        default: Date.now
    }
});

userShema.methods.encryptPassword = async(password) => {
    const salt = await bcrypt.genSalt(10);
    return bcrypt.hash(password, salt);
};

userShema.methods.validatePassword = function(password) {
    return bcrypt.compare(password, this.password);
};

let User = module.exports = mongoose.model('user', userShema);

//cada vez que hagamos una peticion get se ejecuta esto
module.exports.get = function(callback, limit) {
    User.find(callback).limit(limit);
}