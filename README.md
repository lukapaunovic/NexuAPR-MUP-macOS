# NexuAPR za macOS (MUP verzija)

Ovo je macOS verzija Nexu aplikacije prilagođena za rad sa MUP sertifikatima.  
Aplikacija je modifikovana kako bi ispravno radila na novijim verzijama macOS-a i podržava obe arhitekture:

**Intel (x86_64)**  
**Apple Silicon (ARM / aarch64)**

---

Aplikacija je bazirana na biblioteci **srb-id-pkcs11** za rad sa srpskim ličnim kartama (eID), koju je razvio @ubavic.
Veliko hvala autoru na otvorenom kodu, uputstvima i pomoći zajednici.

Izvorni repozitorijum: https://github.com/ubavic/srb-id-pkcs11

---

Prepravljena verzija nije podržana od strane APR-a. Napravljena je isključivo u najboljoj nameri, sa željom da se i korisnicima macOS-a omogući potpisivanje. Izmene menjaju isključivo deo aplikacije koji je okrenut ka kartici, bez izmena drugog koda. Za pristup kartici izmenjena aplikacija koristi isključivo postojeće PKCS#11 biblioteke i ne bi trebalo da dovede do oštećenja ili neočekivanog blokiranja kartice (kartica će biti blokirana u slučaju da korisnik više puta unese pogrešan PIN kod, što je podrazumevano ponašanje). Ipak napisano ne predstavlja garanciju i ovu nepodržanu i prepravljenu verziju koristite isključivo na svoju odgovornost.

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

- Testirano na Sequoia 15.6.1 ARM (M4)
Ako imate bilo kakve probleme javite se, lako ćemo ih rešiti a ujedno omogućiti da aplikacija radi i drugima bez muke.

---

## Instalacija

1. Preuzmite `NexuAPR_MUP.pkg`
2. Pokrenite instalacioni paket
3. Aplikacija će se instalirati u `/Applications`
4. Pokrenite iz APP ili direktno iz terminala:

```bash
/Applications/NexuAPR.app/Contents/MacOS/NexuAPR
