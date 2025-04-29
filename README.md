# 🧬 Parrot Leviathan Aqua – Estilo macOS para Parrot OS (MATE)

Bienvenido a **Parrot Leviathan Aqua**, una configuración visual y funcional pensada para transformar tu sistema Parrot OS en una experiencia de estilo macOS Big Sur, manteniendo la potencia y ligereza de MATE.

> 📱 Diseñado para entornos virtuales y físicos, 100% compatible con Parrot OS 6.3.2.

---

## 📊 Estructura del Proyecto

```bash
parrot-leviathan-aqua/
├── instalar.sh                # Script principal de instalación automatizada
├── screenshot.png            # Captura de pantalla estilo macOS Big Sur
├── README.md                 # Documentación principal (este archivo)
├── themes/                   # Temas descargados (WhiteSur GTK y iconos)
│   ├── WhiteSur-gtk-theme/
│   └── WhiteSur-icon-theme/
└── wallpapers/
    └── bigsur.jpg         # Fondo opcional de escritorio estilo macOS
```

---

## 🔹 Características principales

- Tema GTK completo estilo macOS Big Sur (WhiteSur)
- Iconos WhiteSur bold/dark/light
- Dock estético tipo macOS con **Plank**
- Configuraciones automáticas de apariencia, fondo, iconos
- Instalación de herramientas esenciales (Firefox, VLC, FileZilla, GParted, GUFW)
- Configuraciones de rendimiento (Preload, Htop, Neofetch)
- Compatible con Parrot 6.3.2 MATE
- ✨ Resultado final: estética Apple con alma hacker

---

## 🚀 Instalación rápida

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y git curl

git clone https://github.com/danisqxas/parrot-leviathan-aqua.git
cd parrot-leviathan-aqua
chmod +x instalar.sh
./instalar.sh
```

> ⚠️ Requiere permisos sudo.

---

## 🚪 Requisitos del sistema

- Parrot OS actualizado (probado en versión 6.3.2 MATE)
- Conexión a internet activa
- Repositorios oficiales funcionando
- Espacio libre: 300 MB mínimo
- Sistema virtual o físico

---

## ⚠️ Errores conocidos

| 🚫 Problema | Detalles |
|------------------|----------|
| Fondo no disponible | El fondo macOS puede fallar si GitHub devuelve 404 o 429 |
| gstreamer1.0-pipewire | Tiene conflictos con libpipewire-0.3-0 en Parrot |
| No compatible con XFCE/LXQt | Solo probado y optimizado para MATE |

---

## 📅 Componentes que se instalan

### Apariencia
- Tema GTK WhiteSur (Dark)
- Iconos WhiteSur (Bold + Light + Dark)
- Plank con dock preconfigurado

### Herramientas del sistema
- `gnome-tweaks`
- `preload`
- `neofetch`
- `htop`

### Aplicaciones últiles
- Firefox ESR
- VLC
- GParted
- GUFW
- FileZilla

### Herramientas de ciberseguridad
- `parrot-tools-full`

---

## 🎨 Captura de pantalla

![screenshot](https://raw.githubusercontent.com/danisqxas/parrot-leviathan-aqua/main/screenshot.png)

> *El fondo se descarga automáticamente si está disponible. En caso contrario, podés añadir el tuyo en `/home/aerthex/Pictures/bigsur.jpg`*

---

## 📁 Ubicación de archivos instalados

```bash
~/.themes/WhiteSur-*             # Temas GTK instalados
~/.local/share/icons/WhiteSur-* # Iconos de interfaz
~/Pictures/bigsur.jpg           # Fondo macOS Big Sur
~/WhiteSur-gtk-theme/           # Repo clonado del tema GTK
~/WhiteSur-icon-theme/          # Repo clonado de iconos
```

---

## 📓 Notas de uso

- Para aplicar el tema visual, ejecutá `gnome-tweaks` desde terminal.
- Si el fondo no aparece, podés cambiarlo manualmente desde la configuración de MATE.
- El dock se lanza con `plank &` y se puede agregar al inicio manualmente.

---

## 🎓 Autor y Créditos

- Tema GTK e iconos por: [vinceliuice/WhiteSur-gtk-theme](https://github.com/vinceliuice/WhiteSur-gtk-theme)
- Fondo Big Sur por: [adi1090x](https://github.com/adi1090x)
- Dock: Elementary OS (Plank)
- Script de automatización: [danisqxas](https://github.com/danisqxas)

---

## 📢 Contacto

- 📢 Twitter (X): [@daniiwnet](https://x.com/daniiwnet?s=21)
- ⚡ Repositorio oficial: https://github.com/danisqxas/parrot-leviathan-aqua

---

## 🎨 Bonus: Agregá tu propio fondo

```bash
mkdir -p ~/Pictures
wget -O ~/Pictures/bigsur.jpg "https://example.com/tu-fondo.jpg"
gsettings set org.mate.background picture-filename "/home/aerthex/Pictures/bigsur.jpg"
```

---

## 🚀 Contribuciones

¡Pull requests, ideas y mejoras son bienvenidas!
Este proyecto busca mantenerse simple, visual y profesional.

---

## 🌟 Licencia

Este repositorio está liberado bajo la [MIT License](LICENSE).

---

> **Parrot Leviathan Aqua** no modifica archivos del sistema críticos. Podés revertirlo simplemente cambiando los temas desde `gnome-tweaks`.

---

_Disfrutá tu sistema Parrot con estilo y rendimiento._

