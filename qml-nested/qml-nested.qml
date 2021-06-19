import QtQuick 2.9

Rectangle{
    id: root
    width: 400
    height: 400
    color: "gray"

    Rectangle{
        color: "lightblue"
        x:50
        y:50
        width: 300
        height: 150
        Rectangle{
            color: "white"
            x:50
            y:50
            width: 50
            height: 50
        }
    }

    Rectangle{
        color: "green"
        x:50
        y:200
        width: 300
        height: 150
        clip: true //将子元素在父元素之外的东西剪掉
        Rectangle{
            color: "blue"
            x:200
            y:50
            width: 150
            height: 50
        }
    }
}
