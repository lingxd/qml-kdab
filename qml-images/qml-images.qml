import QtQuick 2.12
import QtQuick.Window 2.12

//网络图片
Image{
    id:image
    width: 1000
    height: 1000
    source: "https://camo.githubusercontent.com/cfc720e0c41ee5ba34c7cb680157572d530fd54fe9cc43901c3bf19b20e45d81/68747470733a2f2f692e6c6f6c692e6e65742f323032312f30332f31372f6e566651497938317a777036464e642e6a7067"
    fillMode: Image.PreserveAspectFit
    Rectangle{
        color: "red"
        x:0
        y:950
        height: 50
        width: 1000 * image.progress //1000 * 加载进度
        visible: image.progress != 1
    }

    onStateChanged: console.log(sourceSize)
}

//本地图片
//Rectangle{
//    width: 400
//    height: 400
//    color: "#00a3fc"
//    Image {
//        x: 150
//        y: 150
//        id: image
//        source: "../images/rocket.png"
//        width: image.sourceSize.width
//        height: image.sourceSize.height

//    }
//}
