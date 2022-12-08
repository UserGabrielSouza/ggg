var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/ultimas/:idCanteiro", function (req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});

router.get("/ultimas2/:idCanteiro", function (req, res) {
    medidaController.buscarUltimasMedidas2(req, res);
});

router.get("/ultimas3/:idCanteiro", function (req, res) {
    medidaController.buscarUltimasMedidas3(req, res);
});

router.get("/ultimas4/:idCanteiro", function (req, res) {
    medidaController.buscarUltimasMedidas4(req, res);
});

router.get("/ultimas5/:idCanteiro", function (req, res) {
    medidaController.buscarUltimasMedidas5(req, res);
});


// dados em tempo real 


router.get("/tempo-real/:idCanteiro", function (req, res) {
    medidaController.buscarMedidasEmTempoReal(req, res);
});

router.get("/tempo-real2/:idCanteiro", function (req, res) {
    medidaController.buscarMedidasEmTempoReal2(req, res);
});

router.get("/tempo-real3/:idCanteiro", function (req, res) {
    medidaController.buscarMedidasEmTempoReal3(req, res);
});

router.get("/tempo-real4/:idCanteiro", function (req, res) {
    medidaController.buscarMedidasEmTempoReal4(req, res);
});

router.get("/tempo-real5/:idCanteiro", function (req, res) {
    medidaController.buscarMedidasEmTempoReal5(req, res);
});

module.exports = router;