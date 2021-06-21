import QtQuick 2.12
import QtQuick.Window 2.12

//本地图片
Rectangle{
    width: 400
    height: 400
    color: "#00a3fc"
    Rectangle{
        color: "red"
        width: image.sourceSize.width
        height: image.sourceSize.height
        x: 150
        y: 150
        Image {
            id: image
            source: "../images/rocket.png"
//            scale: 2.0
            rotation: 45.0
//            transformOrigin: Item.TopLeft
        }
    }


}
