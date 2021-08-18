import QtQuick 2.12
import QtQuick.Window 2.12

Item {
    id: name
    width: 300
    height: 200
    Rectangle{
        x: 0; y: 0; width: 100; height: 100; color: "#ff0000"
    }
    Rectangle{
        x:100; y: 0; width: 100; height: 100
        color: Qt.rgba(0,0.75,0,1)
    }
    Rectangle{
        x: 200; y: 0; width: 100; height: 100; color: "blue"
    }

    Rectangle{//渐变色
        rotation: -0
        x: 0; y: 100; width: 100; height: 100
        gradient: Gradient {
            GradientStop{
                position: 0.0;color: "red"
            }
            GradientStop{
                position: 0.5;color: "green"
            }
            GradientStop{
                position: 1.0;color: "blue"
            }
        }
    }
}
