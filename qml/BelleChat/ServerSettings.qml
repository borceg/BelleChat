// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.nokia.symbian 1.1
import BelleChat 1.0
import "HelpText.js" as HelpText

Page {
    id: window


    tools: ToolBarLayout {
        id: settingsToolBarLayout

        ToolButton {
            flat: true
            iconSource: "toolbar-back"
            onClicked: {
                saveSettings()
                pageStack.pop()
            }
        }
        ToolButton {
            id: helpButton
            flat: true
            iconSource: "toolbar-menu"
            onClicked: {
                var helpPage = infoPageFactory.createObject(initialPage)
                helpPage.text = HelpText.serverHelp
                pageStack.push(helpPage)
            }
        }
    }



    ListHeading {
        id: heading
        anchors {left: parent.left; right: parent.right}
        ListItemText {
            id: headingText
            anchors.fill: heading.paddingItem
            role: "Heading"
            text: qsTr("Server Settings")
        }
    }

    ScrollDecorator {
        id: flickerScroll
        flickableItem: flicker
    }

    Flickable {
        id: flicker
        anchors {top: heading.bottom; left: parent.left; right: parent.right; bottom: parent.bottom}
        clip: true
        contentHeight: layoutColumns.height


        Column {
            id: layoutColumns
            anchors { left: parent.left; right: parent.right }

            Label {
                id: serverLabel
                text: qsTr("Server")
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                //visible: serverField.visible
            }

            TextField {
                id: serverField
                text: appConnectionSettings.host
                inputMethodHints: Qt.ImhNoAutoUppercase || Qt.ImhUrlCharactersOnly
                anchors.right: parent.right
                anchors.rightMargin: platformStyle.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                //visible: (activeFocus||!inputContext.visible)
            }

            Label {
                id: portLabel
                text: qsTr("Port")
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                //visible: portField.visible
            }

            Row {
                id: portSSLrow
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                anchors.right: parent.right
                anchors.rightMargin: platformStyle.paddingLarge


                TextField {
                    id: portField
                    text: appConnectionSettings.port
                    inputMethodHints: Qt.ImhDigitsOnly
                    width: parent.width - sslCheckBox.width
                    validator: IntValidator {bottom: 0; top: 65535;}
                    //visible: (activeFocus||!inputContext.visible)
                }

                CheckBox {
                    id: sslCheckBox
                    text: qsTr("SSL")
                    checked: appConnectionSettings.secure
                    anchors.rightMargin: platformStyle.paddingLarge
                }
            }

            Label {
                id: nicknameLabel
                text: qsTr("Nickname")
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                //visible: nicknameField.visible
            }

            TextField {
                id: nicknameField
                inputMethodHints: Qt.ImhNoAutoUppercase
                text: appConnectionSettings.nickname
                anchors.right: parent.right
                anchors.rightMargin: platformStyle.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                //visible: (activeFocus||!inputContext.visible)
            }

            Label {
                id: passwordLabel
                text: qsTr("Password")
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                //visible: passwordField.visible
            }

            TextField {
                id: passwordField
                inputMethodHints: Qt.ImhNoAutoUppercase
                text: appConnectionSettings.password
                anchors.right: parent.right
                anchors.rightMargin: platformStyle.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                echoMode: TextInput.PasswordEchoOnEdit
                //visible: (activeFocus||!inputContext.visible)
            }

            Label {
                id: usernameLabel
                text: qsTr("Username")
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                //visible: usernameField.visible
            }

            TextField {
                id: usernameField
                text: appConnectionSettings.username
                inputMethodHints: Qt.ImhNoAutoUppercase
                anchors.right: parent.right
                anchors.rightMargin: platformStyle.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                //visible: (activeFocus||!inputContext.visible)
            }

            Label {
                id: realnameLabel
                text: qsTr("Real name")
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                //visible: realnameField.visible
            }

            TextField {
                id: realnameField
                text: appConnectionSettings.realname
                inputMethodHints: Qt.ImhNoAutoUppercase
                anchors.right: parent.right
                anchors.rightMargin: platformStyle.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                //visible: (activeFocus||!inputContext.visible)
            }

            LabelledSwitch {
                id: autoJoinChannelsSwitch
                text: qsTr("Join channels on connection")
                checked: appConnectionSettings.autoJoinChannels
            }

            Label {
                id: autoJoinChanListLabel
                text: qsTr("Channels to join\n Format: channel [key], channel [key], ...")
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                visible: autoJoinChannelsSwitch.checked
            }

            TextField {
                id: autoJoinChanListField
                text: appConnectionSettings.autoJoinChanList
                visible: autoJoinChannelsSwitch.checked
                anchors.right: parent.right
                anchors.rightMargin: platformStyle.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                echoMode: TextInput.PasswordEchoOnEdit
                //visible: (activeFocus||!inputContext.visible)
            }

            LabelledSwitch {
                id: sendNsPasswordSwitch
                text: qsTr("Send NickServ Password")
                checked: appConnectionSettings.sendNsPassword
            }

            LabelledSwitch {
                id: nsPWIsServerPWSwitch
                visible: sendNsPasswordSwitch.checked
                text: qsTr("NickServ pw same as server")
                checked: appConnectionSettings.nsPWIsServerPW
            }

            Label {
                id: nsPasswordLabel
                text: qsTr("NickServ password")
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                visible: (sendNsPasswordSwitch.checked && !nsPWIsServerPWSwitch.checked)
            }

            TextField {
                id: nsPasswordField
                text: appConnectionSettings.nsPassword
                visible: (sendNsPasswordSwitch.checked && !nsPWIsServerPWSwitch.checked)
                anchors.right: parent.right
                anchors.rightMargin: platformStyle.paddingLarge
                anchors.left: parent.left
                anchors.leftMargin: platformStyle.paddingLarge
                inputMethodHints: Qt.ImhNoAutoUppercase
                echoMode: TextInput.PasswordEchoOnEdit
                //visible: (activeFocus||!inputContext.visible)
            }

        }

        // Virtual keyboard handling, written by Akos Polster

        Timer {
            id: adjuster
            interval: 200
            onTriggered: flicker.adjust()
        }

        Component.onCompleted:
        {
            inputContext.visibleChanged.connect(adjuster.restart)
        }

        function adjust() {
            if (!inputContext.visible) {
                return
            }

            var focusChild = null
            function findFocusChild(p) {
                if (p["activeFocus"] === true) {
                    focusChild = p
                } else {
                    for (var i = 0; i < p["children"].length; i++) {
                        findFocusChild(p["children"][i])
                        if (focusChild !== null) {
                            break
                        }
                    }
                }
            }
            findFocusChild(flicker)

            if (focusChild === null) {
                return
            }
            var focusChildY = focusChild["y"]
            var focusChildHeight = focusChild["height"]
            if ((flicker.contentY + flicker.height) < (focusChildY + focusChildHeight)) {
                flicker.contentY = focusChildY + focusChildHeight - flicker.height
            }
        }

    }

    QueryDialog {
        id: connectedQuery
        titleText: qsTr("Connected to server")
        message: qsTr("Settings changes will not apply until the next time you connect.\n")
        acceptButtonText: qsTr("Ok")
    }

    function saveSettings()
    {
        var dirty = false

        // Save the settings if they've changed
        if (serverField.text !== appConnectionSettings.host)
        {
            //console.log("Server changed!")
            appConnectionSettings.setHost(serverField.text)
            dirty = true
        }
        if (portField.text !== appConnectionSettings.port.toString())
        {
            //console.log("Port changed!")
            appConnectionSettings.setPort(portField.text)
            dirty = true
        }
        if (sslCheckBox.checked !== appConnectionSettings.secure)
        {
            appConnectionSettings.setSecure(sslCheckBox.checked)
            dirty = true
        }

        if (nicknameField.text !== appConnectionSettings.nickname)
        {
            //console.log("Nickname changed!")
            appConnectionSettings.setNickname(nicknameField.text)
            dirty = true
        }
        if (usernameField.text !== appConnectionSettings.username)
        {
            //console.log("Username changed!")
            appConnectionSettings.setUsername(usernameField.text)
            dirty = true
        }
        if (passwordField.text !== appConnectionSettings.password)
        {
            //console.log("Password changed!")
            appConnectionSettings.setPassword(passwordField.text)
            dirty = true
        }
        if (realnameField.text !== appConnectionSettings.realname)
        {
            //onsole.log("Realname changed!")
            appConnectionSettings.setRealname(realnameField.text)
            dirty = true
        }

        if (autoJoinChannelsSwitch.checked !== appConnectionSettings.autoJoinChannels)
        {

            appConnectionSettings.setAutoJoinChannels(autoJoinChannelsSwitch.checked)
            dirty = true
        }


        if(autoJoinChanListField.text !== appConnectionSettings.autoJoinChanList)
        {
            appConnectionSettings.setAutoJoinChanList(autoJoinChanListField.text)
            dirty = true
        }

        if (sendNsPasswordSwitch.checked !== appConnectionSettings.sendNsPassword)
        {

            appConnectionSettings.setSendNsPassword(sendNsPasswordSwitch.checked)
            dirty = true
        }

        if (nsPWIsServerPWSwitch.checked !== appConnectionSettings.nsPWIsServerPW)
        {

            appConnectionSettings.setNsPWIsServerPW(nsPWIsServerPWSwitch.checked)
            dirty = true
        }

        if(nsPasswordField.text !== appConnectionSettings.nsPassword)
        {
            appConnectionSettings.setNsPassword(nsPasswordField.text)
            dirty = true
        }


        // If settings have changed and we're connected, show a warning
        // dialog
        //console.log("Dirty:" + dirty)
        if (dirty && Session.connected)
            connectedQuery.open()
    }
}
