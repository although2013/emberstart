App.Customer = DS.Model.extend
  contactName:    DS.attr 'string'
  companyName:    DS.attr 'string'
  customerID:     DS.attr 'string'
  contactTitle:   DS.attr 'string'
  address:        DS.attr 'string'
  region:         DS.attr 'string'
  city:           DS.attr 'string'
  postalCode:     DS.attr 'string'
  country:        DS.attr 'string'
  phone:          DS.attr 'string'
  fax:            DS.attr 'string'

  abstract: ( ->
    @get('contactName') + ': ' + @get('contactTitle')
  ).property('contactName', 'contactTitle')

