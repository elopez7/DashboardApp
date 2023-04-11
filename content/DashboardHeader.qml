import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 1280
    height: 960

    Label {
        id: label
        text: qsTr("Dashboard")
        anchors.verticalCenter: root.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 20
    }

    Row {
        id: row
        x: 990
        width: 256
        height: root.height
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        spacing: 20
        anchors.rightMargin: 0

        Switch {
            id: switchReorder
            text: qsTr("Reorder")
            anchors.verticalCenter: parent.verticalCenter
        }

        ToolButton {
            id: buttonSettings
            text: qsTr("Tool Button")
            anchors.verticalCenter: parent.verticalCenter
            icon.source: "images/settings.png"
            display: AbstractButton.IconOnly
        }

        ToolButton {
            id: buttonQuit
            text: qsTr("Tool Button")
            anchors.verticalCenter: parent.verticalCenter
            display: AbstractButton.IconOnly
            icon.source: "images/onoff.png"
            onClicked: Qt.quit()
        }
    }
}
