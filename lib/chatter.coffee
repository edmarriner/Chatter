ConfigView      = require './components/config'
MessageView     = require './components/message'
PeopleView      = require './components/people'
RoomsView       = require './components/rooms'
MainView        = require './components/main'

module.exports =
    main: null

    # Constructor
    activate: (state) ->
        atom.workspaceView.command "chatter:open", => @open()

    # Deconstructor
    deactivate: ->
        @detach()

    serialize: ->

    open: ->
        if(!@main) {
            @main = new MainView()
        }
