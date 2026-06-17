function getById(id) {
    return document.getElementById(id);
}
function getByClass(className) {
    return document.querySelector(className);
}
function getByClassAll(className) {
    return document.querySelectorAll(className);
}

const toggleThemeButton = getById('toggle-theme');

toggleThemeButton.addEventListener('click', () => {
    let currentTheme = localStorage.getItem('theme');

    switch (currentTheme) {
        case 'light':
            localStorage.setItem('theme', 'dark');
            break;
        case 'dark':
            localStorage.setItem('theme', 'light');
            break;
        default:
            localStorage.setItem('theme', 'light');
            break;
    }
    updateTheme();
})

function updateTheme() {
    let mode = localStorage.getItem('theme');

    if (mode == 'light') {
        document.body.classList.remove('dark');
    }
    if (mode == 'dark') {
        document.body.classList.add('dark');
    }
}

const toggleSidebarButton = getById('toggle-sidebar');

toggleSidebarButton.addEventListener('click', toggleSidebar);

document.addEventListener('keydown', function(event) {
    if ((event.shiftKey) && event.key.toLowerCase() === 's') {
        toggleSidebar();
    }
})

function toggleSidebar() {
    let currentSidebar = localStorage.getItem('sidebar');

    switch (currentSidebar) {
        case 'show':
            localStorage.setItem('sidebar', 'hidden');
            break;
        case 'hidden':
            localStorage.setItem('sidebar', 'show');
            break;
        default:
            localStorage.setItem('sidebar', 'show');
            break;
    }
    updateSidebar();
}

function updateSidebar() {
    const sidebar = getById('sidebar');

    let mode = localStorage.getItem('sidebar');
    if (mode == 'show') {
        sidebar.classList.remove('hidden');
    }
    if (mode == 'hidden') {
        sidebar.classList.add('hidden');
    }
}

const links = getByClassAll('.link');

let title = document.createElement('div');
title.classList.add('title');
document.body.appendChild(title);

links.forEach(link => {
    link.addEventListener('click', (event) => {
        links.forEach(l => l.classList.remove('active'));
        event.currentTarget.classList.add('active');
        localStorage.setItem('activeLink', event.currentTarget.textContent);
    })

    link.addEventListener('mousemove', (event) => {
        sidebar.classList.contains('hidden') ? title.classList.add('show') : null;

        title.textContent = event.currentTarget.dataset.title;

        const mouseX = event.clientX;
        const mouseY = event.clientY;

        title.style.left = mouseX + 'px';
        title.style.top = mouseY + 32 + 'px';
    })

    link.addEventListener('mouseout', (event) => {
        title.classList.remove('show');
    })
})

function updateAll() {
    updateTheme();
    updateSidebar();
}

updateAll();