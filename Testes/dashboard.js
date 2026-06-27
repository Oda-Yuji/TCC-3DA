function getById(id) {
    return document.getElementById(id);
}
function getByClass(className) {
    return document.querySelector(className);
}
function getByClassAll(className) {
    return document.querySelectorAll(className);
}

const linksList = getByClass('.sidebar').innerHTML;
const linksPopover = getByClass('.links-popover');

linksPopover.innerHTML = linksList;

const cardsBtn = getByClassAll('.card-open');

cardsBtn.forEach(btn => {
    btn.addEventListener('click', (event) => {
        event.currentTarget.closest('.card').classList.toggle('active');
    })
})

const shifts = getByClass('custom-carousel');
const fade = getByClass('.fade');

function updateFade() {
  const hasOverflow = shifts.scrollHeight > shifts.clientHeight;
  const atBottom = shifts.scrollTop + shifts.clientHeight >= shifts.scrollHeight - 4;
  fade.style.opacity = (hasOverflow && !atBottom) ? '1' : '0';
}

updateFade();
new ResizeObserver(updateFade).observe(shifts);
shifts.addEventListener('scroll', updateFade);
