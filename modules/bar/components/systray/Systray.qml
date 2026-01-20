import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.SystemTray

Item {
    id: root

    implicitWidth: layout.implicitWidth
    implicitHeight: layout.implicitHeight

    RowLayout {
        id: layout
        anchors.centerIn: parent
        spacing: 5

        Repeater {
            model: SystemTray.items

            SystrayItem {
                required property SystemTrayItem modelData
                item: modelData
            }
        }
    }
}
