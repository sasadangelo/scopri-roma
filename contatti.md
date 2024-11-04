---
title: "Contatti"
layout: splash
permalink: /contatti/
---

# Contatti

Se desideri contattarmi, scrivi il tuo messaggio utilizzando il seguente modulo di contatto. Ricorda di compilare i campi obbligatori: il tuo nome, la tua email e l’oggetto, che mi aiuterà a comprendere subito l’argomento del messaggio.

Tieni presente che generalmente leggo tutti i messaggi che arrivano tramite questo modulo. Se possibile, cerco di rispondere entro 24 ore. Tuttavia, potrebbe capitare che, per motivi personali, impegni o altre ragioni, la mia risposta arrivi con un po’ di ritardo. In tali casi, ti chiedo solo un po’ di pazienza perché, nei limiti delle mie possibilità, cerco sempre di rispondere a tutti.

<!-- modify this form HTML and place wherever you want your form -->
<form action="https://formspree.io/f/xeoqawav" method="POST">
  <label>
    Nome:
    <input type="name" name="name" size="38" placeholder="Il tuo Nome" required=""/>
  </label>
  <label>
    Email:
    <input type="email" name="email" size="38" placeholder="La tua Email (email@domain.tld)" required="">
  </label>
  <label>
    Soggetto:
    <input type="text" name="subject" size="38" placeholder="Soggetto" required="">
  </label>
  <label>
    Messaggio:
    <textarea name="message"></textarea>
  </label>
  <input type="hidden" name="_next" value="{{ site.url }}{{ site.baseurl }}/contatti/">
  <input type="hidden" name="_subject" value="Scropri Roma Contact Form Submission">
  <div class="g-recaptcha" data-callback="onSubmit" data-sitekey="6Ld65XQqAAAAAPHJ7IZfazUdlUo8SG7bnL1am0ej"></div>
  <!-- your other form fields go here -->
  <button type="submit">Invia</button>
</form>