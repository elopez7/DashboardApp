

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Studio.Components
import "../calendarapp"
import "../"
import QtQuick.Layouts 6.3

BaseCard {
    width: 512
    height: 439

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        anchors.rightMargin: 16
        anchors.leftMargin: 16
        anchors.bottomMargin: 24
        anchors.topMargin: 16

        Label {
            id: label
            text: qsTr("Course Activity")
            font.pointSize: 26
            Layout.fillHeight: false
            Layout.fillWidth: true
        }

        RowLayout {
            id: rowLayout
            width: 100
            height: 100
            spacing: 5
            Layout.fillWidth: true
            Layout.fillHeight: true

            Label {
                id: label1
                text: qsTr("Week 24")
                verticalAlignment: Text.AlignBottom
                Layout.minimumHeight: 112
                Layout.maximumHeight: 112
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 24
            }

            HintCard {
                id: hintCard
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                Layout.maximumHeight: 112
                Layout.maximumWidth: 150

                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }

        RowLayout {
            id: arcs
            width: 100
            height: 100
            Layout.maximumWidth: 480
            Layout.minimumWidth: 480
            spacing: 10
            Layout.fillWidth: true
            Layout.fillHeight: true

            ArcItem {
                id: arcInProgress
                strokeColor: "#ffe361"
                Layout.maximumHeight: 128
                Layout.maximumWidth: 128
                Layout.minimumHeight: 128
                Layout.minimumWidth: 128
                Layout.fillHeight: true
                Layout.fillWidth: true
                end: 90
                fillColor: "#00000000"

                Label {
                    id: label2
                    text: qsTr("Due 20%")
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                ArcItem {
                    id: arcBackgroundProgress
                    anchors.fill: parent
                    end: 360
                    strokeColor: "#858585"
                    z: -1
                    fillColor: "#00000000"
                }
            }

            ArcItem {
                id: arcUrgent
                strokeColor: "#ff5900"
                Layout.maximumHeight: 128
                Layout.maximumWidth: 128
                Layout.minimumHeight: 128
                Layout.minimumWidth: 128
                Layout.fillHeight: true
                Layout.fillWidth: true
                fillColor: "#00000000"

                Label {
                    id: label3
                    text: qsTr("Due 20%")
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                ArcItem {
                    id: arcBackgroundUrgent
                    anchors.fill: parent
                    end: 360
                    strokeColor: "#858585"
                    z: -1
                    fillColor: "#00000000"
                }
            }

            ArcItem {
                id: arcDone
                strokeColor: "#00d1a8"
                Layout.maximumHeight: 128
                Layout.maximumWidth: 128
                Layout.minimumHeight: 128
                Layout.minimumWidth: 128
                Layout.fillHeight: true
                Layout.fillWidth: true
                fillColor: "#00000000"

                Label {
                    id: label4
                    text: qsTr("Due 20%")
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                ArcItem {
                    id: arcBackgroundDone
                    anchors.fill: parent
                    end: 360
                    strokeColor: "#858585"
                    z: -1
                    fillColor: "#00000000"
                }
            }
        }
    }
}
