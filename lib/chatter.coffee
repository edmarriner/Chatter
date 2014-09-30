{ScrollView}    = require 'atom'

ConfigView      = require './components/config'
MessageView     = require './components/message'
PeopleView      = require './components/people'
RoomsView       = require './components/rooms'

module.exports =
class Chatter extends ScrollView

    pane = null

    initialize: ->

    open: ->
        @pane = atom.workspaceView.getActivePaneView().splitRight(this).getActiveView()
        #atom.workspaceView.getActivePaneView().splitRight(this)
        #@pane = atom.workspaceView.getActivePaneView()
        #$('.pane.active').css({ "width" : "290", "flex" : "none"})

    @content: ->
        @div class: "chatter", tabindex: -1, =>
            @div class: "panel sidebar", =>
                @div class: "panel-heading", =>
                    @div class: 'block', =>
                        @button outlet: "closeButton", class: 'btn btn-error inline-block-tight pull-right', "X"
                @div class: "panel-body padded", 'Chat stuff here...'
