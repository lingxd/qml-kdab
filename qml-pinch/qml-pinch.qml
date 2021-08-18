import QtQuick 2.12
import QtQuick.Window 2.12

Flickable {
    id: flick
    width: 400; height: 400
    contentWidth: 1000; contentHeight: 1000

    PinchArea {
        width: Math.max(flick.contentWidth, flick.width)
        height: Math.max(flick.contentHeight, flick.height)

        property real initialWidth
        property real initialHeight

        onPinchStarted: {
            initialWidth = flick.contentWidth
            initialHeight = flick.contentHeight
        }

        onPinchUpdated: flick.resizeContent(initialWidth*pinch.scale,initialHeight*pinch.scale,pinch.center)
        onPinchFinished: flick.returnToBounds()

        Image {
            id: img
            source: "../images/background/84074877_p0.jpg"
//            width: flick.contentWidth; height: flick.contentHeight
        }
    }
}
