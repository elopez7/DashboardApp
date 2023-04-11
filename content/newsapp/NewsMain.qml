import QtQuick 2.15
import QtQuick.Layouts 6.3
import "../emailapp"

NewsMainForm {
    width: 1024
    height: 878

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        anchors.margins: 16

        NewsCategories {
            id: newsCategories
            width: 1024
            height: 20
            Layout.fillWidth: true
            orientation: ListView.Horizontal
        }

        InboxView {
            id: inboxView
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
