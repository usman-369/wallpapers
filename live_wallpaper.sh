#!/bin/bash

# ===== USAGE =====
# ./live_wallpaper.sh                          → uses DEFAULT_VIDEO
# ./live_wallpaper.sh /path/to/video.mp4       → uses provided path
# ./live_wallpaper.sh --help                   → shows usage info

# ===== DEFAULT VIDEO (fallback if no argument given) =====
DEFAULT_VIDEO="/path/to/video.mp4"  # <-- Change this to your default video path

# ===== HELP =====
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "Usage: $0 [video_path]"
  echo ""
  echo "  video_path   Path to the video file to use as wallpaper."
  echo "               If omitted, uses the default: $DEFAULT_VIDEO"
  echo ""
  echo "Examples:"
  echo "  $0"
  echo "  $0 ~/Videos/wallpapers/rain.mp4"
  exit 0
fi

# ===== RESOLVE VIDEO PATH =====
VIDEO="${1:-$DEFAULT_VIDEO}"

# ===== VALIDATE VIDEO FILE =====
if [ ! -f "$VIDEO" ]; then
  echo "Error: Video file not found: $VIDEO"
  exit 1
fi

# ===== WAIT FOR NEMO DESKTOP TO BE READY =====
echo "Waiting for Nemo desktop..."
for i in $(seq 1 20); do
  DESKTOP_WID=$(xwininfo -root -tree 2>/dev/null | grep -m 1 "nemo-desktop" | awk '{print $1}')
  [ -n "$DESKTOP_WID" ] && break
  sleep 1
done

# ===== SAFETY CHECK =====
if [ -z "$DESKTOP_WID" ]; then
  echo "Error: Could not find Nemo desktop window. Is Nemo running?"
  exit 1
fi

echo "Found Nemo desktop window: $DESKTOP_WID"
echo "Playing: $VIDEO"

# ===== START MPV AS WALLPAPER =====
mpv \
  --loop \
  --wid="$DESKTOP_WID" \
  --no-osc \
  --no-input-default-bindings \
  --panscan=1 \
  "$VIDEO"
