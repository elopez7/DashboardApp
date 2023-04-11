import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 1280
    height: 960
    property alias borderImage: borderImage

    BorderImage {
        id: borderImage
        anchors.fill: parent
        source: "images/card.png"
        border.bottom: 100
        border.top: 100
        border.right: 100
        border.left: 100
    }
}
