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
- To allow users to **save reports** and **view duplicates**.  
- To understand the use of commands like `find`, `md5sum`, and `awk`.

---

## ⚙️ Key Functionalities  

| Feature | Description |
|----------|-------------|
| 🔍 **Scan Directory** | Scans the given directory recursively for duplicate files based on file content (hash). |
| 📋 **Show Duplicates** | Displays duplicate files in a formatted list. |
| 🚪 **Exit** | Safely exits the program. |

---

## 🧠 Technologies Used  

- **Unix Shell Scripting (Bash)**  
- **Commands Used:**  
  `find`, `md5sum`, `awk`, `sort`, `uniq`, `rm`, `echo`, `read`  
- **Text Formatting:** ANSI color codes for terminal output  

---

## 🧩 Menu Driven Interface  
<img width="586" height="118" alt="Screenshot 2025-11-03 at 12 20 52 PM" src="https://github.com/user-attachments/assets/2385d750-2b6a-46e2-a037-9d0152771799" />




---

## 🧾 Code Structure  

### 1️⃣ duplicate_finder.sh
Main bash script that controls the full functionality.

### 📂 Functions Implemented
| Function | Purpose |
|-----------|----------|
| `scan_directory()` | Scans directory recursively and stores hash-based file details. |
| `show_duplicates()` | Displays files with identical hashes. |

---

## 🧪 Example Output

<img width="618" height="210" alt="Screenshot 2025-11-03 at 12 05 59 PM" src="https://github.com/user-attachments/assets/803d18ff-8d67-4bf1-b41a-1702e7388e6a" />

<img width="618" height="266" alt="Screenshot 2025-11-03 at 12 06 48 PM" src="https://github.com/user-attachments/assets/5695cf1c-4c04-41d7-96d9-b9d216118f45" />
<img width="596" height="188" alt="Screenshot 2025-11-03 at 12 07 11 PM" src="https://github.com/user-attachments/assets/c7a54918-ea36-40cd-b77c-a5e71116dfb4" />


---

## 🧰 Sample Commands Used

```bash
find "$directory" -type f -exec md5sum {} + | sort | awk 'BEGIN{lasthash=""} $1==lasthash{print $2} {lasthash=$1}'
📦 Output File
A report named like:


duplicate_report_2025-11-01.txt
is automatically saved in the project folder when you choose “Save Report to File”.

## 💡 Future Enhancements
Add an interactive confirmation before deletion.

Integrate logging for deleted files.

Add PDF report generation using enscript and ps2pdf.

Implement color-coded duplicate groups.

## 🧾 License
This project is licensed under the MIT License.
You are free to modify and distribute it with attribution.

