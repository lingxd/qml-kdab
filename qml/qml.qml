import QtQuick 2.12
import QtQuick.Window 2.12

Window {


    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 215
        y: 112
        width: 200
        height: 200
        color: "#ffffff"
        radius: 100
        border.color: "#a41717"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 168
    }

    Flow {
        id: flow1
        x: 88
        y: 47
        width: 400
        height: 400
    }

    Column {
        id: column
        x: 152
        y: 47
        width: 200
        height: 400
    }

    TextInput {
        id: textInput
        x: 43
        y: 162
        width: 80
        height: 20
        text: qsTr("Text Input")
        font.pixelSize: 12

        FocusScope {
            id: focusScope
            x: 43
            y: 19
            width: 100
            height: 100
        }
    }

    MouseArea {
        id: mouseArea
        x: 508
        y: 212
        width: 100
        height: 100
    }

    Item {
        id: item1
        x: 188
        y: 87
        width: 200
        height: 200
    }

    AnimatedImage {
        id: animatedImage
        x: 43
        y: 112
        width: 100
        height: 100
        source: "qrc:/qtquickplugin/images/template_image.png"
    }

    PathView {
        id: pathView
        x: 51
        y: 279
        width: 250
        height: 130
        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
        delegate: Column {
            spacing: 5
            Rectangle {
                width: 40
                height: 40
                color: colorCode
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                x: 5
                text: name
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
            }
        }
        path: Path {
            startX: 120
            PathQuad {
                x: 120
                y: 25
                controlX: 260
                controlY: 75
            }

            PathQuad {
                x: 120
                y: 100
                controlX: -20
                controlY: 75
            }
            startY: 100
        }
    }
}
