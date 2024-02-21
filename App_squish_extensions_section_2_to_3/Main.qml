import QtQuick
import QtQuick.Window
import QtQuick.Controls.Fusion

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Extension example")

    Row {
        anchors.centerIn: parent
        spacing: 10

        Button {
            id: myButton

            height: 50
            width: 100
            text: "Click me!"

            onClicked: () => {
                console.log("Standard button clicked")
            }
        }

        ComboBox {
            id: myComboBox

            height: 50
            model: ListModel {
                ListElement {value: "0"}
                ListElement {value: "1"}
                ListElement {value: "2"}
                ListElement {value: "3"}
                ListElement {value: "4"}
                ListElement {value: "5"}
            }
        }

        CustomButton {
            id: myCustomButton

            myText: "Custom button"
            baseColor: "lightblue"
        }
    }
}
