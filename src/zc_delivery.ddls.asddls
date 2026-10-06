@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Semantickey: [ 'Deliveryid' ]
}
@AccessControl.authorizationCheck: #MANDATORY
define view entity ZC_DELIVERY
  as projection on ZR_DELIVERY
  association [1..1] to ZR_DELIVERY as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  ParentUUID,
  DeliveryID,
  DeliveryDate,
  DeliveryStatus,
  _PurchaseOrder : redirected to parent ZC_PURCHASEORDER001,
  _BaseEntity
}
