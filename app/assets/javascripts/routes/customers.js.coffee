App.CustomersRoute = Ember.Route.extend

  model: -> @store.findAll 'customer'

