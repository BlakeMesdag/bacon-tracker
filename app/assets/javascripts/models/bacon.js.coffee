class BaconTracker.Bacon extends Batman.Model
  @resourceName: 'bacon'
  @persist Batman.RailsStorage

  @encode 'name', 'quantity'