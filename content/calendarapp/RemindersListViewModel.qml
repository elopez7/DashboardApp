import QtQuick 2.15

ListModel {
    id: remindersModel
    ListElement { date: "08"; month: "Jan"; description: "UX Principles paper"; color: "#00D1A8" }
    ListElement { date: "12"; month: "Jan";  description: "Borrow design book"; color: "#FFE361" }
    ListElement { date: "19"; month: "May";  description: "Prepare for oral exam"; color: "#00D1A8" }
    ListElement { date: "24"; month: "May";  description: "Math exam"; color: "#FF5900" }
}
