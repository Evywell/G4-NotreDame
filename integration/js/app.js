var navigation = document.querySelector('.header .nav');

window.addEventListener('scroll', toScroll);

function toScroll(e) {
  let scrollY = window.scrollY;
  // On a scroll de 300px
  if (scrollY > 300) {
    // On ajoute la classe fixed si elle n'y est pas déjà
    if (!navigation.classList.contains('fixed')) {
      navigation.classList.add('fixed');
    }
  } else {
    // On supprime la classe fixed si elle y est
    if (navigation.classList.contains('fixed')) {
      navigation.classList.remove('fixed');
    }
  }
}