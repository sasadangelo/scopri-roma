---
title: "Scopri Roma"
layout: splash
permalink: /
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /assets/img/Piazza-Navona-Splash-Screen.jpg
  actions:
    - label: "Scopri gli Itinerari"
      url: "#itinerari"
excerpt: "Esplora il cuore di Roma con itinerari unici, dalle meraviglie antiche ai tesori nascosti, per un viaggio indimenticabile nella Città Eterna."
intro:
  - excerpt: 'Benvenuto su Scopri Roma! Il tuo punto di partenza per esplorare le meraviglie della Città Eterna. Dai monumenti iconici ai luoghi meno noti, ti guideremo alla scoperta di itinerari studiati per farti vivere Roma come mai prima d’ora. Scopri arte, storia, cultura e sapori locali in un viaggio indimenticabile pensato su misura per ogni viaggiatore.'
feature_row:
  - image_path: /assets/img/Terrazza-Pincio-Splash.jpg
    title: "1° Itinerario - Centro Storico"
    excerpt: "Esplora il **centro storico** di Roma: arte, storia e fascino eterno."
    url: "/roma-centro-storico/"
    btn_label: "Vai all'Itinerario"
    btn_class: "btn--primary"
  - image_path: /assets/img/Colosseo-Splash.jpg
    title: "2° Itinerario - Colosseo e Fori Imperiali"
    excerpt: "Esplora la città antica con il **Colosseo** e il **Foro Romano**."
    url: "/roma-colosseo-foro-romano/"
    btn_label: "Vai all'Itinerario"
    btn_class: "btn--primary"
  - image_path: /assets/img/Basilica-San-Pietro-Splash.jpg
    title: "3° Itinerario - Vaticano e Basilica di San Pietro"
    excerpt: "Esplora la magnifica area del **Vaticano** e i suoi tesori senza tempo."
    url: "#test-link"
    btn_label: "Vai all'Itinerario"
    btn_class: "btn--primary"
---

{% include feature_row id="intro" type="center" %}
<div id="itinerari" style="height: 0; visibility: hidden;"></div>
{% include feature_row %}