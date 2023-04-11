

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 210
    height: 256

    Image {
        id: userImage
        width: sourceSize.width
        height: sourceSize.height
        source: "images/user.png"
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: outherCircle
        width: sourceSize.width
        height: sourceSize.height
        source: "images/outercircle.png"
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
    }

    Column {
        id: column
        width: 200
        anchors.top: outherCircle.bottom
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10

        Row {
            id: row
            width: 200
            height: 24
            spacing: 10

            Item {
                id: item2
                width: 24
                height: 24

                Image {
                    id: image
                    width: sourceSize.width
                    height: sourceSize.height
                    anchors.centerIn: parent
                    source: "images/username.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Label {
                id: name
                text: qsTr("John Doe")
                verticalAlignment: Text.AlignVCenter
                height: parent.height
            }
        }

        Row {
            id: row1
            width: 200
            height: 24
            Item {
                width: 24
                height: 24
                Image {
                    width: sourceSize.width
                    height: sourceSize.height
                    source: "images/location.png"
                    fillMode: Image.PreserveAspectFit
                    anchors.centerIn: parent
                }
            }

            Label {
                id: address
                height: parent.height
                opacity: 0.8
                text: qsTr("Barcelona, Spain")
                verticalAlignment: Text.AlignVCenter
            }
            spacing: 10
        }

        Row {
            id: row2
            width: 200
            height: 24
            Item {
                width: 24
                height: 24
                Image {
                    width: sourceSize.width
                    height: sourceSize.height
                    source: "images/status.png"
                    fillMode: Image.PreserveAspectFit
                    anchors.centerIn: parent
                }
            }

            Label {
                id: status
                height: parent.height
                text: qsTr("Student")
                verticalAlignment: Text.AlignVCenter
            }
            spacing: 10
        }
    }
}
