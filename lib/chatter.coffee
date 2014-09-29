{ScrollView, EditorView} = require 'atom'

module.exports =
class Chatter extends ScrollView

    pane = null

    @open: ->
        @pane = atom.workspaceView.getActivePaneView().splitRight(this).getActiveView()
        @pane.css({ "width" : "300" })
        alert("Made-it")

    @close: ->



    @content: ->
        @div class: "chatter", tabindex: -1, =>
            @div class: "panel
                 sidebar", =>
                @div class: "panel-heading", =>
                    @div class: 'block', =>
                        @button outlet: "closeButton", class: 'btn btn-error inline-block-tight pull-right', "X"
                @div class: "panel-body padded", 'Chat stuff here...'
