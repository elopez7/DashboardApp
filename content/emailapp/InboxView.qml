import QtQuick 2.15
import QtQuick.Controls 2.15
import DashboardApp
import "../"

BaseCard {
    id: root
    width: 1024
    height: 878

    Label {
        id: titleLabel
        text: qsTr("Inbox (3)")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 40
        anchors.topMargin: 20
    }

    InboxViewForm {
        id: inboxViewForm
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: titleLabel.bottom
        anchors.bottom: parent.bottom
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 0
    }

}
