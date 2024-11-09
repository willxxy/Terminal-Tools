# Searches system for opengl

#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "=== OpenGL/Mesa Driver Check ==="
echo

# Define the search paths from the error message
search_paths=(
    "/usr/lib/x86_64-linux-gnu/dri"
    "/usr/lib/dri"
    "${PWD}/dri"  # equivalent to $${ORIGIN}/dri
)

# Files to check
files_to_check=(
    "swrast_dri.so"
    "libGL.so.1"
    "libGL.so"
)

# Check if each search path exists
echo "Checking search paths..."
for path in "${search_paths[@]}"; do
    if [ -d "$path" ]; then
        echo -e "${GREEN}[✓] Directory exists:${NC} $path"
        echo "   Contents:"
        ls -l "$path" | grep -E ".*_dri\.so$" || echo "   No DRI drivers found in this directory"
    else
        echo -e "${RED}[✗] Directory does not exist:${NC} $path"
    fi
    echo
done

# Check for specific files
echo "Checking for specific files..."
for file in "${files_to_check[@]}"; do
    found=false
    for path in "${search_paths[@]}"; do
        if [ -f "$path/$file" ]; then
            echo -e "${GREEN}[✓] Found:${NC} $path/$file"
            found=true
        fi
    done
    if ! $found; then
        echo -e "${RED}[✗] Not found:${NC} $file"
    fi
done

echo -e "\n=== System Information ==="
# Check if mesa packages are installed
echo -e "\nInstalled Mesa packages:"
dpkg -l | grep -i mesa || echo "No Mesa packages found"

# Check GL vendor
echo -e "\nGL Vendor Information:"
glxinfo 2>/dev/null | grep "vendor\|version" || echo -e "${YELLOW}glxinfo not found. Install it with: sudo apt-get install mesa-utils${NC}"

echo -e "\n=== Recommendations ==="
echo "If files are missing, you may need to install the following packages:"
echo "  sudo apt-get update"
echo "  sudo apt-get install libgl1-mesa-dri mesa-common-dev"
echo "  sudo apt-get install mesa-utils"  # for glxinfo
