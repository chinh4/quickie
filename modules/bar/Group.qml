import QtQuick
import QtQuick.Layouts
import Quickshell
import qs.settings

Item {
    id: root

    property int padding: Global.borderWidth + Global.barContentPadding
    default property alias items: layout.children

    visible: visibleChildren.length > 0

    implicitWidth: layout.implicitWidth + Global.barContentPadding * 2
    implicitHeight: Global.barHeight

    Rectangle {
        id: background
        anchors {
            fill: parent
            topMargin: root.padding
            bottomMargin: root.padding
            leftMargin: 0
            rightMargin: 0
        }
        color: Colors.color1
    }

    GridLayout {
        id: layout

        columns: -1

        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            right: parent.right
            margins: root.padding
        }

        columnSpacing: 4
        rowSpacing: 12
    }
}
