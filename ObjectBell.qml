import QtQuick 2.0

Item {
    id: element
    width: 500
    height: 500

    //property alias  animationRunnig: seqAnimation.animations.start()

    signal animationStart()
    onAnimationStart:
    {
        animationClapper.start()
        animationBell.start()
    }

    SmallObjectClapper {
        id: smallObjectClapper
        x: 198
        y: 219
        width: element.width * 0.15
        height: element.height / 2
        transformOrigin: Item.Top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: element.width * 0.05
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter

        SequentialAnimation {
            id: animationClapper

            RotationAnimation {
                target: smallObjectClapper
                from: 0
                to: -7
                duration: 70
            }

            RotationAnimation {
                target: smallObjectClapper
                from: -7
                to: 15
                duration: 220
            }

            SequentialAnimation{

                RotationAnimation {
                    target: smallObjectClapper
                    from: 15
                    to: -15
                    duration: 300
                }

                RotationAnimation {
                    target: smallObjectClapper
                    from: -15
                    to: 15
                    duration: 300
                }
                loops: 2
            }

            RotationAnimation {
                target: smallObjectClapper
                from: 15
                to: -7
                duration: 220
            }

            RotationAnimation {
                target: smallObjectClapper
                from: -7
                to: 0
                duration: 70
            }


        }
    }

    SmallObjectBell {
        id: smallObjectBell
        x: 53
        y: 33
        width: element.width * 0.75
        height: width
        transformOrigin: Item.Top
        anchors.bottom: smallObjectClapper.top
        anchors.bottomMargin: (height / 2) * (-1)
        anchors.horizontalCenter: parent.horizontalCenter

        SequentialAnimation {
            id: animationBell

            RotationAnimation {
                target: smallObjectBell
                from: 0
                to: 7
                duration: 70
            }

            RotationAnimation {
                target: smallObjectBell
                from: 5
                to: -10
                duration: 220
            }

            SequentialAnimation {

                RotationAnimation {
                    target: smallObjectBell
                    from: -10
                    to: 10
                    duration: 220
                }

                RotationAnimation {
                    target: smallObjectBell
                    from: 10
                    to: -10
                    duration: 220
                }
                loops: 2
            }

            RotationAnimation {
                target: smallObjectBell
                from: -10
                to: 5
                duration: 220
            }

            RotationAnimation {
                target: smallObjectBell
                from: 5
                to: 0
                duration: 70
            }

        }

    }

}

/*##^##
Designer {
    D{i:1;anchors_height:300;anchors_width:300;anchors_x:100;anchors_y:160}
}
##^##*/
