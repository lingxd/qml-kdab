import QtQuick 2.12
import QtQuick.Window 2.12

Flickable {
    id: flick
    width: 400; height: 400
    contentWidth: 2000; contentHeight: 2000

    PinchArea {
        anchors.fill: parent
        pinch.target: img
        pinch.maximumScale: 1.0
        pinch.minimumScale: 0.1
        pinch.dragAxis: Pinch.XAndYAxis
    }

    Image {
        id: img
        source: "../images/background/v2-54956990c84ff2a726e224774239df89_720w.jpg"
//        width: flick.contentWidth
//        height: flick.contentHeight
    }
}
