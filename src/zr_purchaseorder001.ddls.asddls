@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZPOReport'
@EndUserText.label: '###GENERATED Core Data Service Entity'
@ObjectModel.semanticKey: [ 'Purchaseorderid' ]
define root view entity ZR_PURCHASEORDER001
  as select from ZPRCHASEORDER001 as PurchaseOrder
  composition [1..*] of ZR_ORDERITEM as _OrderItem
  composition [1..*] of ZR_DELIVERY as _Delivery
{
  key uuid as UUID,
  purchase_order_id as PurchaseOrderID,
  order_date as OrderDate,
  supplier_name as SupplierName,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  _OrderItem,
  _Delivery
}
