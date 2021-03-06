import QtQuick 2.0
import "CreatorObjectDoorbellSign.js" as Sign


Item {
    width: 600
    height: 1024
    id: pageMain

    // rangfolge der Werte: y, name, strasse, höhe, sip

    Component.onCompleted :
    {
        var startpoint = 20;
        for(var i = 0; i < backend.name.length; i++)
        {
            Sign.create(startpoint,backend.name[i],backend.strasse[i],backend.height[i], "100");
            startpoint = startpoint + (backend.height[i] * 1) + 20;
        }
    }

    Rectangle {
        id: background
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#000000"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }
        }
        anchors.fill: parent
    }

  /* ObjectDoorbellSign {
        id: fam1
        x: 20
        y: 20
        width: 560
        height: 250
        nameText: "Familie Mayer"
        sip_addresse: "100"
    } */
/*
    ObjectDoorbellSign {
        id: fam2
        x: 20
        y: fam1.x + fam1.height + fam1.x
        width: 560
        height: fam1.height
        nameText: "Familie Schoch"
        nameStrasse: "123"
        sip_addresse: "100"
    } */

}


