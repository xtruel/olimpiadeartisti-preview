# 🚀 Attiva GitHub Pages Automaticamente

Usa uno di questi script per attivare GitHub Pages in 1 minuto.

---

## 📋 Prerequisiti

1. **Crea un GitHub Token:**
   - Vai su: https://github.com/settings/tokens
   - Clicca **Generate new token (classic)**
   - Seleziona scope: `repo`, `workflow`
   - Clicca **Generate token**
   - Copia il token

2. **Salva il token come variabile d'ambiente:**

### Windows (PowerShell)
```powershell
$env:GITHUB_TOKEN = 'your_token_here'
```

### Linux/Mac (Bash)
```bash
export GITHUB_TOKEN='your_token_here'
```

---

## 🎯 Scegli il Tuo Sistema

### Windows (PowerShell)

```powershell
# 1. Imposta il token
$env:GITHUB_TOKEN = 'your_token_here'

# 2. Esegui lo script
.\activate_pages.ps1
```

### Linux/Mac (Bash)

```bash
# 1. Imposta il token
export GITHUB_TOKEN='your_token_here'

# 2. Rendi eseguibile lo script
chmod +x activate_pages.sh

# 3. Esegui lo script
./activate_pages.sh
```

### Python (Tutti i sistemi)

```bash
# 1. Installa requests
pip install requests

# 2. Imposta il token
export GITHUB_TOKEN='your_token_here'  # Linux/Mac
# oppure
$env:GITHUB_TOKEN = 'your_token_here'  # Windows PowerShell

# 3. Esegui lo script
python3 activate_pages.py
```

---

## ✅ Cosa Succede

1. Lo script si connette a GitHub via API
2. Attiva GitHub Pages per la repo
3. Configura il branch `main` come source
4. Abilita il build type `workflow`

**Risultato:** GitHub Pages attivato! 🎉

---

## 🌐 Verifica

Dopo aver eseguito lo script:

1. Vai su: https://github.com/xtruel/olimpiadeartisti-preview/actions
2. Aspetta che il workflow finisca (verde ✅)
3. Visita: https://xtruel.github.io/olimpiadeartisti-preview/

**Sito online! 🚀**

---

## ❓ Troubleshooting

### "Token non trovato"
- Assicurati di aver impostato la variabile d'ambiente
- Controlla che il token sia corretto

### "Errore 401"
- Il token è scaduto o non valido
- Crea un nuovo token

### "Errore 403"
- Il token non ha i permessi necessari
- Assicurati di aver selezionato scope `repo` e `workflow`

### "Errore 404"
- La repo non esiste
- Controlla che la repo sia pubblica

---

## 🔐 Sicurezza

- ⚠️ Non condividere il token con nessuno
- ⚠️ Non committare il token nel repo
- ⚠️ Elimina il token dopo l'uso (opzionale)

---

## 📚 Alternativa: Manuale

Se preferisci farlo manualmente:

1. Vai su: https://github.com/xtruel/olimpiadeartisti-preview/settings/pages
2. **Source:** Seleziona "GitHub Actions"
3. Clicca **Save**

---

**Pronto! GitHub Pages è attivato! 🎉**
