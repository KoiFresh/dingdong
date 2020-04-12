import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

import Backend 1.0

Window {
    id:main
    visible: true
    width: 600
    height: 1024
    title: qsTr("dingdong V1 for Ubuntu")
    flags: Qt.WindowStaysOnTopHint
    // Object zur Kommunikation mit c++

    Backend{
        id: backend
    }

    SwipeView {
        id: mainSwipe
        anchors.fill: parent
        Item {
            PageMain {
                id: pageMain
                x: 0
                y: 0
            }
        }

        Item {
            PageLockscreen {
                x: 0
                y: 0
            }
        }

    }






    /*Back {
        id: back
        width: 600
        height: 1024
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0

        Text {
            id: wellcomtext
            x: 232
            y: 87
            text: qsTr("Willkommen")
            font.pixelSize: 31
        }

        Text {
            id: smalltext
            x: 217
            y: 233
            text: "bei Ubuntu Mate mit Qt und Linphone"
            lineHeight: 1
            font.pixelSize: 12
        }

        ObjectButton {
            id: end
            x: 217
            y: 391
            width: 206
            height: 60
            displayText: "End Call / Thread"
            color: "#575048"
            colorPressed: "#eb9834"
            onPressed: {
                backend.end()
            }
        }



        ObjectButton {
            id: test_call
            x: 217
            y: 491
            width: 206
            height: 60
            displayText: "Test Call"
            color: "#575048"
            colorPressed: "#eb9834"
            onPressed: {
                backend.test_call()
            }
        }
        ObjectButton {
            id: answer
            x: 217
            y: 591
            width: 206
            height: 60
            displayText: "Answer"
            color: "#575048"
            colorPressed: "#eb9834"
            onPressed: {
                backend.login()
            }
        }
        ObjectButton {
            id: sound
            x: 217
            y: 661
            width: 206
            height: 60
            displayText: "Play sound"
            color: "#575048"
            colorPressed: "#eb9834"
            onPressed: {
                backend.sound()
            }
        }
    } */


    // MouseArea zum ausblenden des Cursors und einstellen von Vollbild
    MouseArea {

        anchors.fill: parent
        enabled: false
        //cursorShape: Qt.BlankCursor // Curso Ausblenden


        // Einstellungen für Vollbild
        property bool fullScreen: false

        focus: true // Tastenerkennung aktivieren
        Keys.onPressed: {
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
            if(event.key === Qt.Key_F10)
            {
                backend.close_application()
            }
        }

    }

}


