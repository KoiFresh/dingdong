import QtQuick 2.0

Item {
    id: buttonObject
    width: 200
    height: 200
    property alias buttonRotation: button.rotation
    property color colorPressed: "green"
    property color color : "red"
    property alias displayText: display.text
    property alias colorButton: button.color
    property int buttonId: 0
    signal released
    signal pressed(int id)


    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onPressed: {
            buttonObject.pressed(buttonId)
            button.color = colorPressed
        }

        onReleased: {
           buttonObject.released()
           button.color = color
        }
    }

    Rectangle {
        id: button
        color: buttonObject.color
        radius: 100
        rotation: 0
        anchors.fill: parent

        Text {
            id: display
            x: 88
            y: 67
            color: "#ffffff"
            text: qsTr("Text")
            font.pixelSize: 25
            font.bold: false
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }
    }

}
