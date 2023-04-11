// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0

import QtQuick 6.4
import DashboardApp

Window {
    id: root
    width: Constants.width
    height: Constants.height

    visible: true
    title: "DashboardApp"

    Screen01 {
        id: mainScreen
        anchors.fill: parent

    }

}

