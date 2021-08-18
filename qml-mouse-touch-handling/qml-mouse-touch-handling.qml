import QtQuick 2.12
import QtQuick.Window 2.12

Rectangle{
    width: 400;height: 300;
    color: "lightblue"

    Text {
        id: text1
        text: qsTr("Press me")
        anchors.horizontalCenter: parent.horizontalCenter
        y: 40
        height: parent.height/2
        font.pixelSize: 48
        color: mouseArea.pressed ? "green" : "black"

        MouseArea {
            anchors.fill: parent
            id : mouseArea
        }
    }

    Text {
        id: text2
        text: qsTr("Click me")
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height / 2 + 40
        height: parent.height/2
        font.pixelSize: 48

        MouseArea{
            anchors.fill: parent
            onClicked: parent.font.bold = !parent.font.bold
        }
    }
}


