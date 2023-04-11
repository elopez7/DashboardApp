

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Layouts 6.3
import QtQuick.Controls 6.3

Item {
    id: delegate
    width: 448
    height: 60

    RowLayout {
        id: rowLayout
        anchors.fill: parent

        Label {
            id: labelTime
            text: taskTime
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 14
            Layout.maximumWidth: 150
            Layout.minimumWidth: 150
        }

        Label {
            id: labelTask
            text: taskName
            horizontalAlignment: Text.AlignLeft
            font.bold: true
            Layout.maximumWidth: 200
            Layout.minimumWidth: 200
            font.pointSize: 16
        }

        Item {
            id: item1
            width: 200
            height: 200
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        ToolButton {
            id: toolButton
            text: qsTr("Tool Button")
            Layout.maximumHeight: 32
            Layout.maximumWidth: 32
            Layout.minimumHeight: 32
            Layout.minimumWidth: 32
            icon.source: "../images/close.png"
            display: AbstractButton.IconOnly
        }
    }
}
