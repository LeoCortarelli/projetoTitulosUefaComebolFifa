<?php include ('../../../BancoDados/conexao.php'); ?> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <link rel="stylesheet" href="../../../css/Graficos/styleGraficoChampions.css">
    <title>Grafico Títulos Champions</title>
</head>
<body>
    <div class="styleTabela">
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
        google.charts.load("current", {packages:['corechart']});
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
            ["Element", "Titulos", { role: "style" } ], // Topo da tabela

            <?php

                $sql = "SELECT * FROM europa_league";
                $busca = mysqli_query($conn, $sql);

                while($dados = mysqli_fetch_array($busca)){ // buscando na tabela champions_league
                    $nomeClube = $dados['nome_clube'];
                    $titulosChampions = $dados['quant_titulos'];
                

            ?>

            ["<?php echo $nomeClube ?>", <?php echo $titulosChampions ?>, "#0066cc"], 
            

            <?php } ?> // fechando as chaves do while

            ]);

            var view = new google.visualization.DataView(data);
            view.setColumns([0, 1,
                            { calc: "stringify",
                            sourceColumn: 1,
                            type: "string",
                            role: "annotation" },
                            2]);

            var options = {
                title: "Grafico de titulos da champions league",
                width: 1500,    
                height: 500,
                bar: {groupWidth: "95%"},
                legend: { position: "none" },
            };
            var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
            chart.draw(view, options); 
        }
        </script>
        <div id="columnchart_values" style="width: 800px; height: 500px;"></div>
    </div> 

  

    <div class="divButtonStyle" style="margin-top: 15px;">
        <a href="../EuropaLeague.php" class="styleAbutton">
            <button class="btn"><img src="../../../img/incon_voltar_white.png" class="rounded" alt="" width="25px"><div class="espaIncon"></div>VOLTAR</button>
        </a>            
    </div>

 </body>
</html>