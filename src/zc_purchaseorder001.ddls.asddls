@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZPOReport', 
  Semantickey: [ 'Purchaseorderid' ]
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_PURCHASEORDER001
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_PURCHASEORDER001
  association [1..1] to ZR_PURCHASEORDER001 as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  PurchaseOrderID,
  OrderDate,
  SupplierName,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _OrderItem : redirected to composition child ZC_ORDERITEM,
  _Delivery : redirected to composition child ZC_DELIVERY,
  _BaseEntity
}
