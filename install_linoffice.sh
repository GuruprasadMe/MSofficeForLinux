#!/bin/bash
# This installs a legitimate copy of MS Office from the original CDN in a container. This customized software is most popularly known as "LinOffice", 
#which was NOT developed by me. This script initiates installation and creates shortcuts natively on your linux desktop.

# Exit on error
set -e

# Variables
INSTALL_DIR="$HOME/linoffice"
DESKTOP_DIR="$HOME/.local/share/applications"

echo "=== Installing prerequisites ==="
sudo apt update
sudo apt install -y git nano freerdp2-x11

echo "=== Cloning LinOffice repository ==="
if [ ! -d "$INSTALL_DIR" ]; then
    git clone https://github.com/eylenburg/linoffice.git "$INSTALL_DIR"
else
    echo "LinOffice already cloned at $INSTALL_DIR"
fi

cd "$INSTALL_DIR"

echo "=== Running quickstart installation ==="
chmod +x quickstart.sh linoffice.sh
./quickstart.sh

echo "=== Creating desktop shortcuts ==="
mkdir -p "$DESKTOP_DIR"

# Word
cat > "$DESKTOP_DIR/linoffice-word.desktop" <<EOF
[Desktop Entry]
Name=Microsoft Word (LinOffice)
Exec=$INSTALL_DIR/linoffice.sh word
Icon=$INSTALL_DIR/icons/word.png
Type=Application
Categories=Office;WordProcessor;
EOF

# Excel
cat > "$DESKTOP_DIR/linoffice-excel.desktop" <<EOF
[Desktop Entry]
Name=Microsoft Excel (LinOffice)
Exec=$INSTALL_DIR/linoffice.sh excel
Icon=$INSTALL_DIR/icons/excel.png
Type=Application
Categories=Office;Spreadsheet;
EOF

# PowerPoint
cat > "$DESKTOP_DIR/linoffice-powerpoint.desktop" <<EOF
[Desktop Entry]
Name=Microsoft PowerPoint (LinOffice)
Exec=$INSTALL_DIR/linoffice.sh powerpoint
Icon=$INSTALL_DIR/icons/powerpoint.png
Type=Application
Categories=Office;Presentation;
EOF

echo "=== Refreshing desktop database ==="
update-desktop-database "$DESKTOP_DIR"

echo "=== Installation complete! ==="
echo "You can now launch Word, Excel, and PowerPoint from your Linux application menu."
