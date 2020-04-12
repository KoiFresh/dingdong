import QtQuick 2.0
import QtQuick.Controls 2.0

Item {
    id: element
    width: 600
    height: 1024
    transformOrigin: Item.Center

    Component.onCompleted: {
        objectPasscode1.index = Math.floor(Math.random() * 10) - 1
        objectPasscode2.index = Math.floor(Math.random() * 10) - 1
        objectPasscode3.index = Math.floor(Math.random() * 10) - 1
        objectPasscode4.index = Math.floor(Math.random() * 10) - 1
        objectPasscode5.index = Math.floor(Math.random() * 10) - 1
        objectPasscode6.index = Math.floor(Math.random() * 10) - 1
    }

    Rectangle {
        id: background
        color: "#000000"
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent

        ObjectPasscode {
            id: objectPasscode1
            x: 5
            y: 325
            width: 90
            height: 350
        }
        ObjectPasscode {
            id: objectPasscode2
            x: 105
            y: 325
            width: 90
            height: 350
        }
        ObjectPasscode {
            id: objectPasscode3
            x: 205
            y: 325
            width: 90
            height: 350
        }
        ObjectPasscode {
            id: objectPasscode4
            x: 305
            y: 325
            width: 90
            height: 350
        }


        ObjectPasscode {
            id: objectPasscode5
            x: 405
            y: 325
            width: 90
            height: 350
        }

        ObjectPasscode {
            id: objectPasscode6
            x: 505
            y: 325
            width: 90
            height: 350
        }

        Image {
            id: key
            x: 395
            y: 769
            width: 191
            height: 146
            z: 100
            source: "key.png"
            fillMode: Image.PreserveAspectFit

            MouseArea {
                anchors.fill: parent
                onReleased: {
                    var passcode = objectPasscode1.index.toString()
                            + objectPasscode2.index.toString()
                            + objectPasscode3.index.toString()
                            + objectPasscode4.index.toString()
                            + objectPasscode5.index.toString()
                            + objectPasscode6.index.toString();
                    if (backend.unlock(passcode))
                    {
                      console.info("richtig")
                    }
                    mainSwipe.currentIndex = 0

                    objectPasscode1.index = Math.floor(Math.random() * 10) - 1
                    objectPasscode2.index = Math.floor(Math.random() * 10) - 1
                    objectPasscode3.index = Math.floor(Math.random() * 10) - 1
                    objectPasscode4.index = Math.floor(Math.random() * 10) - 1
                    objectPasscode5.index = Math.floor(Math.random() * 10) - 1
                    objectPasscode6.index = Math.floor(Math.random() * 10) - 1

                }
            }
        }

        Rectangle {
            id: shadow_top
            height: 300
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#000000"
                }

                GradientStop {
                    position: 1
                    color: "#00000000"
                }
            }
        }

        Rectangle {
            id: shadow_bottom
            x: 0
            y: 0
            height: 300
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.right: parent.right
            gradient: Gradient {
                GradientStop {
                    position: 1
                    color: "#000000"
                }

                GradientStop {
                    position: 0
                    color: "#00000000"
                }
            }
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.left: parent.left
        }

    }

}

/*##^##
Designer {
    D{i:10;anchors_width:600;anchors_x:0;anchors_y:0}D{i:14;anchors_height:300;anchors_width:600;anchors_x:0;anchors_y:0}
}
##^##*/
