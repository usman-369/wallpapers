<div align="center">

<pre>
██╗    ██╗ █████╗ ██╗     ██╗     ██████╗  █████╗ ██████╗ ███████╗██████╗ ███████╗
██║    ██║██╔══██╗██║     ██║     ██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔════╝
██║ █╗ ██║███████║██║     ██║     ██████╔╝███████║██████╔╝█████╗  ██████╔╝███████╗
██║███╗██║██╔══██║██║     ██║     ██╔═══╝ ██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗╚════██║
╚███╔███╔╝██║  ██║███████╗███████╗██║     ██║  ██║██║     ███████╗██║  ██║███████║
 ╚══╝╚══╝ ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝╚══════╝
</pre>

### *A curated collection of static & animated wallpapers* ✦

[![Stars](https://img.shields.io/github/stars/usman-369/wallpapers?style=flat-square&color=f5c518&labelColor=1a1a2e&label=⭐%20Stars)](https://github.com/usman-369/wallpapers/stargazers)
[![Forks](https://img.shields.io/github/forks/usman-369/wallpapers?style=flat-square&color=5c8aff&labelColor=1a1a2e&label=🍴%20Forks)](https://github.com/usman-369/wallpapers/network/members)
[![License](https://img.shields.io/github/license/usman-369/wallpapers?style=flat-square&color=a8d8a8&labelColor=1a1a2e)](LICENSE)
[![Last Commit](https://img.shields.io/github/last-commit/usman-369/wallpapers?style=flat-square&color=ff8c69&labelColor=1a1a2e)](https://github.com/usman-369/wallpapers/commits)

</div>

---

## ✦ About

A handpicked personal wallpaper collection — spanning **static images** and **animated/live wallpapers** — curated for those who care deeply about what's behind their windows.

Whether you're ricing your Linux setup, refreshing your Windows desktop, or just tired of the default macOS backgrounds, there's something here for every aesthetic (maybe).

---

## 🖥️ Preview

### 🖼️ Static Wallpaper

![preview](./preview/preview-static.png)

### 🎞️ Animated Wallpaper

![preview](./preview/preview-animated.gif)

<!-- | 🖼️ Static | 🎞️ Animated |
|--------|----------|
| ![preview](./preview/preview-static.png) | ![preview](./preview/preview-animated.gif) | -->

> 🎬 How to Apply Animated Wallpaper on Linux (My Tutorial): [Watch here](./preview/my-animated-wallpaper-setup-linux.mp4)

---

## 📁 Repository Structure

```text
wallpapers/
├── animated/
│   ├── abstract/
│   ├── cars/
│   ├── characters/
│   └── scene/
├── preview/
│   ├── my-animated-wallpaper-setup-linux.mp4
│   ├── preview-animated.gif
│   └── preview-static.png
├── static/
│   ├── favorites/
│   └── minecraft/
├── LICENSE
└── README.md
```

<!-- > 📝 *Structure may vary — browse the repo to explore all categories.* -->

---

## ⚡ Quick Download

### Clone the full collection

```bash
git clone --depth 1 https://github.com/usman-369/wallpapers.git
```

> Using `--depth 1` skips the full git history and speeds up the download significantly.

### Clone only static wallpapers (sparse checkout)

```bash
git clone --depth 1 --filter=blob:none --sparse https://github.com/usman-369/wallpapers.git
cd wallpapers
git sparse-checkout set static
```

### Clone only animated wallpapers

```bash
git clone --depth 1 --filter=blob:none --sparse https://github.com/usman-369/wallpapers.git
cd wallpapers
git sparse-checkout set animated
```

---

## 🛠️ Setting Wallpapers

<details>
<summary><b>🐧 Linux</b></summary>

**GNOME**

```bash
gsettings set org.gnome.desktop.background picture-uri "file:///path/to/wallpaper.jpg"
```

**KDE Plasma / Hyprland / Sway** — Use tools like [Waypaper](https://github.com/anufrievroman/waypaper), [swww](https://github.com/LGFae/swww), or `nitrogen` for static, and [mpvpaper](https://github.com/GhostNaN/mpvpaper) for animated wallpapers.

**Animated (using mpvpaper)**

```bash
mpvpaper -o "no-audio loop" '*' /path/to/wallpaper.mp4
```

</details>

<details>
<summary><b>🪟 Windows</b></summary>

**Static** — Right-click the image → *Set as desktop background*

**Animated** — Use [Lively Wallpaper](https://www.rocksdanister.com/lively/) or [Wallpaper Engine](https://store.steampowered.com/app/431960/Wallpaper_Engine/) (paid) with `.mp4` / `.webm` files.
</details>

<details>
<summary><b>🍎 macOS</b></summary>

**Static** — Right-click image → *Use Image As Desktop Picture*

**Animated** — Use [HiDock](https://hidock.app/) or [Plash](https://github.com/sindresorhus/Plash) for video wallpapers.
</details>

---

## 📋 Formats & Compatibility

| Format | Type | Best For |
|--------|------|----------|
| `.jpg` / `.jpeg` | Static | All platforms, smaller size |
| `.png` | Static | Lossless quality, transparency |
| `.mp4` | Animated | High-quality video wallpapers |
| `.mkv` | Animated | High-quality video with flexible codec support |
<!-- | `.webp` | Static | Modern browsers & apps | -->
<!-- | `.gif` | Animated | Lightweight loops | -->
<!-- | `.webm` | Animated | Linux-friendly video format | -->

---

## ⭐ Show Some Love

If you enjoy this collection, consider leaving a **star** — it helps others discover it and motivates adding more!

<div align="center">

[![Star this repo](https://img.shields.io/badge/⭐%20Star%20this%20repo-1a1a2e?style=for-the-badge&logo=github&logoColor=f5c518)](https://github.com/usman-369/wallpapers)

</div>

---

## 📜 License

**MIT** License. All wallpapers are for **personal** use. If you are the original creator of any image and would like credit or removal, please [open an issue](https://github.com/usman-369/wallpapers/issues) and I'll take care of it promptly.

---

<div align="center">

*Crafted with 🖤 by [usman-369](https://github.com/usman-369)*

</div>
