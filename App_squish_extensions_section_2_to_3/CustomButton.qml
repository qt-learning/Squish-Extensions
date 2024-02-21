import QtQuick

Item {
    id: root

    height: 50
    width: 100

    property string myText: ""
    property string baseColor: ""

    Rectangle {
        id: background

        anchors.fill: parent
        color: root.baseColor
        radius: 10
        border.color: "black"
        border.width: 1

        Text {
            anchors.centerIn: parent
            text: root.myText
        }

        MouseArea {
            id: myArea

            anchors.fill: parent
            hoverEnabled: true

            onClicked: (mouse) => {
                           console.log("Custom button clicked")
                       }

            onHoveredChanged: () => {
                                  if (myArea.containsMouse === true) {
                                      background.color = "lightgray"
                                  } else {
                                      background.color = root.baseColor
                                  }
                              }

            onPressed: (mouse) => {
                           if (myArea.pressed === true) {
                               background.color = "gray"
                           } else {
                               background.color = "lightgray"
                           }
                       }

            onReleased: (mouse) => {
                            if (myArea.pressed === true) {
                                background.color = "gray"
                            } else {
                                background.color = "lightgray"
                            }
                        }
        }
    }
}
