#!/bin/bash

while true; do
    clear
    echo "🧩 Duplicate File Finder — Unix Edition"
    echo "────────────────────────────────────────"
    echo "1️⃣  Scan Directory for Duplicates"
    echo "2️⃣  Show Duplicate Files"
    echo "3️⃣  Delete Selected Duplicates"
    echo "4️⃣  Save Report to File"
    echo "5️⃣  Exit"
    echo "────────────────────────────────────────"
    read -p "👉 Enter your choice (1–5): " choice

    case $choice in
        1) echo "🔍 Scanning directory... (coming soon)" ;;
        2) echo "📋 Displaying duplicates... (coming soon)" ;;
        3) echo "🗑️ Deleting duplicates... (coming soon)" ;;
        4) echo "💾 Saving report... (coming soon)" ;;
        5) echo "👋 Exiting Duplicate File Finder. Goodbye!"; break ;;
        *) echo "⚠️ Invalid choice. Please try again." ;;
    esac

    echo ""
    read -p "🔁 Press Enter to continue..."
done
