ChatterView = require './chatter-sidebar'

module.exports =
    chatterView: null

    activate: (state) ->
        @chatterView = new ChatterView(state.chatterViewState)
        atom.workspaceView.command "chatter:sidebar", => @chatterView.toggle()

    deactivate: ->
        @chatterView.destroy()

    serialize: ->
        chatterViewState: @chatterView.serialize()
