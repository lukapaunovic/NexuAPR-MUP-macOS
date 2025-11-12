# NexuAPR za macOS (MUP verzija)

Ovo je macOS verzija Nexu aplikacije prilagođena za rad sa MUP sertifikatima.
Radi na novim verzijama macOS-a i podržava obe arhitekture:

- Intel (x86_64)
- Apple Silicon (ARM / aarch64)

Aplikacija koristi biblioteku srb-id-pkcs11 za rad sa srpskim eID karticama.
Izvorni repozitorijum: https://github.com/ubavic/srb-id-pkcs11

Ovo nije zvanična APR verzija. Aplikacija je modifikovana samo u delu komunikacije sa karticom, bez izmene druge logike. Koristite na sopstvenu odgovornost.

--------------------------------------------------------------------------------

## Download

[📥 Preuzmi NexuAPR_MUP.dmg](https://github.com/lukapaunovic/NexuAPR-MUP-macOS/releases/download/v1.4/NexuAPR_MUP.dmg)

## Šta sadrži

- NexuAPR.app
- automatsko kreiranje direktorijuma ~/.NexUApr
- automatski odabir odgovarajuće ARM / Intel PKCS11 biblioteke
- ne zahteva root, ne instalira servise i ne menja sistemske fajlove

--------------------------------------------------------------------------------

## Sertifikati

Da bi APR mogao da komunicira sa Nexu aplikacijom, lokalni sertifikat mora biti označen kao trusted u browseru.

Najlakši način:
1. Pokrenite NexuAPR.app
2. Otvorite u browseru:

https://localhost:9889/favicon.ico

Browser će prikazati upozorenje, potrebno je potvrditi nastavak (Advanced → Continue / Trust). Posle toga potpisivanje funkcioniše normalno u Chrome/Safari/Firefox.

--------------------------------------------------------------------------------

## Instalacija

1. Preuzmite NexuAPR.dmg iz Releases sekcije
2. Otvorite DMG
3. Prevucite NexuAPR.app u Applications
4. Prvo pokretanje:
   - ako macOS prikaže upozorenje "unidentified developer":
     - System Settings → Privacy & Security → Open Anyway
     - ili desni klik / Control na aplikaciju → Open

Ili preko Terminala (Lokalno potpisuje aplikaciju, za rad bez upozorenja i smaranja):

```
cd ~/Downloads
curl -L -o NexuAPR.dmg "https://github.com/lukapaunovic/NexuAPR-MUP-macOS/releases/download/v1.4/NexuAPR_MUP.dmg"
hdiutil attach NexuAPR.dmg
cp -R /Volumes/NexuAPR/NexuAPR.app /Applications/
xattr -dr com.apple.quarantine /Applications/NexuAPR.app
codesign --force --deep --sign - /Applications/NexuAPR.app
hdiutil detach /Volumes/NexuAPR
open /Applications/NexuAPR.app
```
--------------------------------------------------------------------------------

## Pokretanje

Iz macOS:

Applications → NexuAPR

--------------------------------------------------------------------------------

## Sistem i napomene

- Testirano na macOS Sequoia 15.6.1 (ARM)
- Ne koristi kernel ekstenzije
- Sve radi lokalno u korisničkom direktorijumu
- Konfiguracija se nalazi u: ~/.NexUApr
