pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
    id: root

    property var styles: {
        "Font Family": "FantasqueSansM Nerd Font Propo",
        "Text Small": 12,
        "Text Medium": 16,
        "Text Large": 20
    }

    readonly property string defaultFontFamily: styles["Font Family"]
    readonly property int textLg: styles["Text Large"]
    readonly property int textMd: styles["Text Medium"]
    readonly property int textSm: styles["Text Small"]
}
