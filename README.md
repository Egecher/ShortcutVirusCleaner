# 🛡️ USB Shortcut Virus Temizleyici (.bat)

Bu proje, **USB belleklerde yaygın olarak görülen kısayol (shortcut) virüslerini** temizlemek için yazılmış basit ve etkili bir **Windows Batch (.bat)** scriptidir.

Script **sadece USB bellek içinde çalışır** ve sistem diskinize zarar vermemesi için güvenlik kontrolleri içerir.

---

## 🚨 Temizlenen Tehdit Türleri

Script aşağıdaki dosya türlerini **USB sürücüsü içinde** tespit eder ve siler:

- `.lnk` → Kısayol virüsleri
- `.vbs` → VBScript tabanlı virüsler
- `.js` → JavaScript tabanlı virüsler
- `.cmd` → Komut dosyası virüsleri
- `autorun.inf` → Otomatik çalıştırma virüsleri

❗ **System Volume Information** klasörü **bilerek hariç tutulur**.

---

## 🔐 Güvenlik Önlemleri

- ❌ **USB harici çalıştırılamaz**
- ❌ Kendi `.bat` dosyasını **silmez**
- ❌ Sistem disklerine dokunmaz
- ❌ `.exe`, `.dll`, `.dat` gibi dosyaları **silmez**
- ✔️ Silmeden önce **test modu** ile listeleme yapar
- ✔️ Kullanıcı onayı almadan işlem yapmaz

---

## ▶️ Nasıl Kullanılır?

1. `.bat` dosyasını **USB belleğin kök dizinine** kopyalayın
2. **Yönetici olarak çalıştırın**
3. Test modunda listelenen dosyaları kontrol edin
4. Onay verdiğinizde temizlik işlemi başlar

---

## ⚠️ Uyarı

- Script **sadece USB bellekler** içindir
- Harici disk veya sistem sürücüsünde kullanmayın
- Bilinçli olarak yazılmıştır, ancak **kendi sorumluluğunuzda kullanın**

---

## 📌 Desteklenen Sistemler

- Windows 7
- Windows 8 / 8.1
- Windows 10
- Windows 11

---

## 📄 Lisans

Bu proje **eğitim ve kişisel kullanım** amaçlıdır.
Dilediğiniz gibi fork’layabilir ve geliştirebilirsiniz.

---

## ⭐ Not

Eğer bu araç işinize yaradıysa ⭐ bırakmayı unutmayın.
