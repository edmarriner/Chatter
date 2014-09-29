{Emitter} = require 'event-kit'

Chatter        	= require './chatter'

ConfigView      = require './components/config'
MessageView     = require './components/message'
PeopleView      = require './components/people'
RoomsView       = require './components/rooms'

module.exports =
	chatter: null


	# Constructor
	activate: (state) ->
		@emitter = new Emitter
		@chatter = new Chatter
		@registerCommands()

	# Deconstructor
	deactivate: ->
		@detach()

	serialize: ->

	registerCommands: ->
		atom.workspaceView.command "chatter:open", => @open()
		#atom.workspaceView.command "chatter:close", => @close()

	open: ->
		@emitter.emit 'open'
