<?php 
include('conexion2.php');
?>

<div class="container-fluid pt-5">
    <div class="container">
        <div class="section-title">
            <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">Contactanos</h4>
            <h1 class="display-4">Estamos a tu disposición</h1>
        </div>
        <div class="row px-3 pb-2">
            <div class="col-sm-4 text-center mb-3">
                <i class="fa fa-2x fa-map-marker-alt mb-3 text-primary"></i>
                <h4 class="font-weight-bold">Dirección</h4>
                <p>Cañada Strongest 7, Sucre</p>
            </div>
            <div class="col-sm-4 text-center mb-3">
                <i class="fa fa-2x fa-phone-alt mb-3 text-primary"></i>
                <h4 class="font-weight-bold">Telefono</h4>
                <p>+591 72850441</p>
            </div>
            <div class="col-sm-4 text-center mb-3">
                <i class="far fa-2x fa-envelope mb-3 text-primary"></i>
                <h4 class="font-weight-bold">Email</h4>
                <p>marysalteñas@gmail.com</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 pb-5">
                <iframe style="width: 100%; height: 443px;" 
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3781.998949087892!2d-65.2576163!3d-19.0438158!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93fbcf339099bea7%3A0xd52f91c268d8d9a0!2sSalte%C3%B1eria%20Mary!5e0!3m2!1ses!2sbo!4v1623230781238!5m2!1ses!2sbo" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <div class="col-md-6 pb-5">
                <div class="contact-form">
                    <div id="success"></div>
                    <form name="sentMessage" id="contactForm" method="post" action="javascript:comentario()" novalidate="novalidate">
                        <div class="control-group">
                            <input type="text" class="form-control bg-transparent p-4" name="name" placeholder="Tu Nombre" required="required" data-validation-required-message="Please enter your name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="email" class="form-control bg-transparent p-4" name="email" placeholder="Tu Correo Electronico" required="required" data-validation-required-message="Please enter your email" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="text" class="form-control bg-transparent p-4" name="subject" placeholder="Asunto" required="required" data-validation-required-message="Please enter a subject" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <textarea class="form-control bg-transparent py-3 px-4" rows="5" name="message" placeholder="Mensaje" required="required" data-validation-required-message="Please enter your message"></textarea>
                            <p class="help-block text-danger"></p>
                        </div>
                        <div>
                            <input class="btn btn-primary font-weight-bold py-3 px-5" type="submit" value="Enviar Mensaje" name="submit" id="sendMessageButton">
                        </div>
                        
                    </form>
                    <!--  -->
                    <div id ="mensaje"></div>
                </div>
            </div>
        </div>
    </div>
</div>  