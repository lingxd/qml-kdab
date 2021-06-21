import QtQuick 2.12
import QtQuick.Window 2.12

Rectangle{
    id: root
    color: "white"
    width: 500
    height: 500

    Item {
        id: nameitem
        property int minSide_: Math.min(root.width, root.height)
        x: 10 + (root.width - minSide_)/2
        y: 10 + (root.height - minSide_)/2

        width: minSide_ - 20
        height: minSide_ - 20

        scale: Math.min(width / background.sourceSize.width,
                        height / background.sourceSize.height)

        transformOrigin: Item.TopLeft
        Image {
            id: background
            source: "../images/clock.png"
        }

        Rectangle {
            id: smallArm
            width: 30
            height: 600
            color: "blue"
            x: background.width/2 - width/2
            y: background.height/2 - 600

            transform: Rotation{
                origin.x: smallArm.width / 2
                origin.y: 600

                RotationAnimation on angle {
                    from: 0
                    to: 360 * 2
                    duration: 60000
                    loops: Animation.Infinite
                }
            }
        }

        Rectangle {
            id: largeArm
            width: 10
            height: 1000
            color: "blue"
            x: background.width/2 - width/2
            y: background.height/2 - 1000

            transform: Rotation{
                origin.x: largeArm.width / 2
                origin.y: 1000
                angle: 90

                RotationAnimation on angle {
                    from: 0
                    to: 360 * 24
                    duration: 60000
                    loops: Animation.Infinite
                }
            }
        }
    }
}
