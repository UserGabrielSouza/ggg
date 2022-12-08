var database = require("../database/config");

function buscarUltimasMedidas(idCanteiro, limite_linhas) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `select top ${limite_linhas}
        sensorAzul,  
                        momento,
                        FORMAT(momento, 'HH:mm:ss') as momento_grafico
                    from medida
                    where fkCanteiro = ${idCanteiro}
                    order by id desc`;
    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select 
        sensorAzul, 
                        momento,
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico
                    from medida
                    where fkCanteiro = ${idCanteiro}
                    order by id desc limit ${limite_linhas}`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

// sensor 2

function buscarUltimasMedidas2(idCanteiro, limite_linhas) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `select top ${limite_linhas}
        sensorAmarelo,  
                        momento,
                        FORMAT(momento, 'HH:mm:ss') as momento_grafico
                    from medida
                    where fkCanteiro = ${idCanteiro}
                    order by id desc`;
    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select 
        sensorAmarelo, 
                        momento,
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico
                    from medida
                    where fkCanteiro = ${idCanteiro}
                    order by id desc limit ${limite_linhas}`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

// sensor 3

function buscarUltimasMedidas3(idCanteiro, limite_linhas) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `select top ${limite_linhas}
        sensorVermelho,  
                        momento,
                        FORMAT(momento, 'HH:mm:ss') as momento_grafico
                    from medida
                    where fkCanteiro = ${idCanteiro}
                    order by id desc`;
    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select 
        sensorVermelho, 
                        momento,
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico
                    from medida
                    where fkCanteiro = ${idCanteiro}
                    order by id desc limit ${limite_linhas}`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

// sensor 4

function buscarUltimasMedidas4(idCanteiro, limite_linhas) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `select top ${limite_linhas}
        sensorVerde,  
                        momento,
                        FORMAT(momento, 'HH:mm:ss') as momento_grafico
                    from medida
                    where fkCanteiro = ${idCanteiro}
                    order by id desc`;
    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select 
        sensorVerde, 
                        momento,
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico
                    from medida
                    where fkCanteiro = ${idCanteiro}
                    order by id desc limit ${limite_linhas}`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

// sensor 5

function buscarUltimasMedidas5(idCanteiro, limite_linhas) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `select top ${limite_linhas}
        sensorRoxo,  
                        momento,
                        FORMAT(momento, 'HH:mm:ss') as momento_grafico
                    from medida
                    where fkCanteiro = ${idCanteiro}
                    order by id desc`;
    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select 
        sensorRoxo, 
                        momento,
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico
                    from medida
                    where fkCanteiro = ${idCanteiro}
                    order by id desc limit ${limite_linhas}`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal(idCanteiro) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `select top 1
        sensorAzul,  
                        CONVERT(varchar, momento, 108) as momento_grafico, 
                        fkCanteiro 
                        from medida where fkCanteiro = ${idCanteiro} 
                    order by id desc`;

    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select 
        sensorAzul, 
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico, 
                        fkCanteiro 
                        from medida where fkCanteiro = ${idCanteiro} 
                    order by id desc limit 1`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

// sensor 2

function buscarMedidasEmTempoReal2(idCanteiro) {
    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `select top 1
        sensorAmarelo,  
                        CONVERT(varchar, momento, 108) as momento_grafico, 
                        fkCanteiro 
                        from medida where fkCanteiro = ${idCanteiro} 
                    order by id desc`;

    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select 
        sensorAmarelo, 
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico, 
                        fkCanteiro 
                        from medida where fkCanteiro = ${idCanteiro} 
                    order by id desc limit 1`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

// sensor 3

function buscarMedidasEmTempoReal3(idCanteiro) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `select top 1
        sensorVermelho,  
                        CONVERT(varchar, momento, 108) as momento_grafico, 
                        fkCanteiro 
                        from medida where fkCanteiro = ${idCanteiro} 
                    order by id desc`;

    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select 
        sensorVermelho, 
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico, 
                        fkCanteiro 
                        from medida where fkCanteiro = ${idCanteiro} 
                    order by id desc limit 1`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

// sensor 4

function buscarMedidasEmTempoReal4(idCanteiro) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `select top 1
        sensorVerde,  
                        CONVERT(varchar, momento, 108) as momento_grafico, 
                        fkCanteiro 
                        from medida where fkCanteiro = ${idCanteiro} 
                    order by id desc`;

    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select 
        sensorVerde, 
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico, 
                        fkCanteiro 
                        from medida where fkCanteiro = ${idCanteiro} 
                    order by id desc limit 1`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

// sensor 5

function buscarMedidasEmTempoReal5(idCanteiro) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `select top 1
        sensorRoxo,  
                        CONVERT(varchar, momento, 108) as momento_grafico, 
                        fkCanteiro 
                        from medida where fkCanteiro = ${idCanteiro} 
                    order by id desc`;

    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select 
        sensorRoxo, 
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico, 
                        fkCanteiro 
                        from medida where fkCanteiro = ${idCanteiro} 
                    order by id desc limit 1`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
    buscarUltimasMedidas2,
    buscarUltimasMedidas3,
    buscarUltimasMedidas4,
    buscarUltimasMedidas5,
    buscarMedidasEmTempoReal,
    buscarMedidasEmTempoReal2,
    buscarMedidasEmTempoReal3,
    buscarMedidasEmTempoReal4,
    buscarMedidasEmTempoReal5,
}
