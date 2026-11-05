/* LŌKAHI — shared behaviour for hub + article pages */
(function () {
  var nav = document.getElementById('nav');

  // Sticky nav shadow on scroll
  if (nav) {
    window.addEventListener('scroll', function () {
      nav.classList.toggle('scrolled', window.scrollY > 40);
    }, { passive: true });
  }

  // Mobile menu
  window.toggleMenu = function (force) {
    if (!nav) return;
    var open = force !== undefined ? force : !nav.classList.contains('menu-open');
    nav.classList.toggle('menu-open', open);
    var t = document.getElementById('nav-toggle');
    if (t) t.setAttribute('aria-expanded', open);
    document.body.style.overflow = open ? 'hidden' : '';
  };
  document.querySelectorAll('#nav-menu .nav-links a').forEach(function (a) {
    a.addEventListener('click', function () { window.toggleMenu(false); });
  });
  document.addEventListener('keydown', function (e) {
    if (e.key === 'Escape') window.toggleMenu(false);
  });

  // Scroll fade-in
  var obs = new IntersectionObserver(function (entries) {
    entries.forEach(function (e) { if (e.isIntersecting) e.target.classList.add('visible'); });
  }, { threshold: 0.12 });
  document.querySelectorAll('.fade-up').forEach(function (el) { obs.observe(el); });
})();
