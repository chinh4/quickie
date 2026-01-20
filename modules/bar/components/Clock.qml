import QtQuick
import Quickshell
import qs.settings
import qs.components

Item {
    id: root

    implicitWidth: childrenRect.width
    implicitHeight: childrenRect.height

    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }

    StylisedText {
        id: time
        text: Qt.formatDateTime(clock.date, "hh:mm:ss MM/dd/yyyy")
    }
}
