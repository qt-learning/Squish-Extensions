import QtQuick 2.1
import com.froglogic.squish.qtquick 0.1

SquishHook {
    priority: 110
    // Prefer picking of CustomButton type (it's ignored by default because it does not draw anything by itself
    readonly property var whitelistedTypes: [ "CustomButton" ]

    // Extend object name to contain the text property
    readonly property var objectNameProperties: {
        "CustomButton": [ "myText", "baseColor"]
    }

    function isIgnored(item) {
        // Squish to notice all custom types
        if (isCustomQmlType(item)) {
            return false
        } // Ignore direct children in CustomButton type
        if ( item.parent && qmlType( item.parent ) == "CustomButton" ) {
            return true
        } // Ignore children of children in CustomButton type
        else if ( item.parent.parent && qmlType( item.parent.parent ) == "CustomButton" ) {
            return true
        }
        return unhandled
    }
}
