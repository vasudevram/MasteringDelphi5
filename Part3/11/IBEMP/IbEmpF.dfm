�
 TFORMEMP 0[
  TPF0TFormEmpFormEmpLeft� Top� Width Height� ActiveControlPanel1CaptionInterBase Employee
ParentFont	PositionpoScreenCenterOnCreate
FormCreatePixelsPerInch`
TextHeight TPanelPanel1Left Top WidthHeight)AlignalTopTabOrder  TDBNavigatorDBNavigatorLeftTopWidth� Height
DataSourceDataSource1Flat	Ctl3DParentCtl3DTabOrder    TPanelPanel2Left Top)WidthHeight� AlignalClient
BevelInner	bvLoweredBorderWidthCaptionPanel2TabOrder 
TScrollBox	ScrollBoxLeftTopWidthHeight� HorzScrollBar.MarginHorzScrollBar.Range� VertScrollBar.MarginVertScrollBar.Range� AlignalClient
AutoScrollBorderStylebsNoneTabOrder  TLabelLabel1Left� TopWidth'HeightCaptionEMPNOFocusControl	EditEMPNO  TLabelLabel2LeftTopWidth:HeightCaptionLASTNAMEFocusControlEditLASTNAME  TLabelLabel3LeftTop*Width>HeightCaption	FIRSTNAMEFocusControlEditFIRSTNAME  TLabelLabel4Left� Top*Width;HeightCaptionPHONEEXTFocusControlEditPHONEEXT  TLabelLabel5LeftTopVWidth7HeightCaptionHIREDATEFocusControlEditHIREDATE  TLabelLabel6Left� TopVWidth*HeightCaptionSALARYFocusControl
EditSALARY  TDBEdit	EditEMPNOLeft� TopWidth7Height	DataFieldEMPNO
DataSourceDataSource1TabOrder   TDBEditEditLASTNAMELeftTopWidthsHeight	DataFieldLASTNAME
DataSourceDataSource1TabOrder  TDBEditEditFIRSTNAMELeftTop9WidthZHeight	DataField	FIRSTNAME
DataSourceDataSource1TabOrder  TDBEditEditPHONEEXTLeft� Top9Width#Height	DataFieldPHONEEXT
DataSourceDataSource1TabOrder  TDBEditEditHIREDATELeftTopeWidthxHeight	DataFieldHIREDATE
DataSourceDataSource1TabOrder  TDBEdit
EditSALARYLeft� TopeWidthAHeight	DataFieldSALARY
DataSourceDataSource1TabOrder    TQueryQuery1DatabaseNameIBLOCALRequestLive	SQL.Strings-SELECT EMPLOYEE.EMPNO , EMPLOYEE.FIRSTNAME ,  EMPLOYEE.LASTNAME ,  EMPLOYEE.PHONEEXT , $ EMPLOYEE.HIREDATE , EMPLOYEE.SALARYFROM EMPLOYEE EMPLOYEE Left� TopE TIntegerFieldQuery1EMPNO	FieldNameEMPNOOriginEMPLOYEE.EMPNO  TStringFieldQuery1FIRSTNAME	FieldName	FIRSTNAMEOriginEMPLOYEE.FIRSTNAMESize  TStringFieldQuery1LASTNAME	FieldNameLASTNAMEOriginEMPLOYEE.LASTNAME  TStringFieldQuery1PHONEEXT	FieldNamePHONEEXTOriginEMPLOYEE.PHONEEXTSize  TDateTimeFieldQuery1HIREDATE	FieldNameHIREDATEOriginEMPLOYEE.HIREDATE  TFloatFieldQuery1SALARY	FieldNameSALARYOriginEMPLOYEE.SALARY   TDataSourceDataSource1DataSetQuery1Left� Topu   