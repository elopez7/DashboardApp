

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 6.3
import "../"

BaseCard {
    id: root
    width: 1024
    height: 768
    property alias label: label.text

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        anchors.rightMargin: 32
        anchors.leftMargin: 32
        anchors.topMargin: 32
        anchors.bottomMargin: 32

        RowLayout {
            id: rowLayout

            Label {
                id: label
                text: qsTr("August 2025")
                Layout.fillWidth: true
                font.pointSize: 24
            }

            ToolButton {
                id: toolButton
                text: qsTr("Tool Button")
                icon.source: "../images/Left.png"
                display: AbstractButton.IconOnly
            }

            ToolButton {
                id: toolButton1
                text: qsTr("Tool Button")
                icon.source: "../images/Right.png"
                display: AbstractButton.IconOnly
            }
        }

        DayOfWeekRow {
            id: dayOfWeekRow
            Layout.fillHeight: false
            Layout.fillWidth: true
            delegate: Text {
                text: model.shortName
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        MonthGrid {
            id: grid
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
