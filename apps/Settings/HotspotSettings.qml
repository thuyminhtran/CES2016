/* Copyright (C) 2015, Jaguar Land Rover. All Rights Reserved.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import QtQuick 2.0
import system 1.0

SettingsView {
    name: "hotspot"
    description: "Wifi Tethering/Hotspot"

    Text {
        anchors.centerIn: parent
        font.pixelSize: 40
        color: "white"
        text: "Hotspot TBD"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: System.activeSetting = "settings"
    }
}
