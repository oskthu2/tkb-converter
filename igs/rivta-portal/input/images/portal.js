// portal.js — filtrering av tabellerna på sidorna Tjänstedomäner och
// Tjänstekontrakt. Ett <input class="portal-filter" data-filter-for="<tabell-id>">
// döljer de rader vars text inte innehåller alla sökord.
(function () {
  function apply(input) {
    var table = document.getElementById(input.getAttribute("data-filter-for"));
    if (!table) return;
    var words = input.value.toLowerCase().split(/\s+/).filter(Boolean);
    var rows = table.tBodies[0] ? table.tBodies[0].rows : [];
    for (var i = 0; i < rows.length; i++) {
      var text = rows[i].textContent.toLowerCase();
      var show = words.every(function (w) { return text.indexOf(w) !== -1; });
      rows[i].style.display = show ? "" : "none";
    }
  }
  var inputs = document.querySelectorAll("input.portal-filter");
  for (var i = 0; i < inputs.length; i++) {
    inputs[i].addEventListener("input", function (e) { apply(e.target); });
    if (inputs[i].value) apply(inputs[i]);
  }
})();
