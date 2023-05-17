document.querySelectorAll('.password-toggle').forEach(toggle => {
    const field = toggle.parentElement?.querySelector('.input-field');
    if (field === null) return;
    toggle.addEventListener('click', () => {
        const show = field.getAttribute('type') == 'password';
        field.setAttribute('type', show ? 'text' : 'password');
        field.focus()
        toggle.setAttribute('title', show ? 'Verberg wachtwoord' : 'Toon wachtwoord');
    });
});

document.querySelector('.help-link')?.addEventListener('click', () => {
    document.querySelector('.modal').style.display = 'block';
});

document.querySelector('.close')?.addEventListener('click', () => {
    document.querySelector('.modal').style.display = 'none';
});

document.documentElement.addEventListener('click', e => {
    if (e.target === document.querySelector('.modal')) {
        document.querySelector('.modal').style.display = 'none';
    }
});
