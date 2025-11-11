# NexuAPR za macOS (MUP verzija)

Ovo je macOS verzija Nexu aplikacije prilagođena za rad sa MUP sertifikatima.  
Aplikacija je modifikovana kako bi ispravno radila na novijim verzijama macOS-a i podržava obe arhitekture:

**Intel (x86_64)**  
**Apple Silicon (ARM / aarch64)**

---

## Šta sadrži?

- prepakovanu `NexuAPR.app` aplikaciju
- automatsko uklanjanje *quarantine* atributa nakon instalacije
- automatsko kreiranje korisničkog direktorijuma `~/.NexUApr`
- podrška za pametne kartice (čitači, PKCS11 biblioteka)

---

## Važno
Da bi APR mogao da komunicira sa Nexu aplikacijom, lokalni sertifikat mora biti označen kao "trusted" u macOS Keychain-u.
Sertifikat koji aplikacija generiše nalazi se u folderu:

    $HOME/.NexUApr/   (fajl sa ekstenzijom .crt)

Pokušao sam da automatizujem dodavanje sertifikata u System Root Keychain, ali macOS više ne dozvoljava programatsko upisivanje bez interakcije korisnika.  
Automatski je moguće dodati samo u login.keychain, ali ga Chrome i Safari u tom slučaju ne vide kao pouzdan root CA.

Najjednostavnije rešenje je da otvorite sledeći URL i ručno potvrdite sigurnosno upozorenje:

    https://localhost:9889/favicon.ico

Nakon što odobrite sertifikat, aplikacija radi normalno i potpisivanje funkcioniše bez problema.

## Podržane verzije macOS-a

- Testirano na Sequoia 15.6.1

---

## Instalacija

1. Preuzmite `NexuAPR_MUP.pkg`
2. Pokrenite instalacioni paket
3. Aplikacija će se instalirati u `/Applications`
4. Pokrenite iz APP ili direktno iz terminala:

```bash
/Applications/NexuAPR.app/Contents/MacOS/NexuAPR
