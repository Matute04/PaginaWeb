document.addEventListener('DOMContentLoaded', function() {
    const squares = document.querySelectorAll('.square');

    squares.forEach(square => {
        square.addEventListener('click', function() {
        
            squares.forEach(square => {
                square.classList.remove('selected');
            });

            this.classList.add('selected');
        });
    });
});
