﻿/* === This file is part of Calamares - <http://github.com/calamares> ===
 *
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 * 
 *   Coopertronic-OS custom settings
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Timer {
        id: advanceTimer
        interval: 30000
        running: true
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }

    Slide {
        anchors.fill: parent
        anchors.verticalCenterOffset: 0


        Image {
            id: background1
            source: "dragon-circle.coopertronic.black.red.BG.2021.Slide-1.png"
            width: parent.width; height: parent.height          
            horizontalAlignment: Image.AlignCenter
    		verticalAlignment: Image.AlignTop

            anchors.fill: parent

            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 165
                anchors.horizontalCenterOffset: 0
                font.pixelSize: parent.width *.020
                color: 'white'
                text: qsTr("<b>Welcome to Coopertronic-OS, The home of Happy Computers<br/>")
                wrapMode: Text.WordWrap
                width: parent.width / 1.4
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

    Slide {
        anchors.fill: parent
        anchors.verticalCenterOffset: 0

        Image {
            id: background2
            source: "dragon-circle.coopertronic.black.red.BG.2021.Slide-2.png"
            width: parent.width; height: parent.height          
            horizontalAlignment: Image.AlignCenter
    		verticalAlignment: Image.AlignTop

            anchors.fill: parent

            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 163
                anchors.horizontalCenterOffset: 0
                font.pixelSize: parent.width *.020
                color: 'white'
                text: qsTr("<b>Coopertronic-OS uses the KDE desktop<br/>")
                
                wrapMode: Text.WordWrap
                width: parent.width / 1.4
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

	Slide {
        anchors.fill: parent
        anchors.verticalCenterOffset: 0

        Image {
            id: background3
            source: "dragon-circle.coopertronic.black.red.BG.2021.Slide-3.png"
            width: parent.width; height: parent.height          
            horizontalAlignment: Image.AlignCenter
    		verticalAlignment: Image.AlignTop

            anchors.fill: parent

            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 165
                anchors.horizontalCenterOffset: 0
                font.pixelSize: parent.width *.020
                color: 'white'
                text: qsTr("<b>A work in progress<br/>")
                wrapMode: Text.WordWrap
                width: parent.width / 1.4
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

    Slide {
        anchors.fill: parent
        anchors.verticalCenterOffset: 0

        Image {
            id: background4
            source: "dragon-circle.coopertronic.black.red.BG.2021.Slide-4.png"
            width: parent.width; height: parent.height
            horizontalAlignment: Image.AlignCenter
    		verticalAlignment: Image.AlignTop
    		
            anchors.fill: parent

            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 165
                anchors.horizontalCenterOffset: 0
                font.pixelSize: parent.width *.020
                color: 'white'
                text: qsTr("<b>Thank you for trying Coopertronic-OS<br/>")
                wrapMode: Text.WordWrap
                width: parent.width / 1.4
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

    Component.onCompleted: advanceTimer.running = true
}

