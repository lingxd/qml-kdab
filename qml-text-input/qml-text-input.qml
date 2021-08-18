import QtQuick 2.12
import QtQuick.Window 2.12

Rectangle {
    width: 200; height: 112
    color: "lightblue"

    TextInput {
        anchors.left: parent.left; y: 16
        anchors.right: parent.right
        text: "Field 1"
        font.pixelSize: 32
        color: activeFocus ? "black" : "gray"
        focus: true
        activeFocusOnTab: true
    }

    TextInput {
        anchors.left: parent.left; y: 64
        anchors.right: parent.right
        text: "Field 2"
        font.pixelSize: 32
        color: activeFocus ? "black" : "gray"
//        focus: true
        activeFocusOnTab: true
    }
}
