@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data definition for travel'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity Z114_Travel
  as select from /dmo/travel
  association [1] to Z114_Agency   as _Agency   on $projection.AgencyId = _Agency.AgencyId
  association [1] to Z114_Customer as _Customer on $projection.CustomerId = _Customer.CustomerId
  association[1..*] to Z114_Booking as _Booking on $projection.TravelId = _Booking.TravelId
{
  key travel_id              as TravelId,
  
      @ObjectModel.text.element: [ 'AgencyName' ]
      @UI.textArrangement: #TEXT_FIRST
      agency_id              as AgencyId,
      _Agency.AgencyName     as AgencyName,
      
      @ObjectModel.text.element: [ 'CustomerName' ]
      @UI.textArrangement: #TEXT_FIRST
      customer_id            as CustomerId,
      _Customer.CustomerName as CustomerName,
      begin_date             as BeginDate,
      end_date               as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee            as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price            as TotalPrice,
      currency_code          as CurrencyCode,
      description            as Description,
      status                 as Status,
      createdby              as Createdby,
      createdat              as Createdat,
      lastchangedby          as Lastchangedby,
      lastchangedat          as Lastchangedat,
      
      //Associations
      _Booking
}
