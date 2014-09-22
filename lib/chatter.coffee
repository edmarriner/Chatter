ChatterView = require './chatter-sidebar'

module.exports =
    chatterView: null

    activate: (state) ->
      @chatterView = new ChatterView(state.chatterViewState)

    deactivate: ->
      @chatterView.destroy()

    serialize: ->
      chatterViewState: @chatterView.serialize()
