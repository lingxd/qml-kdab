import QtQuick 2.0

Item {
    width: 680; height: 240

    Rectangle{
        id: focusBox
        anchors{
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: 20
        }
        color: "green"
        width: 200; height: 200
        Text {
            id: text1
            text: qsTr("Observe my color")
            anchors.centerIn: parent
        }
    }

    Rectangle {
        anchors.centerIn: parent
        width: 200; height: 200
        color: "yellow"
        MouseArea {
            id: focusArea
            anchors.fill: parent
            hoverEnabled: true
            onHoveredChanged: focusBox.color = "cyan"
        }
        Text {
            id: text2
            text: qsTr("Move\ninto me")
            anchors.centerIn: parent
        }
    }

    Rectangle {
        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: 20
        }

        width: 200; height: 200
        color: "black"
        MouseArea {
            id: clickArea
            anchors.fill: parent
            onClicked: focusBox.color = "blue"
        }
        Text {
            id: text3
            text: qsTr("Click\ninto me")
            anchors.centerIn: parent
            color: "white"
        }
    }
}
