import QtQuick 2.0

Item {
    width: 540
    height: 800

    property alias nameText: name.text
    property string sip_addresse: NULL
    property alias nameStrasse: strasse.text

    Rectangle {
        id: background
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#000000"
            }

            GradientStop {
                position: 1
                color: "#332e2e"
            }
        }
        anchors.fill: parent


        Text {
            id: name
            x: 147
            width: 455
            height: 45
            color: "#ffffff"
            text: qsTr("Name der Familie oder so")
            anchors.top: bell.bottom
            anchors.topMargin: 10
            anchors.horizontalCenterOffset: 0
            font.family: "Arial"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: bell.horizontalCenter
            font.pixelSize: 34
        }

        Text {
            id: strasse
            x: 147
            width: 455
            height: 35
            color: "#ffffff"
            text: qsTr("Name der Strasse oder so")
            anchors.top: name.bottom
            anchors.topMargin: parent.height * 1/20 - 20
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenterOffset: 0
            font.family: "Arial"
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 20
        }

        ObjectBell {
            id: bell
            //y: (parent.height - ((name.y + name.height) - x)) / 2
            width: parent.height * 0.4
            height: parent.height * 0.4
            anchors.verticalCenterOffset: parent.height * (-0.1)
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        MouseArea {
            anchors.fill: parent
            enabled: true
            onReleased :{
                bell.animationStart()
                if(!backend.active)
                {
                    backend.bell_sound()
                }else
                {
                    console.info("no sound")
                }

                if(sip_addresse)
                {
                    backend.call_start(sip_addresse)
                    console.info("address")
                }else
                {
                    console.info("no addres")
                }
            }
        }

    }
}

/*##^##
Designer {
    D{i:6;anchors_y:481}
}
##^##*/
