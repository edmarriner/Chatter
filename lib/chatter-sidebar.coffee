{View} = require 'atom'

module.exports =
class ChatterView extends View
	@content: ->
		@div class: 'chatter overlay from-top tool-panel panel-bottom padded', =>
			@div class: 'inset-panel', =>
		    	@div class: 'panel-heading', 'My list-group with icons'
		    	@div class: 'panel-body padded', =>
		    		@ul class: 'list-group', =>
		        		@li class: 'list-item', =>
		        			@span class: 'icon icon-file-text', 'With icon-file-text'
		        		@li class: 'list-item', =>
		        			@span class: 'icon icon-file-media', 'With icon-file-media'
		        		@li class: 'list-item', =>
		        			@span class: 'icon icon-book', 'With icon-book'

	initialize: (serializeState) ->
		atom.workspaceView.command "chatter:sidebar", => @toggle()

	# Returns an object that can be retrieved when package is activated
	serialize: ->

	# Tear down any state and detach
	destroy: ->
		@detach()

	toggle: ->
		if @hasParent()
			@detach()
		else
			atom.workspaceView.append(this)
