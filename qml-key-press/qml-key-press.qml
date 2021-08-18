import QtQuick 2.12
import QtQuick.Window 2.12

Rectangle {
    width: 400; height: 400; color: "blue"
    focus: true

    Image {
        id: rocket
        source: "../images/rocket.svg"
        anchors.centerIn: parent
    }

    Keys.onLeftPressed:
        rocket.rotation = (rocket.rotation - 10) % 360

    Keys.onRightPressed:
        rocket.rotation = (rocket.rotation + 10) % 360
}
