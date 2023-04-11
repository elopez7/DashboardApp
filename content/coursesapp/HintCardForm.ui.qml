

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import "../"
import QtQuick.Layouts 6.3

BaseCard {
    width: 150
    height: 112
    borderImage.border.left: 8
    borderImage.border.right: 8
    borderImage.border.top: 8
    borderImage.border.bottom: 8

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        anchors.rightMargin: 8
        anchors.leftMargin: 16
        anchors.bottomMargin: 12
        anchors.topMargin: 8

        RowLayout {
            id: rowLayout
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 10
            Layout.fillWidth: true

            Rectangle {
                id: rectangle
                color: "#00D1A8"
                Layout.maximumHeight: 10
                Layout.maximumWidth: 10
                Layout.minimumHeight: 10
                Layout.minimumWidth: 10
                Layout.fillHeight: true
                Layout.fillWidth: true
                radius: width * 0.5
            }

            Label {
                id: label
                text: qsTr("Done")
                verticalAlignment: Text.AlignVCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }

        RowLayout {
            id: rowLayout1
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 10
            Layout.fillWidth: true

            Rectangle {
                id: rectangle1
                color: "#FF5900"
                Layout.maximumHeight: 10
                Layout.maximumWidth: 10
                Layout.minimumHeight: 10
                Layout.minimumWidth: 10
                Layout.fillHeight: true
                Layout.fillWidth: true
                radius: width * 0.5
            }

            Label {
                id: label1
                text: qsTr("Urgent")
                verticalAlignment: Text.AlignVCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }

        RowLayout {
            id: rowLayout2
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 10
            Layout.fillWidth: true

            Rectangle {
                id: rectangle2
                color: "#FFE361"
                Layout.maximumHeight: 10
                Layout.maximumWidth: 10
                Layout.minimumHeight: 10
                Layout.minimumWidth: 10
                Layout.fillHeight: true
                Layout.fillWidth: true
                radius: width * 0.5
            }

            Label {
                id: label2
                text: qsTr("In Progress")
                verticalAlignment: Text.AlignVCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }
    }
}
