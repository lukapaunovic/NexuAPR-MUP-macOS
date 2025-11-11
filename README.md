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
