import QtQuick 2.15

Item{
    id: root
    height: 960

    signal setPageToPush(url pageUrl)

    Rectangle {
        id: mainMenuColorFill
        color: "#1d1d1d"
        anchors.fill: parent
        anchors.bottomMargin: 196
        MainMenuList {
            id: mainMenuList
            anchors.right: parent.right
            anchors.fill: parent
            anchors.bottomMargin: 228
            anchors.topMargin: 228

            Connections {
                target: mainMenuList
                function onSetPageToPush(pageUrl) {
                    root.setPageToPush(pageUrl)
                }
            }


        }
    }


    Rectangle {
        id: userInfoBackground
        height: (root.height - mainMenuColorFill.height)
        color: "#ffffff"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: mainMenuColorFill.bottom
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
    }


    UserInfoForm {
        id: userInfoForm
        anchors.top: userInfoBackground.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: -38
    }

}
