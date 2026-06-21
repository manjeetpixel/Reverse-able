#!/bin/bash

# Compilation script for vulnerable C programs
# Security protections are INTENTIONALLY DISABLED for educational purposes

echo "🔧 Compiling vulnerable programs..."
echo ""

# Compile password_check with debugging symbols and NO security protections
echo "[*] Compiling password_check.c..."
gcc -g -fno-stack-protector -z execstack -o password_check password_check.c

if [ $? -eq 0 ]; then
    echo "✅ Successfully compiled: password_check"
    echo "   Run with: ./password_check"
else
    echo "❌ Compilation failed!"
    exit 1
fi

echo ""
echo "⚠️  WARNING: Security protections are DISABLED for learning purposes"
echo "   Do NOT use these binaries in production!"
echo ""
echo "🚀 Ready to begin learning!"