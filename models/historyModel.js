const Sequelize = require("sequelize");
const db = require("../DBConnection/connection");

const  history = db.seq.define(
    "history",
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
module.exports = history;