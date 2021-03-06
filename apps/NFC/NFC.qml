/* Copyright (C) 2015, Jaguar Land Rover. All Rights Reserved.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import QtQuick 2.0
import system 1.0
import utils 1.0
import components 1.0
import "models"

App {
    appId: "nfc"
    anchors.fill: parent

    Column {
        y: 300
        width: parent.width
        spacing: 50

        NFCIcon {
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: label
            anchors.horizontalCenter: parent.horizontalCenter
            color: "#C4C4C4"
            font.family: "Source Sans Pro"
            font.pointSize: 34
            text: (hexSwitch.value) ? qsTr("Please place NFC tag on NFC reader.") : qsTr("To read NFC tag, NFC reader must be on.")
        }

        HexSwitch {
            id: hexSwitch
            anchors.horizontalCenter: parent.horizontalCenter
            showLabels: true
            onValueChanged: NFCModel.status = value ? "searching" : "off"
        }

        HexLoader {
            anchors.horizontalCenter: parent.horizontalCenter
            visible: NFCModel.status === "searching"
        }

        NFCEdit {
            anchors.horizontalCenter: parent.horizontalCenter
            visible: NFCModel.status === "found"
        }
    }
}
