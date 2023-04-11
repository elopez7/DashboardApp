

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import DashboardApp

Item {
    id: delegate
    width: ListView.view.width
    height: 48

    signal setPageToPush(url pageUrl)

    Rectangle {
        id: rectangle
        color: "#bdbdbd"
        anchors.fill: parent
        anchors.margins: 12
        visible: true
        radius: 4
    }

    Text {
        id: label
        color: "#343434"
        anchors.top: parent.top

        font.family: Constants.largeFont.family
        text: name
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: image.right
        anchors.margins: 24
        verticalAlignment: Text.AlignVCenter
        anchors.leftMargin: 24
    }
    MouseArea {
        id: delegateMouseArea
        anchors.fill: parent

        Connections {
            target: delegateMouseArea
            onClicked: {
                delegate.ListView.view.currentIndex = index
                setPageToPush(url)
            }
        }
    }

    Image {
        id: image
        width: source.width
        height: source.height
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        source: "images/" + model.name.toLowerCase()
        anchors.leftMargin: 24
        fillMode: Image.PreserveAspectFit
    }

    states: [
        State {
            name: "Highlighted"

            when: delegate.ListView.isCurrentItem
            PropertyChanges {
                target: label
                color: "#efefef"
                anchors.topMargin: 52
            }

            PropertyChanges {
                target: rectangle
                visible: false
            }
        }
    ]
}
