ChatterView = require './chatter-sidebar'

module.exports =
    chatterView: null

    activate: (state) ->
        @chatterView = new ChatterView(state.chatterViewState)
        ###
            TODO:   Need to pull the wrapper logic out from the other parts of the application
                    Required views:
                        - Wrapper/Parent
                        - Channels
                        - Chat view
                        - Chat response box
                        - Popup notification?
                        - Config view
        ###
        atom.workspaceView.command "chatter:sidebar", => @chatterView.toggle()

    deactivate: ->
        @chatterView.destroy()

    serialize: ->
        chatterViewState: @chatterView.serialize()
