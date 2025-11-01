# 🧩 Duplicate File Finder — Unix Edition

## 👩‍💻 Author Details  
**Roll No:** 241033028  
**Course:** Unix Lab Project  
**Submitted by:** Anahika Singh  

---

## 🛡️ Project Title  
**Duplicate File Finder — Unix Edition**

---

## 📖 Overview  

The **Duplicate File Finder** is a **menu-driven shell script** developed as part of a Unix Lab project.  
It helps users identify and manage **duplicate files** in a specified directory using Unix commands and scripting logic.

The tool enhances file organization and saves disk space by scanning directories, listing duplicate files, and allowing deletion or report generation — all from a simple, color-coded terminal interface.

---

## 🎯 Project Objectives  

- To practice **Unix shell scripting** and file handling.  
- To automate the process of finding **duplicate files** using hashing.  
- To provide a **user-friendly, menu-driven interface**.  
- To allow users to **save reports**, **view duplicates**, and **delete them** safely.  
- To understand the use of commands like `find`, `md5sum`, and `awk`.

---

## ⚙️ Key Functionalities  

| Feature | Description |
|----------|-------------|
| 🔍 **Scan Directory** | Scans the given directory recursively for duplicate files based on file content (hash). |
| 📋 **Show Duplicates** | Displays duplicate files in a formatted list. |
| 🗑️ **Delete Duplicates** | Lets the user delete selected duplicate files to save disk space. |
| 💾 **Save Report** | Saves a detailed duplicate file report in a text file. |
| 🚪 **Exit** | Safely exits the program. |

---

## 🧠 Technologies Used  

- **Unix Shell Scripting (Bash)**  
- **Commands Used:**  
  `find`, `md5sum`, `awk`, `sort`, `uniq`, `rm`, `echo`, `read`  
- **Text Formatting:** ANSI color codes for terminal output  

---

## 🧩 Menu Interface Example  


<img width="319" height="148" alt="Screenshot 2025-11-01 at 9 33 33 PM" src="https://github.com/user-attachments/assets/38d6a24e-9a75-4624-8e3e-c6dc60f5c25e" />

---

## 🧾 Code Structure  

### 1️⃣ duplicate_finder.sh
Main bash script that controls the full functionality.

### 📂 Functions Implemented
| Function | Purpose |
|-----------|----------|
| `scan_directory()` | Scans directory recursively and stores hash-based file details. |
| `show_duplicates()` | Displays files with identical hashes. |
| `delete_duplicates()` | Allows user to delete duplicate files safely. |
| `save_report()` | Saves output to a report file with timestamp. |

---

## 🧪 Example Output

Scanning directory...
✅ Found 3 sets of duplicate files:

file1.txt — /home/user/docs/
file1_copy.txt — /home/user/backups/

image.png — /home/user/pics/
image(1).png — /home/user/old_pics/



---

## 🧰 Sample Commands Used

```bash
find "$directory" -type f -exec md5sum {} + | sort | awk 'BEGIN{lasthash=""} $1==lasthash{print $2} {lasthash=$1}'
📦 Output File
A report named like:


duplicate_report_2025-11-01.txt
is automatically saved in the project folder when you choose “Save Report to File”.

💡 Future Enhancements
Add an interactive confirmation before deletion.

Integrate logging for deleted files.

Add PDF report generation using enscript and ps2pdf.

Implement color-coded duplicate groups.

🧾 License
This project is licensed under the MIT License.
You are free to modify and distribute it with attribution.

