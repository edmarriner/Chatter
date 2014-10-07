{ScrollView}    = require 'atom'

ConfigView      = require './components/config'
MessageView     = require './components/message'
PeopleView      = require './components/people'
RoomsView       = require './components/rooms'

module.exports =
class Chatter extends ScrollView

    pane = null

    initialize: ->

        atom.workspace.registerOpener (uriToOpen) ->
            try
                {protocol, host, pathname} = url.parse(uriToOpen)
            catch error
                return

            return unless protocol is 'chatter:'

            return new MessageView()


    open: ->

        atom.workspace.open('chatter:://message-view', searchAllPanes: true).done (messageView) ->
          if messageView instanceof MessageView
            atom.workspaceView.getActivePaneView()addItem(messageView)
            atom.workspace.activatePreviousPane()

        #@pane = atom.workspaceView.getActivePaneView().splitRight(this).getActiveView()
        #atom.workspaceView.getActivePaneView().splitRight(this)
        #@pane = atom.workspaceView.getActivePaneView()
        #$('.pane.active').css({ "width" : "290", "flex" : "none"})

    @content: ->
        @div class: "chatter", tabindex: -1, =>
