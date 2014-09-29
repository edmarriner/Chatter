{ScrollView, EditorView} = require 'atom'

module.exports =
class ChatterView extends ScrollView

	pane = null

	@splitPane(): ->
		@pane = atom.workspaceView.getActivePaneView().splitRight(this).getActiveView()
		@pane.css({ "width" : "300" })


	@content: ->
		@div class: "chatter", tabindex: -1, =>
			@div class: "panel
				 sidebar", =>
				@div class: "panel-heading", =>
					@div class: 'block', =>
						@button outlet: "closeButton", class: 'btn btn-error inline-block-tight pull-right', "X"
				@div class: "panel-body padded", 'Chat stuff here...'
