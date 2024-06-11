<?php 
include('conexion.php');

?>


<div class="container-fluid pt-5">
    <div class="container">
        <div class="section-title">
            <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">Menu & Pricing</h4>
            <h1 class="display-4">Competitive Pricing</h1>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <h1 class="mb-5">Saltenias</h1>
                <!-- Saltenias -->
                <?php
                $sql="SELECT id,imagen,nombre,descripcion,precio,tipo from productos where tipo='alimento'";
                //echo $sql;
                $result = $con->query($sql);
                while ($row = $result->fetch_assoc()) {?>
                    <div class="row align-items-center mb-5">
                        <div class="col-4 col-sm-3">
                            <img class="w-100 rounded-circle mb-3 mb-sm-0" src="img/<?php echo $row["imagen"];?>" alt="">
                            <h5 class="menu-price"><?php echo $row["precio"]; ?></h5>
                        </div>
                        <div class="col-8 col-sm-9">
                            <h4><?php echo $row["nombre"]; ?></h4>
                            <p class="m-0"><?php echo $row["descripcion"]; ?></p>
                        </div>
                    </div>
                <?php } ?>
                
                
            </div>
            <div class="col-lg-6">
                <!-- Titulo -->
                <h1 class="mb-5">Refrescos</h1>
                <?php
                $sql="SELECT id,imagen,nombre,descripcion,precio,tipo from productos where tipo='bebida'";
                //echo $sql;
                $result = $con->query($sql);
                while ($row = $result->fetch_assoc()) {?>
                    <div class="row align-items-center mb-5">
                        <div class="col-4 col-sm-3">
                            <img class="w-100 rounded-circle mb-3 mb-sm-0" src="img/<?php echo $row["imagen"];?>" alt="">
                            <h5 class="menu-price"><?php echo $row["precio"]; ?></h5>
                        </div>
                        <div class="col-8 col-sm-9">
                            <h4><?php echo $row["nombre"]; ?></h4>
                            <p class="m-0"><?php echo $row["descripcion"]; ?></p>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>