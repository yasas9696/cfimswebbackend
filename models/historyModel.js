const Sequelize = require("sequelize");
const db = require("../DBConnection/connection");

const  movies = db.seq.define(
    "movies",
    {
        date:{
            type:Sequelize.DATE
        },
        event:{
            type:Sequelize.STRING
        },
        jobNumber:{
            type:Sequelize.STRING
        },
        department:{
            type:Sequelize.STRING
        },
        empNo:{
            type:Sequelize.INTEGER
        },
        


    },
   { timestamps:false}
    
)
module.exports = movies;