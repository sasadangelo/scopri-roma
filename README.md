# Scopri Roma

**Scopri Roma** è un progetto nato per rendere più semplice e piacevole la visita di Roma per chi desidera esplorarla sia da turista sia da locale. Realizzato con [Jekyll](https://jekyllrb.com/) e il tema [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/), il sito propone itinerari curati, consigli su luoghi meno conosciuti, e suggerimenti per vivere la città in modo autentico e stimolante. **Scopri Roma** mira a diventare una guida flessibile e accessibile per tutti, offrendo percorsi tematici che rispondono alle esigenze di un pubblico diversificato.

## Personas

Il sito è stato progettato tenendo conto di diverse *Personas*, ciascuna con specifici interessi e necessità. Puoi trovare i dettagli delle *Personas* nel documento [Personas di Scopri Roma](docs/personas.md).

## Prerequisiti

Per eseguire il sito in locale, assicurati di avere installato i seguenti strumenti:

- **Ruby** - Il linguaggio di programmazione su cui si basa Jekyll.
- **Bundler** - Uno strumento per gestire le dipendenze del progetto.

### Installazione di Ruby e Bundler su macOS

Per installare Ruby e Bundler su un sistema Mac, segui questi passaggi:

1. Installare Ruby tramite Homebrew:
```
brew install ruby
```

2. Aggiungere Ruby al PATH inserendo il seguente comando nel tuo file .bash_profile:
```
export PATH="/usr/local/opt/ruby/bin:$PATH"
```

3. Esegui:
```
source ~/.zshrc  # o source ~/.bash_profile
```

4. Installare bundler:
```
gem install bundler
```

## Installazione delle dipendenze

Per installare tutte le dipendenze necessarie al progetto, esegui:
```
bundle install
```

## Esecuzione del sito in locale o in produzione

Per avviare il sito in locale, utilizza il comando:
```
bundle exec jekyll serve --config _config_local.yml
```

Per avviare il sito in produzione, utilizza il comando:
```
bundle exec jekyll serve
```

Il sito verrà generato nella cartella `_site` pronta per la distribuzione.