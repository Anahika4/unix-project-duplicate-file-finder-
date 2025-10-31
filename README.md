🧩 Unix Duplicate File Finder

Roll No: 241033038
Project Title: Duplicate File Finder — Unix Edition

🧾 Overview

The Duplicate File Finder is a Unix shell script designed to help users identify and manage duplicate files within a directory.
It uses hashing algorithms (like md5sum) to detect duplicates efficiently, even if filenames differ.

This project was created as part of a Unix Lab Assignment, focusing on file handling, loop control structures, and menu-driven scripting.

The tool provides an interactive terminal menu with options to scan directories, view duplicates, delete redundant files, and save reports for later reference.

🎯 Project Objectives

Understand Unix file management and scripting fundamentals.

Implement hashing techniques to detect duplicate files.

Develop a menu-driven shell script for easy interaction.

Provide users with options to scan, view, delete, and report duplicates.

Practice use of Unix utilities such as find, awk, md5sum, and sort.

⚙️ Key Functionalities
1️⃣ Scan Directory for Duplicates

Prompts the user for a directory path.

Uses find to recursively list all files.

Calculates a unique hash (MD5) for each file.

Detects duplicates by comparing hash values.

Displays progress and saves results temporarily.

2️⃣ Show Duplicate Files

Displays a clean, formatted list of duplicate files detected in the last scan.

Each group of duplicates is displayed together for easy reference.

Shows both the original and duplicate paths.

3️⃣ Delete Selected Duplicates

Allows the user to choose whether to delete duplicates manually or automatically.

Safely removes redundant files (keeping one copy of each unique file).

Prevents accidental deletion by confirming before each removal.

4️⃣ Save Report to File

Saves all duplicate file details into a timestamped report:
duplicate_report_YYYYMMDD_HHMM.txt

The report includes:

File paths

Hash values

Size comparisons

Deletion summary

5️⃣ Exit

Exits gracefully with a thank-you message.

Ensures all temporary files are deleted before closing.

🧠 Technologies Used

Shell Scripting (bash)

Unix Utilities:

find – recursive file search

md5sum – checksum generation

awk, sort, uniq – text processing

rm, cat, read – file management and user input

ANSI Color Codes – for colorized terminal UI

Menu-driven logic – for user-friendly interface

🧩 Menu-Driven Interface
🧩 Duplicate File Finder — Unix Edition
────────────────────────────────────────
1️⃣  Scan Directory for Duplicates
2️⃣  Show Duplicate Files
3️⃣  Delete Selected Duplicates
4️⃣  Save Report to File
5️⃣  Exit
────────────────────────────────────────
👉 Enter your choice (1–5):


Each option triggers a corresponding function that performs the desired operation interactively.

💡 Sample Workflow

1️⃣ Run the script

chmod +x duplicate_finder.sh
./duplicate_finder.sh


2️⃣ Choose Option 1 → Scan directory
Enter a directory path, e.g. /Users/anahikasingh/Documents

3️⃣ Choose Option 2 → View detected duplicates

4️⃣ Choose Option 3 → Delete unwanted copies

5️⃣ Choose Option 4 → Save the scan report

📂 Sample Report (duplicate_report_2025-11-01_22:30.txt)
🧩 Duplicate File Finder — Report
Generated: 2025-11-01 22:30:54

Duplicate Group 1:
MD5: 9a0364b9e99bb480dd25e1f0284c8555
    ./photos/image1.png
    ./backup/image1 (copy).png

Duplicate Group 2:
MD5: e2fc714c4727ee9395f324cd2e7f331f
    ./notes.txt
    ./Documents/old_notes.txt

Total Duplicates Found: 4
Report saved successfully!

🧾 Code Structure
Function	Description
scan_directory()	Finds and hashes all files
show_duplicates()	Displays duplicate file groups
delete_duplicates()	Removes selected duplicates
save_report()	Exports duplicates to a text file
main_menu()	Displays interactive options
🧠 Enhancements (Future Scope)

Add support for file comparison based on size and content (beyond hashing).

Implement multi-threaded hashing for large directories.

Add PDF report generation using enscript and ps2pdf.

Integrate email notification after scan completion.

📜 License

This project is licensed under the MIT License — free to use and modify with attribution.
