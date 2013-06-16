class BaconTracker.BaconController extends Batman.Controller
  routingKey: 'bacon'

  index: ->
    @set 'newBacon', new BaconTracker.Bacon
    BaconTracker.Bacon.load (err, bacons) =>
      @set 'bacons', BaconTracker.Bacon.get('loaded')

  createBacon: (bacon) ->
    bacon.save (err, bacon) =>
      if !err
        @set 'newBacon', new BaconTracker.Bacon
        BaconTracker.Bacon.get('loaded').add(bacon)

  destroyBacon: (bacon) ->
    bacon.destroy (err, bacon) =>
      if !err
        BaconTracker.Bacon.get('loaded').remove(bacon)