import QtQuick 2.12
import QtQuick.Window 2.12

Image{
    id:image
    width: 1000
    height: 1000
    source: "./images/rocket.png"
    fillMode: Image.PreserveAspectFit
    Rectangle{
        color: "red"
        x:0
        y:950
        width: 1000* image.progress
        visible: image.progress != 1
    }

    onStateChanged: console.log(sourceSize)
}

//Rectangle{
//    width: 400
//    height: 400
//    color: "#00a3fc"
//    Image {
//        x: 150
//        y: 150
//        id: image
//        source: "./images/rocket.png"
//        width: image.sourceSize.width
//        height: image.sourceSize.height

//    }
//}
