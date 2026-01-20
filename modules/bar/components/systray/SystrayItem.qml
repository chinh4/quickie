import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.SystemTray
import Quickshell.Widgets
import qs.settings

MouseArea {
    id: root

    required property SystemTrayItem item
    property int itemSize: Styling.textMd

    acceptedButtons: Qt.LeftButton | Qt.MiddleButton | Qt.RightButton
    implicitWidth: itemSize
    implicitHeight: itemSize

    onClicked: event => {
        switch (event.button) {
        case Qt.LeftButton:
            item.activate();
            break;
        case Qt.MiddleButton:
            item.secondaryActivate();
            break;
        case Qt.RightButton:
            // item.;
            break;
        }
        event.accepted = true;
    }

    IconImage {
        id: icon
        source: root.item.icon
        anchors.centerIn: parent
        width: root.itemSize
        height: root.itemSize
        smooth: true

        visible: true
    }
}
