

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
    width: 512
    height: 439

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        anchors.margins: 32

        RowLayout {
            id: rowLayout
            width: 100
            height: 100
            Layout.fillWidth: true

            Label {
                id: label
                text: qsTr("Tasks")
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 24
                Layout.fillWidth: true
            }

            Button {
                id: button
                text: qsTr("Add New")
            }
        }

        Label {
            id: label1
            text: qsTr("Current Date")
            font.pointSize: 24
        }

        TasksListView {
            id: tasksListView
            clip: true
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
