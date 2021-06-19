import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 300
    height: 115

    TextInput{
        id: textElement
        x:50;y:25
        text: "Hokori"
        font.family: "Helvetica"
        font.pixelSize: 50
    }

    Rectangle{
        x: 50;y:85;height: 5
        width: textElement.width
        color: "red"
    }
}
