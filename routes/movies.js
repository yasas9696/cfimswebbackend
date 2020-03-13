var express = require('express');
var router = express.Router();
const movieservice = require('../services/movieService');

/* GET movies listing. */
router.get('/', function(req, res, next) {
  movieservice.getAllmovies().then(movies=>
    res.send(movies));
});
router.get('/:id', function(req, res, next) {
  movieservice.getmoviebyId(req.params.id).then(movies=>
    res.send(movies));
});
router.post('/', function(req, res, next) {
  movieservice.addmovie(req.body).then(movies=>
    res.send(movies));
});
router.put('/:id', function(req, res, next) {
  movieservice.updatemovie(req.body,req.params.id).then(movies=>
    res.send(movies));
});
router.delete('/:id', function(req, res, next) {
  movieservice.deletemovie(req.params.id).then(movies=>
    res.send(movies));
});

module.exports = router;