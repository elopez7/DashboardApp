

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: item1
    width: 1024
    height: 878

    DashboardCalendar {
        id: dashboardCalendar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.verticalCenter
        anchors.bottomMargin: 0
    }

    TasksView {
        id: tasksView
        anchors.left: parent.left
        anchors.right: parent.horizontalCenter
        anchors.top: parent.verticalCenter
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.topMargin: 0
    }

    RemindersView {
        id: remindersView
        anchors.left: parent.horizontalCenter
        anchors.right: parent.right
        anchors.top: parent.verticalCenter
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.leftMargin: 0
    }
}
