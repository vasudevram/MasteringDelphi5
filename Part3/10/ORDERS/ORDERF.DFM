�
 TORDERSFORM 0;  TPF0TOrdersForm
OrdersFormLeft� Top� Width�Height�ActiveControlPanel1Caption Orders (with three data sources)
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style PositionpoScreenCenterPixelsPerInch`
TextHeight TPanelPanel1Left Top Width�Height#AlignalTopTabOrder  TDBNavigatorDBNavigatorLeftTopWidthhHeight
DataSourceDataSource1VisibleButtonsnbFirstnbPriornbNextnbLast FlatCtl3DParentCtl3DTabOrder    TPanelPanel2Left Top#Width�Height� AlignalTop
BevelInner	bvLoweredBorderWidthCaptionPanel2TabOrder 
TScrollBox	ScrollBoxLeftTopWidth�Height� HorzScrollBar.MarginVertScrollBar.MarginAlignalClientBorderStylebsNoneTabOrder  TLabelLabel1Left� TopWidthYHeight	AlignmenttaRightJustifyAutoSizeCaptionOrderNoFocusControlEditOrderNo  TLabelLabel3Left� Top5WidthYHeight	AlignmenttaRightJustifyAutoSizeCaptionSaleDateFocusControlEditSaleDate  TLabelLabel4LeftTopKWidthYHeight	AlignmenttaRightJustifyAutoSizeCaptionShipToContactFocusControlEditShipToContact  TLabelLabel5LeftTopaWidthYHeight	AlignmenttaRightJustifyAutoSizeCaptionShipToAddr1FocusControlEditShipToAddr  TLabelLabel6Left� Top_WidthYHeight	AlignmenttaRightJustifyAutoSizeCaptionShipToAddr2FocusControlEditShipToAddr2  TLabelLabel7LeftTopyWidthYHeight	AlignmenttaRightJustifyAutoSizeCaption
ShipToCityFocusControlEditShipToCity  TLabelLabel8Left� TopwWidthYHeight	AlignmenttaRightJustifyAutoSizeCaptionShipToStateFocusControlEditShipToState  TLabelLabel9LeftTop� WidthYHeight	AlignmenttaRightJustifyAutoSizeCaption	ShipToZipFocusControlEditShipToZip  TLabelLabel10Left� Top� WidthYHeight	AlignmenttaRightJustifyAutoSizeCaptionShipToCountryFocusControlEditShipToCountry  TLabelLabel11LeftTop� WidthYHeight	AlignmenttaRightJustifyAutoSizeCaptionPaymentMethodFocusControlEditPaymentMethod  TLabelLabel12Left� Top� WidthYHeight	AlignmenttaRightJustifyAutoSizeCaption
ItemsTotalFocusControlEditItemsTotal  TLabelLabel13Left0TopWidth,HeightCaptionCustomer  TDBEditEditOrderNoLeft]TopWidth2Height	DataFieldOrderNo
DataSourceDataSource1	MaxLength TabOrder   TDBEditEditSaleDateLeft]Top2Width2Height	DataFieldSaleDate
DataSourceDataSource1	MaxLength TabOrder  TDBEditEditShipToContactLefteTopHWidthdHeight	DataFieldShipToContact
DataSourceDataSource1	MaxLengthTabOrder  TDBEditEditShipToAddrLefteTop^Width� Height	DataFieldShipToAddr1
DataSourceDataSource1	MaxLengthTabOrder  TDBEditEditShipToAddr2Left]Top\WidthdHeight	DataFieldShipToAddr2
DataSourceDataSource1	MaxLengthTabOrder  TDBEditEditShipToCityLefteTopvWidthdHeight	DataField
ShipToCity
DataSourceDataSource1	MaxLengthTabOrder  TDBEditEditShipToStateLeft]ToptWidthdHeight	DataFieldShipToState
DataSourceDataSource1	MaxLengthTabOrder  TDBEditEditShipToZipLefteTop� WidthdHeight	DataField	ShipToZip
DataSourceDataSource1	MaxLength
TabOrder  TDBEditEditShipToCountryLeft]Top� WidthdHeight	DataFieldShipToCountry
DataSourceDataSource1	MaxLengthTabOrder  TDBEditEditPaymentMethodLefteTop� WidthdHeight	DataFieldPaymentMethod
DataSourceDataSource1	MaxLengthTabOrder	  TDBEditEditItemsTotalLeft]Top� WidthdHeight	DataField
ItemsTotal
DataSourceDataSource1	MaxLength TabOrder
  TDBLookupComboBoxDBLookupComboBox1LefteTopWidth� Height	DataFieldCustNo
DataSourceDataSource1DropDownWidth,KeyFieldCustNo	ListFieldCompany;CustNo
ListSourceDataSource3TabOrder    TPanelPanel3Left Top� Width�Height� AlignalClient
BevelInner	bvLoweredBorderWidthCaptionPanel3TabOrder TDBGridDBGrid1LeftTopWidth�HeightvAlignalClientBorderStylebsNone
DataSourceDataSource2TabOrder TitleFont.ColorclBlackTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style    TQueryQuery1Active	DatabaseNameDBDEMOSRequestLive	SQL.StringsSelect  orders."OrderNo",  orders."CustNo",  orders."SaleDate",  orders."ShipToContact",  orders."ShipToAddr1",  orders."ShipToAddr2",  orders."ShipToCity",  orders."ShipToState",  orders."ShipToZip",  orders."ShipToCountry",  orders."PaymentMethod",  orders."ItemsTotal"From orders Left� Top  TQueryQuery2Active	DatabaseNameDBDEMOS
DataSourceDataSource1Params.Data
     OrderNo       X�@  RequestLive	SQL.StringsSelect  items."OrderNo",  items."ItemNo",  items."PartNo",  items."Qty"
From itemsWhere  "items"."OrderNo" =:"OrderNo" Left� Top  TDataSourceDataSource1DataSetQuery1Left� Top  TDataSourceDataSource2DataSetQuery2LeftTop  TDataSourceDataSource3DataSetTable1Left�Top  TTableTable1Active	DatabaseNameDBDEMOS	IndexName	ByCompany	TableNameCUSTOMER.DBLeftPTop   