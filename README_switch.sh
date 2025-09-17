#!/bin/bash
# Switch between Stylish 🌈 and Minimal 📝 GitHub profile README

STYLISH="README_stylish.md"
MINIMAL="README_minimal.md"
TARGET="README.md"

if [ $# -eq 0 ]; then
  echo "Usage: ./README_switch.sh [stylish|minimal]"
  exit 1
fi

case $1 in
  stylish)
    cp "$STYLISH" "$TARGET"
    echo "✅ Switched to Stylish README 🌈"
    ;;
  minimal)
    cp "$MINIMAL" "$TARGET"
    echo "✅ Switched to Minimal README 📝"
    ;;
  *)
    echo "❌ Invalid option. Use: stylish | minimal"
    exit 1
    ;;
esac

git add README.md
git commit -m "Switch README to $1 version"
git push origin main
