# 🧬 Parrot Leviathan Aqua

Transformá tu Parrot OS en una experiencia visual estilo macOS Big Sur, manteniendo la potencia del entorno MATE y las herramientas avanzadas de seguridad de Parrot. Esta edición está pensada para quienes quieren rendimiento, estética y funcionalidad sin complicaciones.

---

## 📦 ¿Qué incluye Leviathan Aqua?

- Tema WhiteSur completo (GTK + Shell + Plank + Metacity + XFWM)
- Iconos WhiteSur (bold, dark, light)
- Dock estilo macOS (Plank)
- Fondo de pantalla Big Sur
- Herramientas de hacking incluidas (Parrot Full Tools)
- Apps útiles ya instaladas (Firefox, VLC, GParted, GUFW, FileZilla, etc.)
- Utilidades del sistema como `htop`, `neofetch`, `preload`
- Script automatizado y personalizable

---

## 🖥️ Requisitos

- ✅ Parrot OS instalado (probado en 6.3.2 MATE)
- ✅ Acceso sudo habilitado
- ✅ Repositorios oficiales funcionando
- ✅ Sistema virtualizado o físico

---

## ⚠️ Errores conocidos

| Error | Descripción |
|------|-------------|
| 🟥 Fondo de pantalla puede fallar | Si GitHub lanza error 404 o 429 (Too Many Requests), el fondo no se descarga automáticamente. |
| 🟥 Conflictos con `pipewire` | Algunos paquetes como `gstreamer1.0-pipewire` tienen dependencias que chocan con versiones recientes de `libpipewire`. |
| 🟥 Escritorios no compatibles | Algunas funciones no operan correctamente en entornos como XFCE o LXQt. MATE es el recomendado. |

---

## 📸 Captura de pantalla

![screenshot](https://chat.openai.com/share/file/8cf856df-cace-41a0-a27c-5ef6c8ecb507/screenshot-parrot-aqua.png)

> *Nota: El fondo de pantalla se descarga automáticamente solo si está disponible en GitHub.*

---

## 🚀 Instalación rápida

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y git curl
git clone https://github.com/danisqxas/parrot-leviathan-aqua.git
cd parrot-leviathan-aqua
chmod +x instalar.sh
./instalar.sh
