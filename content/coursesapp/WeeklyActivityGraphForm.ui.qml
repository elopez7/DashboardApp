

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import "../"
import QtCharts 6.3
import QtQuick.Layouts 6.3

BaseCard {
    width: 1024
    height: 439

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        anchors.margins: 16

        Label {
            id: label
            text: qsTr("Weekly Activity")
            font.pointSize: 32
        }

        ChartView {
            id: bar
            width: 785
            height: 320
            Layout.fillWidth: true
            Layout.fillHeight: true
            title: "Weekly Activity"
            BarSeries {

                axisX: BarCategoryAxis {
                    gridVisible: false
                    categories: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
                }
                name: "BarSeries"
                barWidth: 0.2
                BarSet {
                    color: "#00d1a8"
                    values: [75, 75, 55, 30, 40, 25, 30]
                    label: "Done"
                }

                BarSet {
                    color: "#ff5900"
                    values: [55, 30, 55, 40, 25, 30, 25]
                    label: "Urgent"
                }

                BarSet {
                    color: "#ffe361"
                    values: [60, 10, 25, 55, 75, 25, 100]
                    label: "In Progress"
                }
            }
        }
    }
}
