# 🌊 Parrot Leviathan Aqua Theme v2.0

Transformá tu Parrot OS en una elegante distribución con estética **macOS Big Sur**, manteniendo todas las herramientas de hacking y utilidades de Parrot Full. Este script automatiza la instalación de temas, iconos, dock y apps esenciales para lograr un entorno visual moderno, funcional y profesional.

---

## 📂 Estructura de carpetas

```bash
parrot-leviathan-aqua/
├── instalar.sh              # Script principal de instalación
├── README.md                # Documentación del proyecto
├── wallpapers/              # Carpeta de fondos personalizados
│   └── bigsur.jpg           # Fondo Big Sur utilizado por defecto
├── themes/                  # Carpeta local opcional para temas (si se descargan manualmente)
│   ├── WhiteSur-gtk-theme/  # Tema GTK clonado
│   └── WhiteSur-icon-theme/ # Iconos WhiteSur clonados
└── extras/                  # Utilidades o scripts complementarios opcionales
    ├── tweaks.desktop       # Acceso directo a Gnome Tweaks
    └── dock.desktop         # Lanzador del dock Plank
```

---

## ⚙️ Funcionalidades

- Actualiza completamente el sistema
- Instala temas GTK WhiteSur y sus iconos
- Integra dock estilo macOS (Plank)
- Descarga el fondo de pantalla Big Sur (si está disponible)
- Incluye herramientas y apps:
  - Herramientas de hacking (Parrot Full Tools)
  - Apps GUI: Firefox, VLC, GParted, GUFW, FileZilla
  - Utilidades CLI: `htop`, `neofetch`, `preload`
- Script modular y fácilmente personalizable

---

## ✅ Requisitos

- Parrot OS instalado (**probado en 6.3.2 MATE**)
- Acceso `sudo` habilitado
- Repos oficiales funcionando
- Sistema virtualizado o físico

---

## ⚠️ Errores conocidos

| Error                          | Descripción                                                                             |
| ------------------------------ | --------------------------------------------------------------------------------------- |
| Fondo de pantalla puede fallar | GitHub puede lanzar error 404 o 429; el fondo no se descarga automáticamente            |
| Conflictos con `pipewire`      | Algunos paquetes como `gstreamer1.0-pipewire` tienen conflictos con `libpipewire-0.3-0` |
| Escritorios no compatibles     | XFCE y LXQt no aplican bien los temas ni el dock. Recomendado: MATE                     |

---

## 🎨 Visual final aproximado

> *Aplicación del tema WhiteSur, iconos, dock y fondo Big Sur simulado. Ideal para screenshots profesionales.*

---

## 📌 Instalación rápida

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y git curl

git clone https://github.com/danisqxas/parrot-leviathan-aqua.git
cd parrot-leviathan-aqua
chmod +x instalar.sh
./instalar.sh
```

---

## 📦 Archivos generados

```bash
~/.themes/WhiteSur-*                 # Temas GTK instalados
~/.local/share/icons/WhiteSur-*     # Iconos WhiteSur
~/Pictures/bigsur.jpg               # Fondo estilo Big Sur
~/WhiteSur-gtk-theme/               # Repo del tema GTK
~/WhiteSur-icon-theme/              # Repo de iconos WhiteSur
~/.config/autostart/plank.desktop   # Dock agregado al inicio (si se copia manualmente)
```

---

## 🧠 Notas de uso

- Aplicá el tema con:
  ```bash
  gnome-tweaks
  ```
- Si el fondo no aparece, podés establecerlo manualmente desde Configuración o MATE Backgrounds
- Para abrir el dock:
  ```bash
  plank &
  ```
- Para añadirlo al inicio:
  ```bash
  cp /usr/share/applications/plank.desktop ~/.config/autostart/
  ```

---

## 💡 Créditos

- 🎨 Tema GTK e iconos por: [vinceliuice/WhiteSur-gtk-theme](https://github.com/vinceliuice/WhiteSur-gtk-theme)
- 🖼️ Fondo macOS: [adi1090x](https://github.com/adi1090x/files)
- 💻 Dock estilo macOS: [Plank](https://wiki.gnome.org/Apps/Plank)
- 🧪 Script personalizado por: [danisqxas](https://github.com/danisqxas)

---

## 📬 Contacto

- Twitter/X: [@daniiwnet](https://x.com/daniiwnet)
- Repositorio oficial: [github.com/danisqxas/parrot-leviathan-aqua](https://github.com/danisqxas/parrot-leviathan-aqua)

---

## 🧪 Que comience la era de Parrot Leviathan Aqua™

> Elegante. Minimalista. Peligrosamente estético. 🧬

