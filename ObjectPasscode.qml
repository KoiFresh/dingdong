import QtQuick 2.0
import QtQuick.Controls 2.0

Item {
    width: 100
    height: 400

    property alias index: passcode.currentIndex


     Rectangle {
         id: rectangle1
         x: 0
         width: 5
         radius: 0
         visible: true
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
                 position: 0.5
                 color: "#a8a8a8"
             }

             GradientStop {
                 position: 1
                 color: "#000000"
             }
         }
         anchors.bottomMargin: 0
         anchors.bottom: parent.bottom
     }

     Rectangle {
         id: rectangle
         width: 6
         radius: 0
         gradient: Gradient {
             GradientStop {
                 position: 0
                 color: "#000000"
             }

             GradientStop {
                 position: 0.5
                 color: "#a8a8a8"
             }

             GradientStop {
                 position: 1
                 color: "#000000"
             }

         }
         anchors.bottom: parent.bottom
         anchors.bottomMargin: 0
         anchors.left: parent.left
         anchors.leftMargin: 0
         anchors.top: parent.top
         anchors.topMargin: 0
     }


    SwipeView {
        id: passcode
        width: 100
        focusPolicy: Qt.TabFocus
        hoverEnabled: false
        currentIndex: 0
        layer.wrapMode: ShaderEffectSource.RepeatHorizontally
        anchors.fill: parent
        orientation: Qt.Vertical
        spacing: 1
        wheelEnabled: true


        Item {
            id: nr0
            layer.wrapMode: ShaderEffectSource.ClampToEdge
            clip: false

            Text {
                id: number0
                color: "#dfdcdc"
                text: qsTr("0")
                anchors.topMargin: 0
                anchors.rightMargin: 0
                font.family: "Courier"
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                fontSizeMode: Text.HorizontalFit
                font.pixelSize: 300

            }
        }

        Item {
            id: nr1

            Text {
                id: number1
                color: "#dfdcdc"
                anchors.fill: parent
                text: qsTr("1")
                font.family: "Courier"
                font.pixelSize: 300
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                fontSizeMode: Text.HorizontalFit

            }
        }

        Item {
            id: nr2

            Text {
                id: number2
                color: "#dfdcdc"
                anchors.fill: parent
                text: qsTr("2")
                font.family: "Courier"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 300
                fontSizeMode: Text.HorizontalFit
            }
        }

        Item {
            id: nr3

            Text {
                id: number3
                color: "#dfdcdc"
                anchors.fill: parent
                text: qsTr("3")
                font.family: "Courier"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 300
                fontSizeMode: Text.HorizontalFit
            }

        }

        Item {
            id: nr4

            Text {
                id: number4
                color: "#dfdcdc"
                anchors.fill: parent
                text: qsTr("4")
                font.family: "Courier"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 300
                fontSizeMode: Text.HorizontalFit
            }
        }

        Item {
            id: nr5

            Text {
                id: number5
                color: "#dfdcdc"
                anchors.fill: parent
                text: qsTr("5")
                font.family: "Courier"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 300
                fontSizeMode: Text.HorizontalFit
            }
        }

        Item {
            id: nr6

            Text {
                id: number6
                color: "#dfdcdc"
                anchors.fill: parent
                text: qsTr("6")
                font.family: "Courier"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 300
                fontSizeMode: Text.HorizontalFit
            }
        }

        Item {
            id: nr7

            Text {
                id: number7
                color: "#dfdcdc"
                anchors.fill: parent
                text: qsTr("7")
                font.family: "Courier"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 300
                fontSizeMode: Text.HorizontalFit
            }
        }

        Item {
            id: nr8

            Text {
                id: number8
                color: "#dfdcdc"
                anchors.fill: parent
                text: qsTr("8")
                font.family: "Courier"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 300
                fontSizeMode: Text.HorizontalFit
            }
        }

        Item {
            id: nr9

            Text {
                id: number9
                color: "#dfdcdc"
                anchors.fill: parent
                text: qsTr("9")
                font.family: "Courier"
                font.pixelSize: 300
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                fontSizeMode: Text.HorizontalFit
            }
        }


    }

}

/*##^##
Designer {
    D{i:3;anchors_height:185;anchors_width:85;anchors_x:38;anchors_y:93}D{i:2;invisible:true}
D{i:1;anchors_height:192;anchors_width:92;anchors_x:0;anchors_y:0}
}
##^##*/
