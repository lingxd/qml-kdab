import QtQuick 2.12
import QtQuick.Window 2.12

Item {
    visible: true
    width: 640
    height: 480

    Rectangle{
        x:100
        y:50
        height: 100
        width: height*2
        color: "lightblue"
    }

    Rectangle{
        x:100
        y:100
        z:-1
        height: 100
        width: height*2
        color: "green"
    }

}
