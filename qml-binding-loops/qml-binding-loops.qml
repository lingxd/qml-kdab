import QtQuick 2.12
import QtQuick.Window 2.12

Rectangle{
    color: "black"
//    width: child.width
//    height: child.height
    implicitWidth: child.implicitWidth
    implicitHeight: child.implicitHeight

    Rectangle{
        id: child
        anchors.fill: parent
        anchors.margins: 5
    }
}
