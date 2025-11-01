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
        1)
            read -p "📂 Enter directory path to scan: " dir
            if [ ! -d "$dir" ]; then
                echo "⚠️  Invalid directory!"
            else
                echo "🔍 Scanning for duplicates in: $dir"
                find "$dir" -type f -exec md5sum {} + | sort > /tmp/all_hashes.txt
                awk '{print $1}' /tmp/all_hashes.txt | uniq -d > /tmp/duplicate_hashes.txt
                echo "✅ Scan complete!"
            fi
            ;;
        
        2)
            if [ ! -s /tmp/duplicate_hashes.txt ]; then
                echo "⚠️  No duplicates found. Please run a scan first."
            else
                echo "📋 Duplicate Files Found:"
                echo "──────────────────────────"
                while read hash; do
                    echo "🔸 Files with hash $hash:"
                    grep "$hash" /tmp/all_hashes.txt | awk '{$1=""; print $0}'
                    echo ""
                done < /tmp/duplicate_hashes.txt
            fi
            ;;
        
        3)
            if [ ! -s /tmp/duplicate_hashes.txt ]; then
                echo "⚠️  No duplicates to delete. Please scan first."
            else
                echo "🗑️ Deleting duplicate files (keeping one copy each)..."
                while read hash; do
                    files=($(grep "$hash" /tmp/all_hashes.txt | awk '{$1=""; print $0}'))
                    count=${#files[@]}
                    if [ $count -gt 1 ]; then
                        for ((i=1; i<$count; i++)); do
                            rm -f "${files[$i]}"
                        done
                    fi
                done < /tmp/duplicate_hashes.txt
                echo "✅ Duplicates deleted successfully!"
            fi
            ;;
        
        4)
            if [ ! -s /tmp/all_hashes.txt ]; then
                echo "⚠️  Please scan a directory first."
            else
                read -p "💾 Enter report file name (default: duplicate_report.txt): " report
                report=${report:-duplicate_report.txt}
                echo "🧾 Duplicate File Report — $(date)" > "$report"
                echo "────────────────────────────────" >> "$report"
                while read hash; do
                    echo "Files with hash $hash:" >> "$report"
                    grep "$hash" /tmp/all_hashes.txt | awk '{$1=""; print $0}' >> "$report"
                    echo "" >> "$report"
                done < /tmp/duplicate_hashes.txt
                echo "✅ Report saved to $report"
            fi
            ;;
        
        5)
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
