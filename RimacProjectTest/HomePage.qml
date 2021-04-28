import QtQuick 2.0
import QtQuick.Controls 2.5

Page {
    id: page

    Image {
        id: background
        width: parent.width
        height: parent.height
        source: "Assets/Background.png"

        Image{
            id: alexaImg
            anchors.centerIn: parent
            source: "Assets/Alexa.png"

            Text {
                id: alexaText
                width: 171
                height: 29
                color: "#fbfbfb"
                text: qsTr("Talk to Alexa")
                anchors.verticalCenterOffset: 1
                anchors.horizontalCenterOffset: 1
                font.pointSize: 20
                style: Text.Normal
                font.family: "Verdana"
                anchors.centerIn: parent

            }

            MouseArea{
                anchors.fill: parent
                        onClicked: {
                            console.log("Alexa Button is clicked.")
                }
            }
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
}





/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.9;height:480;width:640}
}
##^##*/
