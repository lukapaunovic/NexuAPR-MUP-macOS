#!/bin/bash
APP_PATH="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="$APP_PATH/.."

REAL_USER=$(stat -f%Su /dev/console)
USER_HOME=$(dscl . -read /Users/$REAL_USER NFSHomeDirectory | awk '{print $2}')
NEXU_DIR="$USER_HOME/.NexUApr"

mkdir -p "$NEXU_DIR"

ARCH=$(uname -m)
if [ "$ARCH" = "arm64" ]; then
    LIB_NAME="libsrb-id-pkcs11.arm.0.2.0.dylib"
else
    LIB_NAME="libsrb-id-pkcs11.x64.0.2.0.dylib"
fi

cat > "$NEXU_DIR/user_settings_db.xml" <<EOF
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<user-settings>
    <token-list>
        <token>
            <id>MUP</id>
            <custom-pkcs-list>
                <pkcs11>
                    <alias>MUP</alias>
                    <lib>/Applications/NexuAPR.app/Contents/Resources/pkcs11/$LIB_NAME</lib>
                    <slot>0</slot>
                </pkcs11>
            </custom-pkcs-list>
        </token>
    </token-list>
</user-settings>
EOF

open "$APP_DIR/MacOS/NexuAPR"
