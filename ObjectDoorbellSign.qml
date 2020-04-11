import QtQuick 2.0

Item {
    width: 540
    height: 800

    property alias nameText: name.text
    property string sip_addresse: NULL

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
            anchors.topMargin: 25
            anchors.horizontalCenterOffset: 0
            font.family: "Arial"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: bell.horizontalCenter
            font.pixelSize: 34
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
            onPressed:{
                bell.animationStart()
                if(!backend.active)
                {
                    backend.bell_sound()
                }
                if(sip_addresse)
                {
                    backend.call_start(sip_addresse)
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
