Chatter        	= require './chatter'

module.exports =
	chatter: null

	# Constructor
	activate: (state) ->
		@chatter = new Chatter()

		atom.workspaceView.command "chatter:open", =>
			@chatter.open()

		atom.workspaceView.command "chatter:close", =>
			@chatter.close()

	# Deconstructor
	deactivate: ->
		@detach()

	serialize: ->
