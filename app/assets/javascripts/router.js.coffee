App.Router.reopen
  rootURL: '/'
  location: 'auto'

App.Router.map ->
  @route 'customers', path: '/',
  @resource 'customers', path: '/customers', ->
    @resource 'customer', path: '/:id'

