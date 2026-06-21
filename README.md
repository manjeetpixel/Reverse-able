# Reverse-able - Vulnerable C Programs for RE/Exploitation Learning

⚠️ **WARNING: This repository contains intentionally vulnerable code for educational purposes only.**

---

## 📌 Overview

This repository contains deliberately vulnerable C programs designed to teach and practice:
- **Reverse Engineering** techniques
- **Vulnerability Analysis** and exploitation
- **Memory exploitation** (buffer overflows, etc.)
- **Debugging** with GDB and other tools
- **Security concepts** for CTF challenges

**DO NOT use this code in production environments.**

---

## ⚠️ DISCLAIMER

- This code is **intentionally vulnerable**
- For **educational and authorized security training only**
- For **Capture The Flag (CTF) competitions** and learning
- Do NOT deploy to any production system
- Do NOT use for unauthorized access to systems
- Use in controlled, authorized environments only

---

## 🎯 Learning Objectives

By studying these programs, you will learn:

1. **Buffer Overflow Exploitation** - Stack-based BOF techniques
2. **Memory Layout Analysis** - Understanding stack/heap organization
3. **Reverse Engineering** - Using GDB, objdump, strings to analyze binaries
4. **Debugging Techniques** - Setting breakpoints, inspecting memory
5. **Vulnerability Identification** - Spotting common security flaws
6. **Exploitation Crafting** - Writing payloads to exploit vulnerabilities

---

## 📁 Repository Structure

```
Reverse-able/
├── README.md                          # This file
├── SECURITY.md                        # Security information
├── src/
│   ├── password_check.c               # Vulnerable password checker
│   └── compile.sh                     # Compilation script
├── writeups/
│   ├── password_check_analysis.md     # Detailed vulnerability breakdown
│   └── exploitation_guide.md          # Step-by-step exploit tutorial
├── exploits/
│   ├── overflow_exploit.py            # Python exploit example
│   └── payload.txt                    # Sample payloads
└── Dockerfile                         # Safe sandboxed environment
```

---

## 🔴 Vulnerabilities in password_check.c

| Vulnerability | Type | Severity | Learning Value |
|---------------|------|----------|------------------|
| Buffer Overflow | CWE-120 | 🔴 CRITICAL | Stack exploitation, payload crafting |
| Hardcoded Password | CWE-798 | 🟠 HIGH | Binary analysis, string searching |
| Unsafe system() call | CWE-78 | 🟠 HIGH | Command injection, shell metacharacters |
| No Input Validation | CWE-20 | 🟠 HIGH | Input handling best practices |

---

## 🚀 Getting Started

### **Prerequisites**
- GCC compiler
- GDB debugger
- Python 3 (for exploit scripts)
- Basic knowledge of C and assembly

### **Setup & Compilation**

```bash
# Clone the repository
git clone https://github.com/manjeetpixel/Reverse-able.git
cd Reverse-able

# Compile with debugging symbols (security protections DISABLED)
gcc -g -fno-stack-protector -z execstack -o password_check src/password_check.c

# Or use the provided script
bash src/compile.sh
```

⚠️ **Note**: Security protections are intentionally disabled for educational demonstration.

---

## 🔍 Learning Path

### **Beginner Level**
1. Read `writeups/password_check_analysis.md`
2. Run the program normally: `./password_check`
3. Try to find the hardcoded password using `strings password_check`
4. Use GDB to inspect the program

### **Intermediate Level**
1. Analyze the binary with `objdump -d password_check`
2. Use GDB to set breakpoints and inspect the stack
3. Understand the vulnerability in detail

### **Advanced Level**
1. Craft your own buffer overflow payload
2. Follow the step-by-step guide in `writeups/exploitation_guide.md`
3. Execute the provided Python exploit: `python3 exploits/overflow_exploit.py`
4. Modify and extend the exploit

---

## 🛠️ Tools You'll Learn

```bash
# View strings in binary (find hardcoded password)
strings password_check

# Disassemble the binary
objdump -d password_check

# Debug with GDB
gdb ./password_check

# View memory layout
ldd password_check

# Check security features
cheksec password_check
```

---

## 📖 Example GDB Session

```bash
$ gdb ./password_check

(gdb) break password_check
(gdb) run
Enter Password: AAAA

(gdb) info locals
(gdb) x/20x $ebp-0x20
(gdb) continue
```

---

## 📚 Resources for Learning

- [GDB Tutorial](https://www.sourceware.org/gdb/documentation/)
- [Stack Overflow Exploitation](https://owasp.org/www-community/attacks/Buffer_Overflow)
- [Reverse Engineering 101](https://beginners.re/)
- [CTF Writeups](https://ctftime.org/)

---

## ⚖️ Legal Notice

**This code is provided for:**
- ✅ Educational purposes
- ✅ Authorized security training
- ✅ CTF competitions
- ✅ Personal learning in controlled environments

**This code is NOT for:**
- ❌ Unauthorized access to systems
- ❌ Production deployment
- ❌ Malicious purposes
- ❌ Illegal activities

---

## 📄 License

This educational repository is provided under the **MIT License**.

---

**Happy Learning! Remember: Always practice ethically and legally.** 🛡️