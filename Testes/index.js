function getById(id) {
    return document.getElementById(id);
}
function getByClass(className) {
    return document.querySelector(className);
}
function getByClassAll(className) {
    return document.querySelectorAll(className);
}

function updateActiveLink() {
    links.forEach(link => {
        link.classList.remove('active')
        let linkActive = localStorage.getItem('activeLink');
        if (link.textContent == linkActive) {
            link.classList.add('active')
        };
    })
}

const showColorsButton = getById('show-colors');
const colorsDemo = getById('colors-demo');

showColorsButton.addEventListener('click', () => {
    let colorsHidden = localStorage.getItem('colorsDemo');
    
    switch (colorsHidden) {
        case 'hidden':
            localStorage.setItem('colorsDemo', 'show');
            break;
        case 'show':
            localStorage.setItem('colorsDemo', 'hidden');
            break;
        default:
            localStorage.setItem('colorsDemo', 'hidden');
            break;
    }
    updateDemoColors();
})

function updateDemoColors() {
    let mode = localStorage.getItem('colorsDemo');

    if (mode == 'show') {
        colorsDemo.classList.remove('hidden');
        showColorsButton.classList.remove('hidden');
    }
    if (mode == 'hidden') {
        colorsDemo.classList.add('hidden');
        showColorsButton.classList.add('hidden');
    }
}

const showElementsButton = getById('show-elements');
const elementsDemo = getById('elements-demo');

showElementsButton.addEventListener('click', () => {
    let elementsHidden = localStorage.getItem('elementsDemo');
    
    switch (elementsHidden) {
        case 'hidden':
            localStorage.setItem('elementsDemo', 'show');
            break;
        case 'show':
            localStorage.setItem('elementsDemo', 'hidden');
            break;
        default:
            localStorage.setItem('elementsDemo', 'hidden');
            break;
    }
    updateDemoElements();
})

function updateDemoElements() {
    let mode = localStorage.getItem('elementsDemo');

    if (mode == 'show') {
        elementsDemo.classList.remove('hidden');
        showElementsButton.classList.remove('hidden');
    }
    if (mode == 'hidden') {
        elementsDemo.classList.add('hidden');
        showElementsButton.classList.add('hidden');
    }
}

function updateAll() {
    updateActiveLink();
    updateDemoColors();
    updateDemoElements();
}

updateAll();