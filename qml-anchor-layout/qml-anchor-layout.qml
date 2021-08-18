import QtQuick 2.12

//Rectangle{
//    id: background
//    width: 300
//    height: 100
//    color: "lightblue"

//    Rectangle{
//        color: "green"
//        y: 25 //overwritten by the top anchor
//        width: 50; height: 50
//        anchors{
//            top: background.top

//            left: background.left
//            right: background.right
//        }
//    }
//}

Rectangle{
    id: bg
    width: 400
    height: 200
    color: "lightblue"

    Rectangle{
        id: book
        width: 64
        height: 64
        anchors{
            left: bg.left
            leftMargin: bg.width/16
            verticalCenter: bg.verticalCenter
        }
    }

    Text {
        id: texts
        text: qsTr("Book")
        font.pixelSize: 32
        anchors{
            left: book.right
            leftMargin: 32
            baseline: book.verticalCenter
        }
    }
}
