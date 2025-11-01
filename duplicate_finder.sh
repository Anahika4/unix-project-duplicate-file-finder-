#!/bin/bash

while true; do
    clear
    echo "🧩 Duplicate File Finder — Unix Edition"
    echo "────────────────────────────────────────"
    echo "1️⃣  Scan Directory for Duplicates"
    echo "2️⃣  Show Duplicate Files"
    echo "3️⃣  Delete Duplicate Files"
    echo "4️⃣  Exit"
    echo "────────────────────────────────────────"
    read -p "👉 Enter your choice (1–4): " choice

    case $choice in
        1)
            read -p "📁 Enter folder path to scan: " folder
            echo "🔍 Scanning for duplicates..."
            find "$folder" -type f -exec md5 {} \; | sort | uniq -d > dup.txt
            echo "✅ Scan complete! Results saved to dup.txt"
            ;;
        2)
            echo "📋 Showing duplicate files (if any):"
            if [ -s dup.txt ]; then
                cat dup.txt
            else
                echo "⚠️ No duplicates found!"
            fi
            ;;
        3)
            echo "🗑️ Deleting duplicate files..."
            if [ -s dup.txt ]; then
                awk '{print $2}' dup.txt | xargs rm -f
                echo "✅ Duplicate files deleted!"
            else
                echo "⚠️ No duplicates to delete!"
            fi
            ;;
        4)
            echo "👋 Exiting Duplicate File Finder. Goodbye!"
            break
            ;;
        *)
            echo "⚠️ Invalid choice. Please try again."
            ;;
    esac

    echo ""
    read -p "🔁 Press Enter to continue..."
done
