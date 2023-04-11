

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
    height: 72

    RowLayout {
        id: rowLayout
        anchors.fill: parent

        ColumnLayout {
            id: columnLayout
            width: 100
            height: 100
            Layout.fillHeight: true
            Layout.maximumWidth: 128
            Layout.minimumWidth: 128
            Layout.fillWidth: true

            Label {
                id: labelDate
                text: date
                verticalAlignment: Text.AlignBottom
                font.pointSize: 28
                Layout.fillWidth: true
                Layout.fillHeight: true
            }

            Label {
                id: labelMonth
                text: month
                font.pointSize: 18
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }

        Label {
            id: labelReminder
            text: description
            verticalAlignment: Text.AlignVCenter
            Layout.fillHeight: true
            font.pointSize: 18
            Layout.fillWidth: true
        }
    }
}
