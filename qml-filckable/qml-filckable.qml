import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 400; height: 400
    Flickable {
        id: filck
        width: 400; height: 400
        contentWidth: 1000
        contentHeight: 1000

        Image {
            width: parent.contentWidth
            height: parent.contentHeight
            source: "../images/background/824696.jpg"
        }
    }

}
