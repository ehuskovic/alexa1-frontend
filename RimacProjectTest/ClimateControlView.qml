import QtQuick 2.0
import QtQuick.Controls 2.5

Page {

    Rectangle {
        id: rectangle
        width: 1900
        height: 500
        color: "#0f0f0f"
    }

    Rectangle {
        id: rectangle2
        x: 0
        y: 500
        width: 1900
        height: 500
        color: "#000000"

        AnimatedImage {
            id: animatedImage
            anchors.fill: parent
            source: "Assets/animatedClimate.gif"
            anchors.leftMargin: 166
            anchors.bottomMargin: 90
            anchors.topMargin: 18
            anchors.rightMargin: 1320

            Text {
                id: text1
                x: 96
                y: 113
                width: 118
                height: 70
                color: "#ffffff"
                text: "23°C"
                font.pixelSize: 90
                textFormat: Text.RichText
                minimumPixelSize: 19
                minimumPointSize: 18
                font.family: "Verdana"

            }

            Text {
                id: text2
                x: 1254
                y: 111
                width: 118
                height: 70
                color: "#ffffff"
                text: "19°C"
                font.pixelSize: 90
                minimumPointSize: 18
                minimumPixelSize: 19
                textFormat: Text.RichText
                font.family: "Verdana"

            }
        }

        Rectangle {
            id: rectangle3
            x: 828
            y: -97
            width: 200
            height: 200
            color: "#0f0f0f"
            rotation: 45
        }

        AnimatedImage {
            id: animatedImage1
            anchors.fill: parent
            source: "Assets/animatedClimate.gif"
            anchors.topMargin: 18
            anchors.leftMargin: 1330
            anchors.bottomMargin: 90
            anchors.rightMargin: 156
        }
    }

    Image {
        id: car
        x: 450
        y: -90
        source: "Assets/car.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: rimacLogo
        x: -162
        y: -70
        width: 464
        height: 205
        source: "Assets/rimacLogo.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: alexaLogo
        x: 700
        y: -70
        width: 464
        height: 205
        source: "Assets/AmazonAlexaLogo.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: wifion
        x: 1450
        y: -20
        width: 600
        height: 110
        source: "Assets/wifion.png"
        fillMode: Image.PreserveAspectFit
    }

    Item {
        Timer {
            interval: 10; running: true; repeat: true
            onTriggered: time.text = Qt.formatTime(new Date(),"hh:mm:ss")
        }

        Text {
            id: time
            color: "#fbfbfb"
            x: 1800
            y: 30
        }
    }
}


/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.5;height:480;width:640}
}
##^##*/
