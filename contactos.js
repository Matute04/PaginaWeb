document.addEventListener('DOMContentLoaded', function() {
    const contactos = document.querySelectorAll('.contacto');

    contactos.forEach(contacto => {
        contacto.addEventListener('click', function() {
        
            contactos.forEach(contacto => {
                contacto.classList.remove('selected');
            });

            this.classList.add('selected');
        });
    });
});
