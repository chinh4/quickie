import QtQuick
import Quickshell

import qs.components
import qs.settings
import qs.services

Item {
    id: root

    implicitWidth: childrenRect.width
    implicitHeight: childrenRect.height

    StylisedText {
        text: Audio.sinkMuted ? "Muted" : "Volume: " + Math.round(Audio.sinkVolume * 100) + "%"
    }
}
