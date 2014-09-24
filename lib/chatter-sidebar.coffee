{ScrollView, EditorView} = require 'atom'

module.exports =
class ChatterView extends ScrollView
	@content: ->
		@div class: "chatter ", tabindex: -1, =>
			@div class: "panel bordered sidebar", =>
				@div class: "panel-heading", =>
					@div class: 'block', =>
						@button outlet: "closeButton", class: 'btn btn-error inline-block-tight pull-right', "X"
				@div class: "panel-body padded", 'Chat stuff here...'

	initialize: (serializeState) ->
		atom.workspaceView.command "chatter:sidebar", => @toggle()

		# Setup all the event listeners
		@setUpEvents()

	# Returns an object that can be retrieved when package is activated
	serialize: ->
		return

	# Tear down any state and detach
	destroy: ->
		@tearDownEvents()
		@detach()

	setUpEvents: ->
		# Close the sidebar
		@closeButton.on 'click', => @close()

	tearDownEvents: ->
		@closeButton.off 'click'

	close: ->
		@detach()

	toggle: ->
		if @hasParent()
			@detach()
		else
			atom.workspaceView.append(this)
