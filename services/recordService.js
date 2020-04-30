const Record = require("../models/recordModel");

module.exports.getRecordByHistoryId = function(historyId) {
  return Record.findAll({
    where: { historyId:historyId },
    raw: true,
  }).then((res) => {
      Response = {
        code: 0,
        message: "",
        records: res,
      }
      return Response;
    })
    .catch(err =>{Response={
      code:1,
      message:err,
      records:null
  }
      return Response;
    })
}
