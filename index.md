---
title: "Scopri Roma"
layout: splash
permalink: /
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /assets/img/Piazza-Navona-Splash-Screen.webp
  actions:
    - label: "Scopri gli Itinerari"
      url: "#itinerari"
excerpt: "Esplora il cuore di Roma con itinerari unici, dalle meraviglie antiche ai tesori nascosti, per un viaggio indimenticabile nella Città Eterna."
intro:
  - excerpt: 'Benvenuto su Scopri Roma! Il tuo punto di partenza per esplorare le meraviglie della Città Eterna. Dai monumenti iconici ai luoghi meno noti, ti guideremo alla scoperta di itinerari studiati per farti vivere Roma come mai prima d’ora. Scopri arte, storia, cultura e sapori locali in un viaggio indimenticabile pensato su misura per ogni viaggiatore.'
feature_row:
  - image_path: /assets/img/Terrazza-Pincio-Splash.webp
    title: "1° Itinerario - Centro Storico"
    excerpt: "Esplora il **centro storico** di Roma: arte, storia e fascino eterno."
    url: "/roma-centro-storico/"
    btn_label: "Vai all'Itinerario"
    btn_class: "btn--primary"
  - image_path: /assets/img/Colosseo-Splash.webp
    title: "2° Itinerario - Colosseo e Fori Imperiali"
    excerpt: "Esplora la città antica con il **Colosseo** e il **Foro Romano**."
    url: "/roma-colosseo-foro-romano/"
    btn_label: "Vai all'Itinerario"
    btn_class: "btn--primary"
  - image_path: /assets/img/Basilica-San-Pietro-Splash.webp
    title: "3° Itinerario - Vaticano e Basilica di San Pietro"
    excerpt: "Esplora la magnifica area del **Vaticano** e i suoi tesori senza tempo."
    url: "/vaticano-basilica-san-pietro/"
    btn_label: "Vai all'Itinerario"
    btn_class: "btn--primary"
  - image_path: /assets/img/Santa-Cecilia-Trastevere-Splash.webp
    title: "4° Itinerario - Trastevere e Ghetto Ebraico"
    excerpt: "Scopri i quartieri autentici di **Trastevere** e del **Ghetto Ebraico**, ricchi di storia."
    url: "/trastevere-ghetto-ebraico/"
    btn_label: "Vai all'Itinerario"
    btn_class: "btn--primary"
  - image_path: /assets/img/Basilica-San-Giovanni-Splash.webp
    title: "5° Itinerario - Giro delle Basiliche"
    excerpt: "Visita le basiliche più importanti di Roma, da **Santa Maria Maggiore** a **San Paolo**."
    url: "/giro-basiliche/"
    btn_label: "Vai all'Itinerario"
    btn_class: "btn--primary"
  - image_path: /assets/img/Villa-Borghese-Splash.webp
    title: "6° Itinerario - Villa Borghese e BioParco"
    excerpt: "Esplora **Villa Borghese** e il **BioParco**, tra arte, natura e fauna in città."
    url: "/villa-borghese-bioparco/"
    btn_label: "Vai all'Itinerario"
    btn_class: "btn--primary"
---

{% include feature_row id="intro" type="center" %}
<div id="itinerari" style="height: 0; visibility: hidden;"></div>
{% include feature_row %}