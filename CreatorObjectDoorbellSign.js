var component;
var sprite;

function create(y, height, name, sip) {
    component = Qt.createComponent("ObjectDoorbellSign.qml");

    if(Component.Ready === component.status)
    {
        finish(y, height, name, sip);
    }else
    {
        component.statusChanged.connect(finish);
    }
}

function finish(y, height, name, sip) {
    if (component.status === Component.Ready) {
        sprite = component.createObject(pageMain, {x: 20, y: y, height: height, nameText: name, sip_addresse: sip, width: 560});
        if (sprite === null) {
            // Error Handling
            console.log("Error creating object");
        }
    } else if (component.status === Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }

}
