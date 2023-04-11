

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import DashboardApp
import QtQuick.Layouts 6.3
import QtQuick.Controls 6.3

Item {
    id: delegate
    width: 828
    height: 140
    property alias initialLabel: initialLabel.text

    Image {
        id: divider
        height: 25
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        source: "../images/divider.png"
        anchors.topMargin: 0
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        fillMode: Image.PreserveAspectFit
    }

    RowLayout {
        id: rowLayout
        anchors.fill: parent
        spacing: 30

        Rectangle {
            id: rectangle
            color: "#00ffffff"
            radius: width * 0.5
            border.width: 1
            Layout.leftMargin: 40
            Layout.maximumHeight: 75
            Layout.maximumWidth: 75
            Layout.minimumHeight: 75
            Layout.minimumWidth: 75

            Label {
                id: initialLabel
                text: sender.slice(0,1).toUpperCase()
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.centerIn: parent
            }
        }

        Column {
            id: column
            width: 200
            height: 400
            spacing: 5
            Layout.topMargin: 24
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Layout.fillHeight: true
            Layout.fillWidth: true

            Label {
                id: senderLabel
                text: sender
            }

            Label {
                id: subjectLabel
                text: subject
            }

            Label {
                id: contentLabel
                text: content
            }
        }
    }

    Item {
        id: item1
        height: 20
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.leftMargin: 0
        anchors.rightMargin: 0

        ToolButton {
            id: toolButton
            width: 90
            height: 30
            text: qsTr("Reply")
            anchors.left: parent.left
            anchors.leftMargin: 145
            icon.source: "../images/reply.png"
        }

        Image {
            id: image
            width: 14
            height: 14
            anchors.centerIn: parent
            source: "../images/expand.png"
            fillMode: Image.PreserveAspectFit
        }
    }
}
