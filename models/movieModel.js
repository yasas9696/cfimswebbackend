const Sequelize = require("sequelize");
const db = require("../DBConnection/connection");

const  movies = db.seq.define(
    "movies",
    {
        item_type:{
            type:Sequelize.STRING
        },
        item_name:{
            type:Sequelize.STRING
        },
        item_model:{
            type:Sequelize.STRING
        },
        item_qr:{
            type:Sequelize.STRING
        },
        item_status:{
            type:Sequelize.STRING
        },
        item_capacity:{
            type:Sequelize.STRING
        },
        item_image:{
            type:Sequelize.STRING
        },
        

    },
   { timestamps:false}
    
)
module.exports = movies;