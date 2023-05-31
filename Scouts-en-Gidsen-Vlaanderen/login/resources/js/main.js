document.querySelectorAll('.password-toggle').forEach(toggle => {
    const field = toggle.parentElement?.querySelector('.input-field');
    if (field === null) return;
    toggle.addEventListener('click', () => {
        const show = field.getAttribute('type') === 'password';
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

const loginPrompt = document.querySelector('.login-prompt');
const clientId = new URLSearchParams(location.search).get('client_id');
if (loginPrompt != null && clientId != null) {
    let client;
    if (clientId === 'evenementen-inis') {
        client = 'de Evenementenmodule';
    }
    if (clientId.match(/^ga-/) || clientId.match(/^groepsadmin-/)) {
        client = 'de Groepsadmin';
    }
    if (clientId === 'kampvisum') {
        client = 'Camp Central';
    }
    if (clientId === 'ledenadmin') {
        client = 'de Ledenadmin';
    }
    if (clientId === 'magento') {
        client = 'de Hopper';
    }
    if (clientId === 'phabricator') {
        client = 'Phabricator';
    }
    if (clientId === 'verzekeringen') {
        client = 'Verzekeringen';
    }
    if (clientId === 'werkwinkeldatabank') {
        client = 'de Werkwinkeldatabank';
    }
    if (client !== undefined) {
        loginPrompt.textContent = `Log in op ${client} met je Scouts en Gidsen Vlaanderen account`;
    }
}
