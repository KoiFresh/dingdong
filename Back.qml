import QtQuick 2.0

Item {
    id:back

    property bool fullScreen: false

    //focus: true
    /*Keys.onPressed: {
        if(event.key === Qt.Key_F11)
        {
            if(fullScreen)
            {
                main.showNormal()
            }else
            {
                main.showFullScreen()
            }
            fullScreen = !fullScreen
            main.update()
        }
    }*/

    Rectangle {
        id: background
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#f5f0f0"
            }

            GradientStop {
                position: 1
                color: "#5099e6"
            }
        }
        anchors.fill: parent
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
