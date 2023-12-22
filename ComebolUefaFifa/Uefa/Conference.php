<?php include ('../../BancoDados/conexao.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/cssUefa/styleConference.css">
    <title>Conference League</title>
</head>
<body>
    <div>
        <h2 class="tituloStyle">Maiores Vencedores</h2>

        <?php
            $sqlMaioresVencedores = "SELECT * FROM conference_league ORDER BY quant_titulos DESC";
            $result = $conn->query($sqlMaioresVencedores);
        ?>

        <div class="m-5">
            <table class="table tabela table-bg">
                <thead>
                    <tr>
                    <th scope="col">Clube</th>
                    <th scope="col">Quantidade Titulos</th>
                    <th scope="col">País</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        while($dados = mysqli_fetch_assoc($result)){
                            echo "<tr>";
                            echo "<td>". $dados['nome_clube']. "</td>";
                            echo "<td>". $dados['quant_titulos']. "</td>";
                            echo "<td>". $dados['pais']. "</td>";
                            echo "<tr>";
                        }
                    ?>
                </tbody>
            </table>
        </div>
        
        <div class="divButtonStyle">
            <a href="../Uefa/inicialUefa.html" class="styleAbutton">
                <button class="btn"><img src="../../img/incon_voltar_white.png" class="rounded" alt="" width="25px"><div class="espacamento"></div>VOLTAR</button>
            </a>   
            <a href="../Uefa/Graficos/graficoConference.php" class="styleAbutton">
                <button class="btn"><img src="../../img/grafico.png" class="rounded" alt="" width="27px"><div class="espacamento"></div>Grafico</button>
            </a>            
        </div>

    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>