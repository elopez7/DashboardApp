import QtQuick 2.15

ListModel {
    id: tasksModel
    ListElement { taskTime: "08:00-10:00"; taskName: "Math" }
    ListElement { taskTime: "09:00-12:00"; taskName: "Audiovisual" }
    ListElement { taskTime: "10:00-12:00"; taskName: "Material Design" }
    ListElement { taskTime: "13:00-15:00"; taskName: "Product Photography" }
    ListElement { taskTime: "13:00-15:30"; taskName: "Design" }
    ListElement { taskTime: "15:30-17:00"; taskName: "Physics" }
    ListElement { taskTime: "16:00-17:00"; taskName: "Programming" }
    ListElement { taskTime: "17:00-19:00"; taskName: "English" }
    ListElement { taskTime: "17:00-19:00"; taskName: "Programming Principles" }
    ListElement { taskTime: "19:00-21:00"; taskName: "Design Principles" }
}
