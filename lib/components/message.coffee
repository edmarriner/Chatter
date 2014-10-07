{View} = require 'atom'

module.exports =
class MessageView extends View

	initialize: ->


	@content: ->
		@div class: "chatter", tabindex: -1, =>
			@div class: "panel sidebar", =>
				@div class: "panel-heading", =>
					@div class: 'block', =>
						@button class: 'btn btn-error inline-block-tight pull-right', "X"
				@div class: "panel-body padded", 'Chat stuff here...'

	#atom.workspaceView.append(this)
