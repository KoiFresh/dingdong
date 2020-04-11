import QtQuick 2.0

Item {
    id: element
    width: 600
    height: 1024
    transformOrigin: Item.Center

    Rectangle {
        id: background
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#000000"
            }

            GradientStop {
                position: 1
                color: "#423d3d"
            }
        }
        anchors.fill: parent

        ObjectPasscode {
            id: objectPasscode1
            x: 0
            y: 452
            width: 100
            height: 100
        }
        ObjectPasscode {
            id: objectPasscode2
            x: 100
            y: 452
            width: 100
            height: 100
        }
        ObjectPasscode {
            id: objectPasscode3
            x: 200
            y: 452
            width: 100
            height: 100
        }
        ObjectPasscode {
            id: objectPasscode4
            x: 300
            y: 452
            width: 100
            height: 100
        }


        ObjectPasscode {
            id: objectPasscode5
            x: 400
            y: 452
            width: 100
            height: 100
        }

        ObjectPasscode {
            id: objectPasscode6
            x: 500
            y: 452
            width: 100
            height: 100
        }

        Image {
            id: key
            x: 395
            y: 769
            width: 191
            height: 146
            source: "key.png"
            fillMode: Image.PreserveAspectFit

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    backend.bell_sound();
                }
            }
        }
    }
}
