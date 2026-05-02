# 🛠️ EasyRepair

Minimalistyczne narzędzie do naprawy systemu Windows oparte na PowerShell — szybkie, czytelne i w pełni automatyczne.

---

## 🚀 Co robi skrypt?

Skrypt `naprawa.ps1` wykonuje sekwencyjnie cztery kluczowe operacje naprawcze:

1. `DISM /CheckHealth` – szybka weryfikacja obrazu systemu
2. `DISM /ScanHealth` – dokładne skanowanie pod kątem uszkodzeń
3. `DISM /RestoreHealth` – naprawa komponentów systemu
4. `sfc /scannow` – weryfikacja i naprawa plików systemowych

---

## ⚙️ Dlaczego PowerShell?

* 💡 Lepsza czytelność outputu (`Write-Host`)
* 🔄 Łatwiejsza rozbudowa (logi, warunki, automatyzacja)
* 🧩 Integracja z innymi skryptami i narzędziami DevOps
* 🧼 Bardziej “nowoczesne” podejście niż klasyczny `.bat`

---

## 📦 Zawartość repozytorium

```text
naprawa.ps1
README.md
```

---

## ▶️ Jak uruchomić?

### 🔹 Krok 1: Uruchom PowerShell jako administrator

* Kliknij Start
* Wpisz `PowerShell`
* Kliknij prawym → **Uruchom jako administrator**

---

### 🔹 Krok 2: Przejdź do katalogu

```powershell
cd "ścieżka\do\folderu"
```

---

### 🔹 Krok 3: Uruchom skrypt

```powershell
.\naprawa.ps1
```

---

## 🔐 Execution Policy (ważne)

Jeśli pojawi się błąd o blokadzie skryptów:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

📌 Alternatywnie (jednorazowo, bez zmiany polityki):

```powershell
powershell -ExecutionPolicy Bypass -File .\naprawa.ps1
```

---

## 🧠 Wymagania

* Windows 10 / 11
* PowerShell 5.1+ lub PowerShell 7+
* Uprawnienia administratora
* Dostęp do internetu (dla `DISM /RestoreHealth`, jeśli potrzebne)

---

## ⏱️ Czas działania

Zależny od stanu systemu:

* ⚡ CheckHealth – kilka sekund
* 🔍 ScanHealth – kilka minut
* 🛠️ RestoreHealth – 10–30 minut
* 🧩 SFC – 10–20 minut

---

## 📄 Logowanie (rozszerzenie)

Możesz łatwo dodać zapis logów:

```powershell
DISM /Online /Cleanup-Image /RestoreHealth | Tee-Object -FilePath log.txt
```

Lub pełny transcript:

```powershell
Start-Transcript -Path log.txt
# ...skrypt...
Stop-Transcript
```

---

## ⚠️ Uwagi

* Nie przerywaj działania skryptu
* Możliwe chwilowe obciążenie CPU/dysku
* W niektórych przypadkach wymagany restart systemu

---

## 💡 Inspiracja

Projekt powstał jako szybkie narzędzie do powtarzalnej diagnostyki i naprawy systemu Windows — bez ręcznego wpisywania komend.
