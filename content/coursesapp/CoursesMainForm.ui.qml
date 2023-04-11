

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import DashboardApp 1.0
import "../calendarapp"

Item {
    id: item1
    width: 1024
    height: 878

    WeeklyActivityGraph {
        id: weeklyActivityGraph
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.verticalCenter
        anchors.bottomMargin: 0
        anchors.topMargin: 0
    }

    RemindersView {
        id: remindersView
        x: 327
        anchors.right: parent.right
        anchors.top: weeklyActivityGraph.bottom
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.rightMargin: 0
    }

    CourseProgressGraph {
        id: courseProgressGraph
        anchors.left: parent.left
        anchors.right: remindersView.left
        anchors.top: weeklyActivityGraph.bottom
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
    }
}
