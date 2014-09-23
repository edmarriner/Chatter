{View, EditorView} = require 'atom'

module.exports =
class ChatterView extends View
	@content: ->
		@div class: "chatter", =>
			@div class: "panel bordered sidebar", =>
				@div class: "panel-heading", 'Chatter'
				@div class: "panel-body padded", 'Chat stuff here...'

	initialize: (serializeState) ->
		atom.workspaceView.command "chatter:sidebar", => @toggle()

	# Returns an object that can be retrieved when package is activated
	serialize: ->

	# Tear down any state and detac
	destroy: ->
		@detach()

	toggle: ->
		if @hasParent()
			@detach()
		else
			atom.workspaceView.append(this)
