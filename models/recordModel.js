const Sequelize = require("sequelize");
const db = require("../DBConnection/connection");

const records = db.seq.define(
  "records",
  {
    userId: {
      type: Sequelize.STRING,
    },
    historyId: {
      type: Sequelize.STRING,
    },
    itemId: {
      type: Sequelize.STRING,
    },
  },
  { timestamps: false }
);
module.exports = records;
