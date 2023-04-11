

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15

ListView {
    id: view
    width: 1024
    height: 20
    spacing: 15
    flickableDirection: Flickable.HorizontalFlick
    orientation: ListView.Horizontal

    model: NewsCategoriesModel {}

    delegate: NewsCategoriesDelegate {}
}
