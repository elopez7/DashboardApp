

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.4
import QtQuick.Controls 6.4
import DashboardApp
import "emailapp"
import "calendarapp"
import "coursesapp"
import "newsapp"
import "dashboardapp"

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    DashboardHeader {
        id: dashboardHeader
        x: 62
        height: 82
        anchors.left: mainMenu.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
    }

    MainMenu {
        id: mainMenu
        width: 256
        height: root.height
        visible: true
        z: 1

        Connections {
            target: mainMenu
            function onSetPageToPush(pageUrl) {
                dashboardStackedView.pop()
                dashboardStackedView.push(pageUrl)
            }
        }
    }

    DashboardStackedView {
        id: dashboardStackedView

        initialItem: "dashboardapp/DashboardMain.qml"
        anchors.left: mainMenu.right
        anchors.right: parent.right
        anchors.top: dashboardHeader.bottom
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.topMargin: 0
    }
}
