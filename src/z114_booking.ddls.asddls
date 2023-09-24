@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data definition for Booking'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z114_Booking as select from /dmo/booking
{
    @UI.lineItem: [{ position: 10 }]
    key travel_id as TravelId,
    
    @UI.lineItem: [{ position: 20 }]
    key booking_id as BookingId,
    
    @UI.lineItem: [{ position: 30 }]
    booking_date as BookingDate,
    
    @UI.lineItem: [{ position: 40 }]
    customer_id as CustomerId,
    
    @UI.lineItem: [{ position: 50 }]
    carrier_id as CarrierId,
    
    @UI.lineItem: [{ position: 60 }]
    connection_id as ConnectionId,
    
    @UI.lineItem: [{ position: 70 }]
    flight_date as FlightDate,
    
    @UI.lineItem: [{ position: 80 }]
    @Semantics.amount.currencyCode: 'CurrencyCode'
    flight_price as FlightPrice,
    
    @UI.lineItem: [{ position: 90 }]
    currency_code as CurrencyCode
}
