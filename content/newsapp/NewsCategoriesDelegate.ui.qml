

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 6.3

Item {
    id: delegate
    width: (categoryNameLabel.contentWidth + 20)
    height: 20

    Button {
        id: button
        anchors.fill: parent
        background: Item {
            anchors.fill: parent
            Rectangle {
                color: "#00D1A8"
                anchors.fill: parent
                radius: 30
            }
        }
    }

    Label {
        id: categoryNameLabel
        text: name
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
