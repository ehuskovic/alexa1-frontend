import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Window 2.14
import QtLocation 5.6
import QtPositioning 5.6

Page {


    Rectangle {
        id: rectangle
        y: -14
        width: 1900
        height: 1000
        color: "#0f0f0f"
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


    Rectangle{
        width: 800
        height: 600
        x: 200
        y: 220
        visible: true

        Plugin {
            id: hereplugin
            name: "here"
            PluginParameter { name: "here.app_id"; value: "URaUMsx6GK4uxp2XePlg" }
            PluginParameter { name: "here.token"; value: "9KMiBl8vvz1F1vp5GREhIw" }
        }

        PositionSource {
            id: positionSource
        }


        Map {
            anchors.fill: parent
            plugin: hereplugin
            center: QtPositioning.coordinate(45.81, 15.97)
            zoomLevel: 15
        }
    }

    Image{
        id: alexaImg
        anchors.centerIn: parent
        source: "Assets/Alexa.png"
        anchors.verticalCenterOffset: 580
        anchors.horizontalCenterOffset: 1468

        Text {
            id: alexaText2
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

        Text {
            id: alexaText
            y: 14
            width: 171
            height: -100
            color: "#fbfbfb"
            text: qsTr("Where do you want to travel?")
            anchors.verticalCenterOffset: -416
            anchors.horizontalCenterOffset: -96
            font.pointSize: 20
            style: Text.Normal
            font.family: "Verdana"
            anchors.centerIn: parent

        }

        MouseArea{
            x: 100
            y: 109
            width: 577
            anchors.fill: parent
            anchors.rightMargin: -1146
            anchors.bottomMargin: -220
            anchors.leftMargin: 1146
            anchors.topMargin: 220
            onClicked: {
                        console.log("Where do you want to travel?")
            }
        }
    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}
}
##^##*/
