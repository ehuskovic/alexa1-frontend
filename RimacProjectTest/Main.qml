
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5


ApplicationWindow {
    visible: true
    width: 1900
    height: 1000
    title: qsTr("Hello")


    Page{
    id: "firstpage"
    Loader{
    source: "HomePage.qml"
    }
    visible: true
    }

    Page{
    id: "secondpage"
    Loader{
        source: "MediaPlayer.qml"
    }
    visible: false
    }

    Page{
    id: "thirdpage"
    Loader{
        source: "MapView.qml"
    }
    visible: false
    }


    Page{
    id: "fourthpage"
    Loader{
        source: "ClimateControlView.qml"
    }
    visible: false
    }

  footer: TabBar {
      id: tabBar

      TabButton {
          Image {
              id: tabImage1
              source: "Assets/home.png"
              anchors.centerIn: parent
              height: 40
              width: 40
          }
          background: Rectangle {
                      color: tabBar.currentIndex == 0 ? "#5cccf4" : "black"
                  }
          onClicked: {
                      firstpage.visible     = true
                      secondpage.visible   = false
                       thirdpage.visible = false
                      fourthpage.visible = false
                  }
           padding: 30
      }
      TabButton {
          Image {
              id: tabImage2
              source: "Assets/media.png"
              anchors.centerIn: parent
              height: 40
              width: 40
          }
          background: Rectangle {
                      color: tabBar.currentIndex == 1 ? "#5cccf4" : "black"
                  }
          onClicked: {
                      firstpage.visible     = false
                      secondpage.visible   = true
                       thirdpage.visible = false
                      fourthpage.visible = false
                  }
      }

      TabButton {
          Image {
              id: tabImage3
              source: "Assets/compas_icon.png"
              anchors.centerIn: parent
              height: 100
              width: 160
          }
          background: Rectangle {
                      color: tabBar.currentIndex == 2 ? "#5cccf4" : "black"
                  }
          onClicked: {
                      firstpage.visible     = false
                      secondpage.visible   = false
                      thirdpage.visible = true
                      fourthpage.visible = false
                  }
      }

      TabButton {
          Image {
              id: tabImage4
              source: "Assets/climate_Icon.png"
              anchors.centerIn: parent
              height: 100
              width: 190
          }
          background: Rectangle {
                      color: tabBar.currentIndex == 3 ? "#5cccf4" : "black"
                  }          onClicked: {
              firstpage.visible     = false
              secondpage.visible   = false
              thirdpage.visible = false
              fourthpage.visible = true
                  }
      }

      }

}


