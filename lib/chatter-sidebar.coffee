{View} = require 'atom'

module.exports =
class ChatterView extends View
@content: ->
	@div class: 'chatter overlay from-top', =>
	@div "The Chatter package sidebar!", class: "message"

initialize: (serializeState) ->
	atom.workspaceView.command "chatter:sidebar", => @toggle()

# Returns an object that can be retrieved when package is activated
serialize: ->

# Tear down any state and detach
destroy: ->
	@detach()

toggle: ->
	console.log "AtomChatterView was toggled!"
	if @hasParent()
	@detach()
	else
	atom.workspaceView.append(this)
