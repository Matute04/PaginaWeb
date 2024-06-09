document.addEventListener('DOMContentLoaded', function() {
    const squares = document.querySelectorAll('.square');

    squares.forEach(square => {
        square.addEventListener('mouseover', function() {
            // Elimina la clase 'selected' y restablece el z-index original de todos los cuadrados
            //lo hacemos en todos para verificar que al quitar el mouse de un cuadrado, el z-index se restablezca
            squares.forEach(sq => {
                sq.classList.remove('selected');
                sq.style.zIndex = sq.dataset.originalZIndex;
            });

            // Añade la clase 'selected' al cuadrado actual y aumenta su z-index
            this.classList.add('selected');
            this.style.zIndex = 100; // Valor arbitrariamente alto para asegurarse de que esté encima
        });

        // Restaura el z-index original cuando el ratón sale del cuadrado
        square.addEventListener('mouseout', function() {
            this.classList.remove('selected');
            this.style.zIndex = this.dataset.originalZIndex;
        });

        // Almacena el z-index original en un atributo de datos
        square.dataset.originalZIndex = getComputedStyle(square).zIndex;
    });
});
