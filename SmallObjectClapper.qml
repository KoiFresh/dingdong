import QtQuick 2.0

Item {
    id: element
    width: 150
    height: 300
    transformOrigin: Item.Top

    Rectangle {
        id: stick
        color: "#ffffff"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: element.height * 0.25
        anchors.left: parent.left
        anchors.leftMargin: element.width / 4
        anchors.right: parent.right
        anchors.rightMargin: element.width / 4
        anchors.top: parent.top
        anchors.topMargin: 8
    }

    Rectangle {
        id: ball
        height: width
        color: "#ffffff"
        radius: width / 2
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
    }

}

/*##^##
Designer {
    D{i:1;anchors_height:231;anchors_width:70;anchors_x:40;anchors_y:8}D{i:2;anchors_height:150;anchors_width:150;anchors_x:0;anchors_y:131}
}
##^##*/
