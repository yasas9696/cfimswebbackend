const History = require("../models/historyModel");

module.exports.addHistory = function(newHistory){
    console.log(newHistory)
    let{
        item_type,
        item_name,
        item_model,
        item_qr,
        item_status,
        item_capacity,
        item_image
    } = newHistory;
    return History.create({ item_type,
        item_name,
        item_model,
        item_qr,
        item_status,
        item_capacity,
        item_image})
        .then(res=>{Response={
            code:0,
            message:'',
            result:res

        }
        return Response;})

        .catch(err =>{Response={
            code:1,
            message:err.original.sqlMessage,
            result:null}
        return Response     
        })

}

module.exports.updateHistory = function(history,id){
    let{
        item_type,
        item_name,
        item_model,
        item_qr,
        item_status,
        item_capacity,
        item_image
    } = history;
    return History.update({ item_type,
        item_name,
        item_model,
        item_qr,
        item_status,
        item_capacity,
        item_image},{where:{id:id}})
        .then(res=>{Response={
            code:0,
            message:'',
            result:res

        }
        return Response;})

        .catch(err =>{Response={
            code:1,
            message:err.original.sqlMessage,
            result:null}
        return Response
        })

}
module.exports.getAllHistorys = function(){
    return History.findAll().then(res=>{Response={
        code:0,
        message:'',
        result:res

    }
    return Response;})

        .catch(err =>{Response={
            code:1,
            message:err.original.sqlMessage,
            result:null
    
        }
        return Response;})
}

module.exports.deleteHistory = function(id){
    return History.destroy({
        where:{id:id},
    }).then(res=>{
        Response={
            code:0,
            message:'',
            result:res

        }
        return Response;
    })
    .catch(err =>{Response={
        code:1,
        message:err,
        result:null

    }
    return Response;})
}

module.exports.getHistorybyId = function(id){
    return History.findOne({
        where:{id:id},
        raw:true
    }).then(res=>{
        Response={
            code:0,
            message:'',
            result:res

        }
        return Response;
    })
    .catch(err =>{Response={
        code:1,
        message:err,
        result:null

    }
    return Response;})
}