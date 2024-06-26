(function ($) {
    "use strict";
    
    // Dropdown on mouse hover
    $(document).ready(function () {
        function toggleNavbarMethod() {
            if ($(window).width() > 992) {
                $('.navbar .dropdown').on('mouseover', function () {
                    $('.dropdown-toggle', this).trigger('click');
                }).on('mouseout', function () {
                    $('.dropdown-toggle', this).trigger('click').blur();
                });
            } else {
                $('.navbar .dropdown').off('mouseover').off('mouseout');
            }
        }
        toggleNavbarMethod();
        $(window).resize(toggleNavbarMethod);
    });
    
    
    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
        return false;
    });
    

    // Date and time picker
    $('.date').datetimepicker({
        format: 'L'
    });
    $('.time').datetimepicker({
        format: 'LT'
    });


    // Testimonials carousel
    $(".testimonial-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1500,
        margin: 30,
        dots: true,
        loop: true,
        center: true,
        responsive: {
            0:{
                items:1
            },
            576:{
                items:1
            },
            768:{
                items:2
            },
            992:{
                items:3
            }
        }
    });
    
})(jQuery);

function comentario() {

    var formulario = document.getElementById("contactForm");
  
    var parametros =new FormData(formulario);
    
    var ajax = new XMLHttpRequest() //crea el objetov ajax 
    
    ajax.open("post", "insertarcomentario.php", true);
    ajax.onreadystatechange = function () {
        if (ajax.readyState == 4) {
            //datos.innerHTML = ajax.responseText
            formulario.innerHTML = `<div style="
        background-color: #4CAF50; /* Fondo verde */
        color: white; /* Texto blanco */
        padding: 20px; /* Espaciado interno */
        border-radius: 5px; /* Bordes redondeados */
        font-family: Arial, sans-serif; /* Tipografía */
        text-align: center; /* Centrar texto */
        width: 200px; /* Ancho fijo */
        margin: 50px auto; /* Centrar el div horizontalmente */
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* Sombra */
        ">
        Mensaje Enviado
    </div>`
            formulario.reset();
        }
    }
    ajax.send(parametros);
}
function pedido() {
    var formulario = document.getElementById("orderForm");

    var parametros =new FormData(formulario);
    
    var ajax = new XMLHttpRequest() //crea el objetov ajax 
    
    ajax.open("post", "insertarpedidos.php", true);
    ajax.onreadystatechange = function () {
        if (ajax.readyState == 4) {
            //datos.innerHTML = ajax.responseText
            formulario.reset();
            formulario.innerHTML = `<div style="
        background-color: #4CAF50; /* Fondo verde */
        color: white; /* Texto blanco */
        padding: 20px; /* Espaciado interno */
        border-radius: 5px; /* Bordes redondeados */
        font-family: Arial, sans-serif; /* Tipografía */
        text-align: center; /* Centrar texto */
        width: 200px; /* Ancho fijo */
        margin: 50px auto; /* Centrar el div horizontalmente */
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* Sombra */
        ">
        Mensaje Enviado
    </div>`
        }
    }
    ajax.send(parametros);
}

