#!/bin/bash

while true; do
clear
echo "==========================================="
echo "     Duplicate File Finder — Unix Edition"
echo "==========================================="
echo "1) Scan Directory for Duplicates"
echo "2) Show Duplicate Files"
echo "3) Delete Duplicate Files"
echo "4) Exit"
echo "-------------------------------------------"
read -p "Enter your choice (1–4): " choice

case $choice in
1)
    read -p "Enter directory path to scan: " dir
    echo "🔍 Scanning for duplicates..."
    find "$dir" -type f -exec md5sum {} + 2>/dev/null | sort | uniq -d -w32 | tee "$dir/dup.txt" >/dev/null
    echo "✅ Scan complete! Duplicate report saved to $dir/dup.txt"
    read -p "🔁 Press Enter to continue..."
    ;;
2)
    read -p "Enter directory path to show report: " dir
    if [ -f "$dir/dup.txt" ]; then
        echo "📂 Duplicate Files Found:"
        cat "$dir/dup.txt"
    else
        echo "⚠️ No dup.txt file found in $dir"
    fi
    read -p "🔁 Press Enter to continue..."
    ;;
3)
    read -p "Enter directory path to delete duplicates from: " dir
    if [ -f "$dir/dup.txt" ]; then
        awk '{print $2}' "$dir/dup.txt" | xargs rm -f 2>/dev/null
        echo "🗑️ All duplicate files deleted."
    else
        echo "⚠️ No dup.txt file found in $dir"
    fi
    read -p "🔁 Press Enter to continue..."
    ;;
4)
    echo "👋 Exiting..."
    exit 0
    ;;
*)
    echo "Invalid choice. Try again."
    read -p "Press Enter..."
    ;;
esac
done
