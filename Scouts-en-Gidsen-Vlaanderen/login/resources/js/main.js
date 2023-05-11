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
