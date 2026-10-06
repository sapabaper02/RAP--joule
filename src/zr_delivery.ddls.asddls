@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@ObjectModel.semanticKey: [ 'Deliveryid' ]
define view entity ZR_DELIVERY
  as select from ZDELIVERY as Delivery
  association to parent ZR_PURCHASEORDER001 as _PurchaseOrder on $projection.ParentUuid = _PurchaseOrder.Uuid
{
  key uuid as UUID,
  parent_uuid as ParentUUID,
  delivery_id as DeliveryID,
  delivery_date as DeliveryDate,
  delivery_status as DeliveryStatus,
  _PurchaseOrder
}
