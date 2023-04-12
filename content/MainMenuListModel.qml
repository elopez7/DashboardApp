import QtQuick 2.15

ListModel {
    ListElement {
        name: "Dashboard"
        url: "dashboardapp/DashboardMain.qml"
    }
    ListElement {
        name: "Inbox"
        url: "emailapp/InboxView.qml"
    }
    ListElement {
        name: "Calendar"
        url: "calendarapp/CalendarMain.qml"
    }
    ListElement {
        name: "Courses"
        url: "coursesapp/CoursesMain.qml"
    }
    ListElement {
        name: "Latest_News"
        url: "newsapp/NewsMain.qml"
    }
    ListElement {
        name: "Web_Radio"
        url: "radioapp/RadioMain.qml"
    }
}
