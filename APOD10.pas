unit APOD10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, fcButton, fcImgBtn, fcShapeBtn, StdCtrls, Mask, wwdbedit,
  ExtCtrls, wwdbdatetimepicker, Grids, Wwdbigrd, Wwdbgrid, Wwdbdlg,
  Wwdbspin, Buttons,DB, ComCtrls, wwriched, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppDB,
  ppTypes, ppDBPipe, ppDBBDE, ppStrtch, ppMemo, Mant, DBClient, wwclient, Wwdatsrc,
//Inicio APO_202501_DAF
  variants, Wwdotdot, Wwdbcomb, fcLabel,ppViewr, ppParameter, jpeg;
//Final APO_202501_DAF

type
  TFOficioDet = class(TForm)
    pnlCabecera: TPanel;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnSalir: TfcShapeBtn;
    Z2bbtnNuevo: TfcShapeBtn;
    z2bbtnImprime1: TfcShapeBtn;
    pnlTool: TPanel;
    lblFReg: TLabel;
    lblBanco: TLabel;
    lblNCta: TLabel;
    lblTipDesem: TLabel;
    dbdtpFechar: TwwDBDateTimePicker;
    edtBanco: TwwDBEdit;
    dblcdbanco: TwwDBLookupCombo;
    dblcdCuenta: TwwDBLookupCombo;
    dblcbTipDesm: TwwDBLookupCombo;
    Label1: TLabel;
    dbeMoneda: TwwDBEdit;
    dbeMonto: TwwDBEdit;
    Label2: TLabel;
    dbgPendientes: TwwDBGrid;
    z2bbtnImprime2: TfcShapeBtn;
    z2bbtnImprime3: TfcShapeBtn;
    z2bbtndiskette: TfcShapeBtn;
    edtTipDesem: TwwDBEdit;
    lblNumero: TLabel;
    ppReport1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    x1Campo05: TppLabel;
    ppLabel5: TppLabel;
    x1Campo06: TppLabel;
    x1Campo07: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    pplblMonto1: TppLabel;
    x1Campo04: TppLabel;
    pplblMonto2: TppLabel;
    x1Campo08: TppLabel;
    x1Campo09: TppLabel;
    ppLabel8: TppLabel;
    ppLabel13: TppLabel;
    pplblLinea1: TppLabel;
    pplblLinea2: TppLabel;
    x1Campo10: TppLabel;
    x1Campo11: TppLabel;
    x1Campo13: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel12: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppReport2: TppReport;
    ppHeaderBand3: TppHeaderBand;
    x2Campo14: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    x2Campo05: TppLabel;
    ppLabel29: TppLabel;
    x2Campo06: TppLabel;
    x2Campo07: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    x2Campo04: TppLabel;
    ppLabel36: TppLabel;
    x2Campo08: TppLabel;
    x2Campo09: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    x2Campo10: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppReport3: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    x3Campo05: TppLabel;
    ppLabel10: TppLabel;
    x3Campo04: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    pplblCab1: TppLabel;
    ppLblCab2: TppLabel;
    ppLabel47: TppLabel;
    ppLabel59: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand4: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel18: TppLabel;
    ppLabel28: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel30: TppLabel;
    ppLabel38: TppLabel;
    ppLabel42: TppLabel;
    ppLabel37: TppLabel;
    ppLabel43: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBPipeline1: TppDBPipeline;
    z2bbtnImprime: TfcShapeBtn;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    pplblAdic2: TppLabel;
    pplblAdic1: TppLabel;
    BitTrans: TBitBtn;
    ppLabel3: TppLabel;
    ppLabel14: TppLabel;
    lblEstado: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
//Inicio APO_202501_DAF
    btnArchivo: TBitBtn;
    DbDetRP: TppDBPipeline;
    ppRepAutTraInt: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppImage2: TppImage;
    ppLabel89: TppLabel;
    ppLabel88: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBCalc8: TppDBCalc;
    ppFooterBand6: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLblusuario: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppMemo1: TppMemo;
    ppLabel105: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine14: TppLine;
    ppParameterList2: TppParameterList;
    mTextSoles: TMemo;
//Final APO_202501_DAF
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bbtnCancelarClick2(Sender: TObject);
    procedure dblcCiaExit(Sender: TObject);
    procedure z2bbtnFiltarClick(Sender: TObject);
    procedure Z2bbtnSalirClick(Sender: TObject);
    procedure z2bbtnImprime1Click(Sender: TObject);
    procedure z2bbtnImprime2Click(Sender: TObject);
    procedure z2bbtnImprime3Click(Sender: TObject);
    procedure z2bbtndisketteClick(Sender: TObject);
    procedure OnKeyPress(Sender: TObject; var Key: Char);
    procedure OnEnter(Sender: TObject);
    procedure dblcbTipDesmExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Z2bbtnNuevoClick(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure ppLabel46Print(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure z2bbtnImprimeClick4(Sender: TObject);
    procedure BitTransClick(Sender: TObject);
//Inicio APO_202501_DAF
    procedure btnArchivoClick(Sender: TObject);
    procedure dbgPendientesRowChanged(Sender: TObject);
//Final APO_202501_DAF

  private
    strTmp : STring ;
    procedure RecuperaDetalle(xTIPDESEID , xTMONID : STring ) ;
    procedure RecuperaDetalleEdicion(xTIPDESEID,xNROFICIO : STring);
    procedure ConfiguraGrid ;
    procedure LimpiaEdits;
    procedure ValidaGrabacion ;
    function  RecuperaCorrelativo : String ;
//Inicio APO_202501_DAF
    Function SumaChecksumCCI(xCuenta: String): Double;
    Function VerificaCadena(xCadena: String): String;    
//Final APO_202501_DAF
    procedure AsignaAnoMes(var sAno , sMes : String ) ;
  public
    vacurr:currency;
  end;

var
  FOficioDet: TFOficioDet;

implementation

USES APODM, APO001, MsgDlgs, APO719;

{$R *.DFM}

procedure TFOficioDet.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13)  then
  begin
    key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;


procedure TFOficioDet.bbtnCancelarClick2(Sender: TObject);
begin
  DM1.cdsOficio.CancelUpdates;
//wmc 20030623  TFOficioDet.Close;
end;

procedure TFOficioDet.dblcCiaExit(Sender: TObject);
var
  xSQL : String;
begin
//wmc 20030624  xSql := 'CIAID='+quotedstr(dblcCia.Text);
//wmc 20030624  edtCia1.text := Dm1.DisplayDescrip('prvSQL','TGE101','CIADES',xSql,'CIADES');
end;

procedure TFOficioDet.z2bbtnFiltarClick(Sender: TObject);
begin
{ wmc 20030624
  if length(dbeNOficio.text) = 0 then
  begin
  	dbdtpFecharExit(Sender)
  end;
}
  if (length(dblcdbanco.text)=0) and (dblcdbanco.Enabled) then
  begin
    dblcdbanco.setfocus;
    Raise Exception.create('Banco Errado, Seleccione el Banco');
  end;

  if (length(dblcdCuenta.text)=0) and (dblcdCuenta.Enabled) then
  begin
    dblcdCuenta.setfocus;
    Raise Exception.create('Cuenta Errado, Seleccione la Cta. Cte. del Banco');
  end;
{ wmc 20030624
  xSQL:='SELECT * FROM APO305 '+
        'WHERE TRANSFOPE >='+QuotedStr(DateToStr(dbdtpFini.Date))+' '+
        'AND TRANSFOPE <='+QuotedStr(DateToStr(dbdtpFfin.Date))+' '+
        'AND TIPDESEID = '+QuotedStr(dblcbTipDesm.Text)+' '+
        'AND NVL(NROFICIO,''XX'')=''XX''';
}
  dm1.cdsReporte1.Close;
  dm1.cdsReporte1.DataRequest(xSQL);
  dm1.cdsReporte1.Open;
{ wmc 20030624
  if dm1.cdsReporte1.RecordCount > 0 then
    z2bbtnGrabar.enabled:=true
  else
    z2bbtnGrabar.enabled:=false;
}
  Fprincipal.Mtx1.refreshdisplay;
end;

procedure TFOficioDet.Z2bbtnSalirClick(Sender: TObject);
var  xRegistro: TBookmark;
begin
 FPrincipal.MtxOfi.RefreshFilter;
 Close ;
end;

procedure TFOficioDet.z2bbtnImprime1Click(Sender: TObject);
const
    cMeses : Array[1..12] of String = ('Enero','Febrero','Marzo','Abril','Mayo','Junio',
                                    'Julio','Agosto','Setiembre','Octubre','Noviembre','Diciembre');
var
    xMeses,xCampo1,xCampo2,xCampo3,xCampo4,xCampo5,xCampo6,xCampo7,xCampo8,
    xCiudad,xLinea,xTmonAbr,xTmondes,xCampo9,xCampo10,xCampo11,xCampo12,xCampo13,xCampo14,xSql : String;
    xAno,xMes,xDia : Word;
    xFalta,xI : Integer;
    xTotal : double;
    xAgen,xDpto,xNuevoCampo1,xNuevoCampo,xAgencias,xRutaWord : String;
    xGlosa : String ;
begin
    DecodeDate(Date,xANo,xMes,xDia);
    Case  xMes of
    1 : xMeses := cMeses[xMes];
    2 : xMeses := cMeses[xMes];
    3 : xMeses := cMeses[xMes];
    4 : xMeses := cMeses[xMes];
    5 : xMeses := cMeses[xMes];
    6 : xMeses := cMeses[xMes];
    7 : xMeses := cMeses[xMes];
    8 : xMeses := cMeses[xMes];
    9 : xMeses := cMeses[xMes];
    10 : xMeses := cMeses[xMes];
    11 : xMeses := cMeses[xMes];
    12 : xMeses := cMeses[xMes];
    end;
    xSql := 'select CIADES CAMPO01,'+quotedstr('Sistema de Seguridad y Bienestar')+
           ' CAMPO02,'+quotedstr('SOCIAL del Magisterio')+' CAMPO03,CIALUGAR ||'+
           quotedstr(' , '+FloatToStr(xDia)+' de '+xMeses+' del '+FloatToStr(xAno)) +
          ' CAMPO04 from tge101 where cntconsol ='+quotedstr('S');
    Dm1.cdsQry3.Close;
    Dm1.cdsQry3.DataRequest(xSql);
    Dm1.cdsQry3.Open;

    xCampo1 := Dm1.cdsQry3.FieldByName('CAMPO01').AsString;
    xCampo2 := Dm1.cdsQry3.FieldByName('CAMPO02').AsString;
    xCampo3 := Dm1.cdsQry3.FieldByName('CAMPO03').AsString;
    xCampo4 := Dm1.cdsQry3.FieldByName('CAMPO04').AsString;
    xCampo5 := dm1.cdsOficio.fieldbyname('NOFID').AsString;
    xCampo5 := inttostr(strtoint(copy(dm1.cdsOficio.fieldbyname('NOFID').AsString,5,5))) +'-'+
               copy(dm1.cdsOficio.fieldbyname('NOFID').AsString,1,4);
    xGlosa := 'OFICIO N° '+ xCampo5+' -DM';

    xSql := 'TMONID='+quotedstr(dm1.cdsOficio.fieldbyname('TMONID').AsString);
    xTMonAbr := Dm1.DisplayDescrip('prvSQL','TGE103','TMONDES,TMONABR',xSql,'TMONABR');
    xTmondes := Dm1.cdsQry.FieldByName('TMONDES').AsString;

    xSql := 'TIPDESEID='+quotedstR(dm1.cdsoficio.fieldbyname('TIPDESEID').AsString);
    xAgencias := Dm1.DisplayDescrip('prvSQL','CRE104','ACTAGEN',xSql,'ACTAGEN');

    xSql := 'BANCOID='+quotedstR(dm1.cdsoficio.fieldbyname('BANCOID').AsString);
    xCampo6 := Dm1.DisplayDescrip('prvSQL','TGE105','BANCONOM',xSql,'BANCONOM');
    xCAmpo7 := 'OFICINA PRINCIPAL';

    if dm1.cdsOficio.FieldBYName('FGIRO').ASString = 'N' then
      xSql :=
         ' SELECT NROFICIO ,ASOAPENOM , TMONABR , TRANSMTO , ASONCTA,D.*                              '
        + ' FROM APO209,APO311 , TGE103,                                                              '
        + ' (                                                                                         '
        + ' SELECT G.BANCOID,MAX(G.CSA) CARGOSA,MAX(G.RSA) REPRESA,MAX(G.CSG) CARGOSG,                '
        + '              MAX(G.RSG) REPRESG, MAX(G.CJI) CARGOJI   , MAX(G.RJI)  REPREJI               '
        + '       FROM (SELECT BANCOID,CASE WHEN FLGCAR = ''SA'' THEN REPCAR ELSE NULL END CSA  ,     '
        + '                    CASE WHEN FLGCAR = ''SA'' THEN REPNOM ELSE NULL END RSA  ,             '
        + '                    CASE WHEN FLGCAR = ''SG'' THEN REPCAR ELSE NULL END CSG  ,             '
        + '                    CASE WHEN FLGCAR = ''SG'' THEN REPNOM ELSE NULL END RSG  ,             '
        + '                    CASE WHEN FLGCAR = ''JI'' THEN REPCAR ELSE NULL END CJI  ,             '
        + '                    CASE WHEN FLGCAR = ''JI'' THEN REPNOM ELSE NULL END RJI                '
        + '             FROM CRE107  ) G                                                              '
        + '       GROUP BY G.BANCOID ) D                                                              '
        + ' WHERE                                                                                     '
        + '   APO209.TIPDESEID     = ''' + DM1.cdsOficio.FieldByName('TIPDESEID').AsString + '''                                                     '
        + '   AND APO209.NOFID     = ''' + DM1.cdsOficio.FieldByName('NOFID').AsString + '''                                            '
        + '   AND APO209.TIPDESEID = APO311.TIPDESEID                                                 '
        + '   AND APO209.NOFID     = APO311.NROFICIO                                                  '
        + '   AND APO209.TMONID    = TGE103.TMONID                                                    '
        + '   AND APO209.BANCOID   = D.BANCOID(+)                                                     '
    else
      xSql :=
         ' SELECT NROFICIO ,ASOAPENOM , TMONABR , TRANSMTO , COB102.AGENBCODES , ASONCTA,D.*                              '
        + ' FROM APO209,APO311 , TGE103, COB102,                                                       '
        + ' (                                                                                         '
        + ' SELECT G.BANCOID,MAX(G.CSA) CARGOSA,MAX(G.RSA) REPRESA,MAX(G.CSG) CARGOSG,                '
        + '              MAX(G.RSG) REPRESG, MAX(G.CJI) CARGOJI   , MAX(G.RJI)  REPREJI               '
        + '       FROM (SELECT BANCOID,CASE WHEN FLGCAR = ''SA'' THEN REPCAR ELSE NULL END CSA  ,     '
        + '                    CASE WHEN FLGCAR = ''SA'' THEN REPNOM ELSE NULL END RSA  ,             '
        + '                    CASE WHEN FLGCAR = ''SG'' THEN REPCAR ELSE NULL END CSG  ,             '
        + '                    CASE WHEN FLGCAR = ''SG'' THEN REPNOM ELSE NULL END RSG  ,             '
        + '                    CASE WHEN FLGCAR = ''JI'' THEN REPCAR ELSE NULL END CJI  ,             '
        + '                    CASE WHEN FLGCAR = ''JI'' THEN REPNOM ELSE NULL END RJI                '
        + '             FROM CRE107  ) G                                                              '
        + '       GROUP BY G.BANCOID ) D                                                              '
        + ' WHERE                                                                                     '
        + '   APO209.TIPDESEID     = ''' + DM1.cdsOficio.FieldByName('TIPDESEID').AsString + '''                                                     '
        + '   AND APO209.NOFID     = ''' + DM1.cdsOficio.FieldByName('NOFID').AsString + '''                                            '
        + '   AND APO209.TIPDESEID = APO311.TIPDESEID                                                 '
        + '   AND APO209.NOFID     = APO311.NROFICIO                                                  '
        + '   AND APO209.TMONID    = TGE103.TMONID                                                    '
        + '   AND APO209.BANCOID   = D.BANCOID(+)                                                     '
        + '   AND APO311.BANCOID   = COB102.BANCOID(+)                                                     '
        + '   AND APO311.AGENBANCOID = COB102.AGENBCOID(+)                                                     ' ;

    Dm1.cdsQry2.Close;
    Dm1.cdsQry2.DataRequest(xSql);
    Dm1.cdsQry2.Open;

    //** Oficio al Representante del Banco -- [1] Oficio dirigido a Oficina de Créditos --
    //
    x1Campo04.Caption := xcampo4 ;
    x2Campo04.Caption := xcampo4 ;
    x3Campo04.Caption := xcampo4 ;
    if dm1.cdsOficio.FieldByName('FGIRO').AsString = 'N' then
    begin
//      x1Campo05.Caption := xGlosa + '-MULRED' ;
      x1Campo05.Caption := xGlosa + '-COB' ;
      x1Campo08.caption := Dm1.cdsQry2.FieldByName('REPRESA').AsString ;
      x1Campo09.Caption := Dm1.cdsQry2.FieldByName('CARGOSA').AsString ;
      pplblLinea1.Caption := 'Por medio del presente, agradecemos se sirvan transferir';
      pplblLinea2.caption := 'a la cuenta de ahorros individual de la lista que se adjunta, cargando el monto que' ;
    end
    else
    begin
      x1Campo05.Caption := xGlosa + '-COB' ;
      x1Campo08.caption := Dm1.cdsQry2.FieldByName('REPRESG').AsString ;
      x1Campo09.Caption := Dm1.cdsQry2.FieldByName('CARGOSG').AsString ;
      pplblLinea1.Caption := 'Por medio del presente, agradecemos se sirvan realizar';
      pplblLinea2.caption := 'un giro a cada una de las personas de la lista que se adjunta,cargando el monto que' ;
    end ;
    x1Campo06.Caption := xCampo6 ;
    x1Campo07.Caption := xCampo7 ;
    x1Campo10.Caption := 'genere  la  operación  a  nuestra  cuenta  corriente Nº  ' +
                          dm1.cdsOficio.fieldbyname('CCBCOID').AsString +
                          ',  por un monto';
{
    x1Campo11.Caption :=  'total de ' + trim(xTmonAbr) + ' '
                           + formatfloat('###,###.00',dm1.cdsoficio.fieldbyname('MONTOTOT').AsFloat) +
                            ', por un total de ' + IntToStr(DM1.cdsQry2.Recordcount) +' profesores.';
}
    x1Campo11.Caption :=  'total de ' + trim(xTmonAbr) + ' '
                           + formatfloat('###,###.00',dm1.cdsoficio.fieldbyname('MONTOTOT').AsFloat) +
                            ', por un total de ' + IntToStr(DM1.cdsQry2.Recordcount) +' movimientos.';

    x1Campo13.Caption := dm1.cdsoficio.fieldbyname('MONTDES').AsString + ' '+xTmonDes +'.';

    if dm1.cdsQry2.RecordCount < 10 then
    begin
       ppLabel19.Visible := False ;
       ppLabel20.Visible := False ;
    end ;
    ppReport1.Print ;

end;

procedure TFOficioDet.z2bbtnImprime2Click(Sender: TObject);
const
    cMeses : Array[1..12] of String = ('Enero','Febrero','Marzo','Abril','Mayo','Junio',
                                    'Julio','Agosto','Setiembre','Octubre','Noviembre','Diciembre');
var
    xMeses,xCampo1,xCampo2,xCampo3,xCampo4,xCampo5,xCampo6,xCampo7,xCampo8,
    xCiudad,xLinea,xTmonAbr,xTmondes,xCampo9,xCampo10,xCampo11,xCampo12,xCampo13,xCampo14,xSql : String;
    xAno,xMes,xDia : Word;
    xFalta,xI : Integer;
    xTotal : double;
    xAgen,xDpto,xNuevoCampo1,xNuevoCampo,xAgencias,xRutaWord : String;
    xGlosa : String ;
begin
    DecodeDate(Date,xANo,xMes,xDia);
    Case  xMes of
    1 : xMeses := cMeses[xMes];
    2 : xMeses := cMeses[xMes];
    3 : xMeses := cMeses[xMes];
    4 : xMeses := cMeses[xMes];
    5 : xMeses := cMeses[xMes];
    6 : xMeses := cMeses[xMes];
    7 : xMeses := cMeses[xMes];
    8 : xMeses := cMeses[xMes];
    9 : xMeses := cMeses[xMes];
    10 : xMeses := cMeses[xMes];
    11 : xMeses := cMeses[xMes];
    12 : xMeses := cMeses[xMes];
    end;
    xSql := 'select CIADES CAMPO01,'+quotedstr('Sistema de Seguridad y Bienestar')+
           ' CAMPO02,'+quotedstr('SOCIAL del Magisterio')+' CAMPO03,CIALUGAR ||'+
           quotedstr(' , '+FloatToStr(xDia)+' de '+xMeses+' del '+FloatToStr(xAno)) +
          ' CAMPO04 from tge101 where cntconsol ='+quotedstr('S');
    Dm1.cdsQry3.Close;
    Dm1.cdsQry3.DataRequest(xSql);
    Dm1.cdsQry3.Open;

    xCampo1 := Dm1.cdsQry3.FieldByName('CAMPO01').AsString;
    xCampo2 := Dm1.cdsQry3.FieldByName('CAMPO02').AsString;
    xCampo3 := Dm1.cdsQry3.FieldByName('CAMPO03').AsString;
    xCampo4 := Dm1.cdsQry3.FieldByName('CAMPO04').AsString;
    xCampo5 := dm1.cdsOficio.fieldbyname('NOFID').AsString;
    xCampo5 := inttostr(strtoint(copy(dm1.cdsOficio.fieldbyname('NOFID').AsString,5,5))) +'-'+
               copy(dm1.cdsOficio.fieldbyname('NOFID').AsString,1,4);
    
    xGlosa := 'OFICIO N° '+ xCampo5+' -DM';

    xSql := 'TMONID='+quotedstr(dm1.cdsOficio.fieldbyname('TMONID').AsString);
    xTMonAbr := Dm1.DisplayDescrip('prvSQL','TGE103','TMONDES,TMONABR',xSql,'TMONABR');
    xTmondes := Dm1.cdsQry.FieldByName('TMONDES').AsString;

    xSql := 'TIPDESEID='+quotedstR(dm1.cdsoficio.fieldbyname('TIPDESEID').AsString);
    xAgencias := Dm1.DisplayDescrip('prvSQL','CRE104','ACTAGEN',xSql,'ACTAGEN');

    xSql := 'BANCOID='+quotedstR(dm1.cdsoficio.fieldbyname('BANCOID').AsString);
    xCampo6 := Dm1.DisplayDescrip('prvSQL','TGE105','BANCONOM',xSql,'BANCONOM');
    xCAmpo7 := 'OFICINA PRINCIPAL';

    if dm1.cdsOficio.FieldBYName('FGIRO').ASString = 'N' then
      xSql :=
         ' SELECT APO311.NROFICIO ,APO311.ASOAPENOM , TGE103.TMONABR , APO311.TRANSMTO ,APO201.ASODNI, APO311.ASONCTA,D.*                              '
        + ' FROM APO209,APO311 , TGE103,APO201 ,                                                             '
        + ' (                                                                                         '
        + ' SELECT G.BANCOID,MAX(G.CSA) CARGOSA,MAX(G.RSA) REPRESA,MAX(G.CSG) CARGOSG,                '
        + '              MAX(G.RSG) REPRESG, MAX(G.CJI) CARGOJI   , MAX(G.RJI)  REPREJI               '
        + '       FROM (SELECT BANCOID,CASE WHEN FLGCAR = ''SA'' THEN REPCAR ELSE NULL END CSA  ,     '
        + '                    CASE WHEN FLGCAR = ''SA'' THEN REPNOM ELSE NULL END RSA  ,             '
        + '                    CASE WHEN FLGCAR = ''SG'' THEN REPCAR ELSE NULL END CSG  ,             '
        + '                    CASE WHEN FLGCAR = ''SG'' THEN REPNOM ELSE NULL END RSG  ,             '
        + '                    CASE WHEN FLGCAR = ''JI'' THEN REPCAR ELSE NULL END CJI  ,             '
        + '                    CASE WHEN FLGCAR = ''JI'' THEN REPNOM ELSE NULL END RJI                '
        + '             FROM CRE107  ) G                                                              '
        + '       GROUP BY G.BANCOID ) D                                                              '
        + ' WHERE                                                                                     '
        + '   APO209.TIPDESEID     = ''' + DM1.cdsOficio.FieldByName('TIPDESEID').AsString + '''                                                     '
        + '   AND APO209.NOFID     = ''' + DM1.cdsOficio.FieldByName('NOFID').AsString + '''                                            '
        + '   AND APO209.TIPDESEID = APO311.TIPDESEID                                                 '
        + '   AND APO209.NOFID     = APO311.NROFICIO                                                  '
        + '   AND APO209.TMONID    = TGE103.TMONID                                                    '
        + '   AND APO201.ASOID    = APO311.ASOID                                                    '
        + '   AND APO209.BANCOID   = D.BANCOID(+)                                                     '
    else
      xSql :=
         ' SELECT APO311.NROFICIO ,APO311.ASOAPENOM , TGE103.TMONABR , APO311.TRANSMTO ,APO201.ASODNI, COB102.AGENBCODES ASONCTA,D.*                              '
        + ' FROM APO209,APO311 , TGE103, COB102,APO201,                                                       '
        + ' (                                                                                         '
        + ' SELECT G.BANCOID,MAX(G.CSA) CARGOSA,MAX(G.RSA) REPRESA,MAX(G.CSG) CARGOSG,                '
        + '              MAX(G.RSG) REPRESG, MAX(G.CJI) CARGOJI   , MAX(G.RJI)  REPREJI               '
        + '       FROM (SELECT BANCOID,CASE WHEN FLGCAR = ''SA'' THEN REPCAR ELSE NULL END CSA  ,     '
        + '                    CASE WHEN FLGCAR = ''SA'' THEN REPNOM ELSE NULL END RSA  ,             '
        + '                    CASE WHEN FLGCAR = ''SG'' THEN REPCAR ELSE NULL END CSG  ,             '
        + '                    CASE WHEN FLGCAR = ''SG'' THEN REPNOM ELSE NULL END RSG  ,             '
        + '                    CASE WHEN FLGCAR = ''JI'' THEN REPCAR ELSE NULL END CJI  ,             '
        + '                    CASE WHEN FLGCAR = ''JI'' THEN REPNOM ELSE NULL END RJI                '
        + '             FROM CRE107  ) G                                                              '
        + '       GROUP BY G.BANCOID ) D                                                              '
        + ' WHERE                                                                                     '
        + '   APO209.TIPDESEID     = ''' + DM1.cdsOficio.FieldByName('TIPDESEID').AsString + '''                                                     '
        + '   AND APO209.NOFID     = ''' + DM1.cdsOficio.FieldByName('NOFID').AsString + '''                                            '
        + '   AND APO209.TIPDESEID = APO311.TIPDESEID                                                 '
        + '   AND APO209.NOFID     = APO311.NROFICIO                                                  '
        + '   AND APO209.TMONID    = TGE103.TMONID                                                    '
        + '   AND APO209.BANCOID   = D.BANCOID(+)                                                     '
        + '   AND APO311.BANCOID   = COB102.BANCOID(+)                                                     '
        + '   AND APO201.ASOID     = APO311.ASOID                                                    '
        + '   AND APO311.AGENBANCOID = COB102.AGENBCOID(+)                                                     ' ;

    Dm1.cdsQry2.Close;
    Dm1.cdsQry2.DataRequest(xSql);
    Dm1.cdsQry2.Open;

    //** Relación de Profesores        -- [2] Relación de Profesores incluidos en el Oficio --

    ppDBPipeline1.DataSource := DM1.dsQry2 ;
    If dm1.cdsoficio.FieldByName('FGIRO').AsString = 'N' then
    begin
       x3Campo05.Caption := xGlosa + '-COB';
       pplblCab1.Caption := '' ;
       ppLblCab2.Caption := 'CUENTA' ;
    end
    else
    begin
       x3Campo05.Caption := xGlosa + '-COB';
       pplblCab1.Caption := 'LUGAR' ;
       ppLblCab2.Caption := 'GIRO' ;
    end ;
    lblEstado.Caption:=dm1.cdsoficio.FieldByName('ESTADO').AsString ;
    ppReport3.Print;
    ppDBPipeline1.DataSource := nil ;

end;

procedure TFOficioDet.z2bbtnImprime3Click(Sender: TObject);
const
    cMeses : Array[1..12] of String = ('Enero','Febrero','Marzo','Abril','Mayo','Junio',
                                    'Julio','Agosto','Setiembre','Octubre','Noviembre','Diciembre');
var
    xMeses,xCampo1,xCampo2,xCampo3,xCampo4,xCampo5,xCampo6,xCampo7,xCampo8,
    xCiudad,xLinea,xTmonAbr,xTmondes,xCampo9,xCampo10,xCampo11,xCampo12,xCampo13,xCampo14,xSql : String;
    xAno,xMes,xDia : Word;
    xFalta,xI : Integer;
    xTotal : double;
    xAgen,xDpto,xNuevoCampo1,xNuevoCampo,xAgencias,xRutaWord : String;
    xGlosa : String ;
begin
    DecodeDate(Date,xANo,xMes,xDia);
    Case  xMes of
    1 : xMeses := cMeses[xMes];
    2 : xMeses := cMeses[xMes];
    3 : xMeses := cMeses[xMes];
    4 : xMeses := cMeses[xMes];
    5 : xMeses := cMeses[xMes];
    6 : xMeses := cMeses[xMes];
    7 : xMeses := cMeses[xMes];
    8 : xMeses := cMeses[xMes];
    9 : xMeses := cMeses[xMes];
    10 : xMeses := cMeses[xMes];
    11 : xMeses := cMeses[xMes];
    12 : xMeses := cMeses[xMes];
    end;
    xSql := 'select CIADES CAMPO01,'+quotedstr('Sistema de Seguridad y Bienestar')+
           ' CAMPO02,'+quotedstr('SOCIAL del Magisterio')+' CAMPO03,CIALUGAR ||'+
           quotedstr(' , '+FloatToStr(xDia)+' de '+xMeses+' del '+FloatToStr(xAno)) +
          ' CAMPO04 from tge101 where cntconsol ='+quotedstr('S');
    Dm1.cdsQry3.Close;
    Dm1.cdsQry3.DataRequest(xSql);
    Dm1.cdsQry3.Open;

    xCampo1 := Dm1.cdsQry3.FieldByName('CAMPO01').AsString;
    xCampo2 := Dm1.cdsQry3.FieldByName('CAMPO02').AsString;
    xCampo3 := Dm1.cdsQry3.FieldByName('CAMPO03').AsString;
    xCampo4 := Dm1.cdsQry3.FieldByName('CAMPO04').AsString;
    xCampo5 := dm1.cdsOficio.fieldbyname('NOFID').AsString;
    xCampo5 := inttostr(strtoint(copy(dm1.cdsOficio.fieldbyname('NOFID').AsString,5,5))) +'-'+
               copy(dm1.cdsOficio.fieldbyname('NOFID').AsString,1,4);
    
    xGlosa := 'OFICIO N° '+ xCampo5+' -DM';

    xSql := 'TMONID='+quotedstr(dm1.cdsOficio.fieldbyname('TMONID').AsString);
    xTMonAbr := Dm1.DisplayDescrip('prvSQL','TGE103','TMONDES,TMONABR',xSql,'TMONABR');
    xTmondes := Dm1.cdsQry.FieldByName('TMONDES').AsString;

    xSql := 'TIPDESEID='+quotedstR(dm1.cdsoficio.fieldbyname('TIPDESEID').AsString);
    xAgencias := Dm1.DisplayDescrip('prvSQL','CRE104','ACTAGEN',xSql,'ACTAGEN');

    xSql := 'BANCOID='+quotedstR(dm1.cdsoficio.fieldbyname('BANCOID').AsString);
    xCampo6 := Dm1.DisplayDescrip('prvSQL','TGE105','BANCONOM',xSql,'BANCONOM');
    xCAmpo7 := 'OFICINA PRINCIPAL';

    if dm1.cdsOficio.FieldBYName('FGIRO').ASString = 'N' then
      xSql :=
         ' SELECT NROFICIO ,ASOAPENOM , TMONABR , TRANSMTO , ASONCTA,D.*                              '
        + ' FROM APO209,APO311 , TGE103,                                                              '
        + ' (                                                                                         '
        + ' SELECT G.BANCOID,MAX(G.CSA) CARGOSA,MAX(G.RSA) REPRESA,MAX(G.CSG) CARGOSG,                '
        + '              MAX(G.RSG) REPRESG, MAX(G.CJI) CARGOJI   , MAX(G.RJI)  REPREJI               '
        + '       FROM (SELECT BANCOID,CASE WHEN FLGCAR = ''SA'' THEN REPCAR ELSE NULL END CSA  ,     '
        + '                    CASE WHEN FLGCAR = ''SA'' THEN REPNOM ELSE NULL END RSA  ,             '
        + '                    CASE WHEN FLGCAR = ''SG'' THEN REPCAR ELSE NULL END CSG  ,             '
        + '                    CASE WHEN FLGCAR = ''SG'' THEN REPNOM ELSE NULL END RSG  ,             '
        + '                    CASE WHEN FLGCAR = ''JI'' THEN REPCAR ELSE NULL END CJI  ,             '
        + '                    CASE WHEN FLGCAR = ''JI'' THEN REPNOM ELSE NULL END RJI                '
        + '             FROM CRE107  ) G                                                              '
        + '       GROUP BY G.BANCOID ) D                                                              '
        + ' WHERE                                                                                     '
        + '   APO209.TIPDESEID     = ''' + DM1.cdsOficio.FieldByName('TIPDESEID').AsString + '''                                                     '
        + '   AND APO209.NOFID     = ''' + DM1.cdsOficio.FieldByName('NOFID').AsString + '''                                            '
        + '   AND APO209.TIPDESEID = APO311.TIPDESEID                                                 '
        + '   AND APO209.NOFID     = APO311.NROFICIO                                                  '
        + '   AND APO209.TMONID    = TGE103.TMONID                                                    '
        + '   AND APO209.BANCOID   = D.BANCOID(+)                                                     '
    else
      xSql :=
         ' SELECT NROFICIO ,ASOAPENOM , TMONABR , TRANSMTO , COB102.AGENBCODES , ASONCTA,D.*                              '
        + ' FROM APO209,APO311 , TGE103, COB102,                                                       '
        + ' (                                                                                         '
        + ' SELECT G.BANCOID,MAX(G.CSA) CARGOSA,MAX(G.RSA) REPRESA,MAX(G.CSG) CARGOSG,                '
        + '              MAX(G.RSG) REPRESG, MAX(G.CJI) CARGOJI   , MAX(G.RJI)  REPREJI               '
        + '       FROM (SELECT BANCOID,CASE WHEN FLGCAR = ''SA'' THEN REPCAR ELSE NULL END CSA  ,     '
        + '                    CASE WHEN FLGCAR = ''SA'' THEN REPNOM ELSE NULL END RSA  ,             '
        + '                    CASE WHEN FLGCAR = ''SG'' THEN REPCAR ELSE NULL END CSG  ,             '
        + '                    CASE WHEN FLGCAR = ''SG'' THEN REPNOM ELSE NULL END RSG  ,             '
        + '                    CASE WHEN FLGCAR = ''JI'' THEN REPCAR ELSE NULL END CJI  ,             '
        + '                    CASE WHEN FLGCAR = ''JI'' THEN REPNOM ELSE NULL END RJI                '
        + '             FROM CRE107  ) G                                                              '
        + '       GROUP BY G.BANCOID ) D                                                              '
        + ' WHERE                                                                                     '
        + '   APO209.TIPDESEID     = ''' + DM1.cdsOficio.FieldByName('TIPDESEID').AsString + '''                                                     '
        + '   AND APO209.NOFID     = ''' + DM1.cdsOficio.FieldByName('NOFID').AsString + '''                                            '
        + '   AND APO209.TIPDESEID = APO311.TIPDESEID                                                 '
        + '   AND APO209.NOFID     = APO311.NROFICIO                                                  '
        + '   AND APO209.TMONID    = TGE103.TMONID                                                    '
        + '   AND APO209.BANCOID   = D.BANCOID(+)                                                     '
        + '   AND APO311.BANCOID   = COB102.BANCOID(+)                                                     '
        + '   AND APO311.AGENBANCOID = COB102.AGENBCOID(+)                                                     ' ;

    Dm1.cdsQry2.Close;
    Dm1.cdsQry2.DataRequest(xSql);
    Dm1.cdsQry2.Open;

    //** Oficio del Diskette     -- [3] Dirigido al Dpto de Sistemas --
    x1Campo04.Caption := xcampo4 ;
    x2Campo04.Caption := xcampo4 ;
    x3Campo04.Caption := xcampo4 ;

    x2Campo05.Caption := xGlosa + '-COB' ;
    x2Campo06.Caption := xCampo6 ;
    x2Campo07.Caption := xCampo7 ;
    x2Campo08.caption := Dm1.cdsQry2.FieldByName('REPREJI').AsString ;
    x2Campo09.Caption := Dm1.cdsQry2.FieldByName('CARGOJI').AsString ;
    x2Campo10.Caption := 'diskette conteniendo ' + IntToStr(DM1.cdsQry2.Recordcount) +' registros por un monto total de '
                        + xTMonAbr + FormatFloat('###,###.00',dm1.cdsOficio.fieldbyname('MONTOTOT').AsFloat) + '.' ;
    x2Campo14.Caption := dm1.cdsOficio.fieldbyname('MONTDES').AsString + ' '+xTmonDes +'.';
    ppReport2.Print ;
end;

procedure TFOficioDet.z2bbtndisketteClick(Sender: TObject);
begin
//Código para Guardar en Diskette
end;

procedure TFOficioDet.OnKeyPress(Sender: TObject; var Key: Char);
begin
   if key = ' ' then
      key := #0 ;
end;

procedure TFOficioDet.OnEnter(Sender: TObject);
begin
   strTmp := TCustomEdit(Sender).Text ;
end;

procedure TFOficioDet.RecuperaDetalle;
var
   sSQL : String ;
begin
  { sSQL :=
     ' SELECT DEVID,                                     '
   +  '      ASOID,                                       '
   +  '      ASOCODMOD,                                   '
   +  '      ASOAPENOM,                                   '
   +  '      TRANSMTO,                                    '
   +  '      APO311.USUARIO,                              '
   +  '      ASONCTA,                                 '
   +  '      AGENBANCOID,                                 '
   +  '      TGE158.DPTODES,                              '
   +  '      COB102.AGENBCODES                            '
   +  ' FROM APO311 , TGE158 , COB102                     '
   +  ' WHERE APO311 . TIPDESEID = ''' + xTIPDESEID + '''         '
   +  '   AND APO311 . TMONID    = ''' + xTMONID + '''                    '
   +  '   AND APO311 . NROFICIO  IS NULL                  '
   +  '   AND APO311 . AGENBANCOID = COB102.AGENBCOID (+) '
   +  '   AND APO311 . DPTOGIRO    = TGE158.DPTOID (+)    ' ; }


//Inicio APO_202501_DAF
   sSQL :=
     ' SELECT DEVID,                                     '
   +  '      ASOID,                                       '
   +  '      NROFICIO,                                    '                               
   +  '      ASOCODMOD,                                   '
   +  '      ASOAPENOM,                                   '
   +  '      TRANSMTO,                                    '
   +  '      APO311.USUARIO,                              '
   +  '      ASONCTA,                                     '
   +  '      ASOCCI,                                      '
   +  '      AGENBANCOID,                                 '
   +  '      TGE158.DPTODES,                              '
   +  '      COB102.AGENBCODES                            '
   +  ' FROM APO311 , TGE158 , COB102                     '
   +  ' WHERE APO311 . TIPDESEID = ''' + xTIPDESEID + '''         '
   +  '   AND APO311 . TMONID    = ''' + xTMONID + '''                    '
   +  '   AND APO311 . NROFICIO  IS NULL                  '
   +  '   AND APO311 . AGENBANCOID = COB102.AGENBCOID (+) '
   +  '   AND APO311 . DPTOGIRO    = TGE158.DPTOID (+)    ' ;
//Final APO_202501_DAF


   dm1.cdsQry1.Close ;
   dm1.cdsQry1.DataRequest(sSQL);
   dm1.cdsQry1.Open ;
   ConfiguraGrid ;
end;

procedure TFOficioDet.dblcbTipDesmExit(Sender: TObject);
begin
  if dblcbTipDesm.Text <> strTmp then
  begin
     if dblcbTipDesm.LookupTable.Locate('TIPDESEID',VarArrayOf([dblcbtipdesm.text]),[]) then
     begin
        RecuperaDetalle(dblcbTipDesm.Text,'N');
        edtTipDesem.Text := dblcbTipDesm.LookupTable.fieldbyName('TIPDESEABR').AsString ;
     end
     else
     begin
        RecuperaDetalle('','');
        edtTipDesem.Clear ;
        dblcbTipDesm.Clear ;
     end ;
  end ;
end;

procedure TFOficioDet.ConfiguraGrid;
var
   xCurr : Currency ;
begin

   dbgPendientes.Selected.Clear;
   dbgPendientes.Selected.Add('DEVID'#9'9'#9'Nº~Dev.'#9'T');
   dbgPendientes.Selected.Add('ASOID'#9'10'#9'Cód.~Asoc.'#9'T');
   dbgPendientes.Selected.Add('ASOCODMOD'#9'10'#9'Cód.~Mod.'#9'T');
   dbgPendientes.Selected.Add('ASOAPENOM'#9'40'#9'~Nombre'#9'T');
   dbgPendientes.Selected.Add('TRANSMTO'#9'6'#9'Monto~Devolver'#9'T');
   dbgPendientes.Selected.Add('USUARIO'#9'10'#9'~Usuario'#9'T');
//Inicio APO_202501_DAF
   dbgPendientes.Selected.Add('TIPDESEID'#9'10'#9'Tip.~Desemb.'#9'T');
   dbgPendientes.Selected.Add('TIPDESEABR'#9'15'#9'Desc.~T.Desemb.'#9'T');
   dbgPendientes.Selected.Add('AGENBANCOID'#9'10'#9'Cód.~Agencia'#9'T');
   dbgPendientes.Selected.Add('ASONCTA'#9'10'#9'~Cuenta'#9'T');
   dbgPendientes.Selected.Add('ASOCCI'#9'20'#9'~Cuenta CCI'#9'T');
//Final APO_202501_DAF
   dbgPendientes.Selected.Add('DPTODES'#9'10'#9'Dpto.~Giro'#9'T');
   dbgPendientes.Selected.Add('AGENBCODES'#9'10'#9'~Agencia'#9'T');

   TNumericField(dm1.cdsQry1.FieldByName('TRANSMTO')).DisplayFormat := '###,###,##0.00';
   xCurr  := DM1.OperClientDataSet(DM1.cdsQry1,'SUM(TRANSMTO)','') ;
   vacurr := DM1.OperClientDataSet(DM1.cdsQry1,'SUM(TRANSMTO)','');
   dbgPendientes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(xCurr, ffNumber, 10, 2);
   if dm1.wModo = 'A' then
      dbeMonto.DataSource.DataSet.FieldBYName(dbeMonto.DataField).AsCurrency := xCurr ;
      
   dbgPendientes.ApplySelected;

end;

procedure TFOficioDet.FormShow(Sender: TObject);
begin
  if dm1.wModo = 'A' then
  begin
    Z2bbtnAceptar.Enabled   := True ;
    z2bbtnImprime1.Enabled  := False ;
    z2bbtnImprime2.Enabled  := False ;
    z2bbtnImprime3.Enabled  := False ;
    z2bbtndiskette.Enabled  := False ;
    z2bbtnImprime.Enabled   := False ;

    RecuperaDetalle('','');
    pnlTool.Enabled := True ;
    LimpiaEdits ;
    dbdtpFechar.datasource.dataset.FieldBYName(dbdtpFechar.DataField).AsDateTime := TDate(DM1.dtFechaSistema) ;
    if dblcdbanco.LookupTable.RecordCount = 1 then
    begin
       dblcdbanco.Enabled := False ;
       dblcdbanco.DataSource.DataSet.FieldByName(dblcdbanco.DataField).ASString :=
                        dblcdbanco.LookupTable.FieldBYName('BANCOID').ASString ;
       edtBanco.Text := dblcdbanco.LookupTable.FieldBYName('BANCONOM').ASString ; ;
       dblcdCuenta.LookupTable.Filter   := 'CIAID =''' + wCiaDef + ''' AND BANCOID = ''' +
                        dblcdbanco.LookupTable.FieldBYName('BANCOID').ASString + ''' ' ;
       dblcdCuenta.LookupTable.Filtered := True ;
       if dblcdCuenta.LookupTable.RecordCount = 1 then
       begin
         dblcdCuenta.DataSource.DataSet.FieldByName(dblcdCuenta.DataField).ASString :=
                          dblcdCuenta.LookupTable.FieldBYName('CCBCOID').ASString ;
         dblcdCuenta.DataSource.DataSet.FieldByName('TMONID').ASString :=
                          dblcdCuenta.LookupTable.FieldBYName('TMONID').ASString ;
         dblcdCuenta.Enabled := False ;
         dbeMoneda.Text := dm1.DisplayDescrip('','TGE103','*','TMONID=''' + dblcdCuenta.LookupTable.FieldBYName('TMONID').ASString + ''' ','TMONDES');
       end ;
    end
    else
    begin
      dblcdbanco.Enabled  := True ;
      dblcdCuenta.Enabled := False ;
    end ;
    pnlTool.SetFocus ;
    perform(CM_DialogKey,VK_TAB,0);
  end
  else
  begin
    pnlTool.Enabled := False ;
    LimpiaEdits ;
    RecuperaDetalleEdicion(DM1.cdsOficio.FieldBYName('TIPDESEID').AsString,DM1.cdsOficio.FieldBYName('NOFID').AsString);
    Z2bbtnAceptar.Enabled := False ;
    z2bbtnImprime1.Enabled  := True ;
    z2bbtnImprime2.Enabled  := True ;
    z2bbtnImprime3.Enabled  := True ;
    z2bbtndiskette.Enabled  := True ;
    z2bbtnImprime.Enabled   := True ;
    //Buscar moneda
    dbeMoneda.Text := dm1.DisplayDescrip('','TGE103','*','TMONID=''' + dm1.cdsOficio.FieldBYName('TMONID').ASString + ''' ','TMONDES');
    //Buscar tipo de Desembolso
    edtTipDesem.Text := dm1.DisplayDescrip('','CRE104','*','TIPDESEID=''' + dm1.cdsOficio.FieldBYName('TIPDESEID').ASString + ''' ','TIPDESEDES');
    //Buscar descripción del Banco
    edtBanco.Text := dm1.DisplayDescrip('','TGE105','*','BANCOID=''' + dm1.cdsOficio.FieldBYName('BANCOID').ASString + ''' ','BANCONOM');
    //Número
    lblNumero.Caption := dm1.cdsOficio.FieldBYName('TIPDESEID').ASString + '-' + dm1.cdsOficio.FieldBYName('NOFID').ASString ;
  end ;

end;

procedure TFOficioDet.LimpiaEdits;
begin
   edtTipDesem.Text  := '' ;
   edtBanco.Text     := '' ;
   dbeMoneda.Text    := '' ;
   lblNumero.Caption := '' ;
end;

procedure TFOficioDet.FormCreate(Sender: TObject);
begin
   RecuperaDetalle('','');
end;

procedure TFOficioDet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dm1.cdsOficio.CancelUpdates ;
end;

procedure TFOficioDet.Z2bbtnNuevoClick(Sender: TObject);
begin
   dm1.cdsOficio.CancelUpdates ;
   dm1.cdsoficio.Append ;
   dm1.wModo := 'A' ;
   OnShow(self);
end;

procedure TFOficioDet.Z2bbtnAceptarClick(Sender: TObject);
var
   sCorrelativo : String ;
   sSQL : String ;
   ifrac : extended ;
   OwnerData: OleVariant;
   ErrorCount : Integer ;

begin
   ValidaGrabacion ;
   //Código de Grabación
   try
     DM1.DCOM1.AppServer.SolStartTransaction ;
     //Recuperación de Correlativos
     sCorrelativo := RecuperaCorrelativo;
     //Actualizar el Detalle
     dbgPendientes.DataSource.DataSet.First ;
     while not dbgPendientes.DataSource.DataSet.eof do
     begin
       sSQL := 'UPDATE APO311 SET NROFICIO = ''' + sCorrelativo + ''' WHERE DEVID ='''
                        + dbgPendientes.DataSource.DataSet.FieldBYName('DEVID').ASString + ''' ' ;
       DM1.DCOM1.AppServer.EjecutaSQL(ssql);
       dbgPendientes.DataSource.DataSet.Next ;
     end ;
     //Actualizar la Cabecera
     xSql:='SELECT FECANO,FECMES,FECDIA,FECTRIM,FECSEM,FECANO||FECMES FECAAMM,FECSS,FECAATRI,FECAASEM,FECAASS,FECMMSS FROM TGE114 WHERE FECHA=TO_DATE('''+ FormatDateTime('YYYYMMDD', dbdtpFechar.Date)+ ''',''YYYYMMDD'')';
     dm1.cdsReporte1.Close;
     dm1.cdsReporte1.DataRequest(xSql);
     dm1.cdsReporte1.Open;


     DM1.cdsOficio.FieldByName('CIAID') . AsString    :=  wCiaDef ;
     DM1.cdsOficio.FieldByName('NOFID') . AsString    :=  sCorrelativo ;
     DM1.cdsOficio.FieldByName('MODOFIC') . AsString  :=  'APO' ;
     DM1.cdsOficio.FieldByName('TMONID') . AsString    :=  'N';

     ifrac := frac(vacurr)* 100 ;
     DM1.cdsOficio.FieldByName('MONTDES') . AsString  :=
     DM1.NumLetra(TRUNC(vacurr),1,1)+' Y ' + formatfloat('00',ifrac)+ '/100' ;
     DM1.cdsOficio.FieldByName('USUARIO') . AsString  :=  dm1.wUsuario ;
     DM1.cdsOficio.FieldByName('ESTADO' ) . AsString  :=  'EN TRAMITE';
     if dblcbTipDesm.LookupTable.Locate('TIPDESEID',VarArrayOf([dblcbTipDesm.text]),[]) then
        DM1.cdsOficio.FieldByName('FPAGOID') . AsString  := dblcbTipDesm.LookupTable.FieldByName('FPAGOID').AsString ;

     DM1.cdsOficio.FieldByName('FECANO')  .AsString  := dm1.cdsReporte1.FieldBYName('FECANO')  .AsString ;
     DM1.cdsOficio.FieldByName('FECMES')  .AsString  := dm1.cdsReporte1.FieldBYName('FECMES')  .AsString ;
     DM1.cdsOficio.FieldByName('FECDIA')  .AsString  := dm1.cdsReporte1.FieldBYName('FECDIA')  .AsString ;
     DM1.cdsOficio.FieldByName('FECTRIM') .AsString  := dm1.cdsReporte1.FieldBYName('FECTRIM') .AsString ;
     DM1.cdsOficio.FieldByName('FECSEM')  .AsString  := dm1.cdsReporte1.FieldBYName('FECSEM')  .AsString ;
     DM1.cdsOficio.FieldByName('FECAAMM') .AsString  := dm1.cdsReporte1.FieldBYName('FECAAMM') .AsString ;
     DM1.cdsOficio.FieldByName('FECSS')   .AsString  := dm1.cdsReporte1.FieldBYName('FECSS')   .AsString ;
     DM1.cdsOficio.FieldByName('FECAATRI').AsString  := dm1.cdsReporte1.FieldBYName('FECAATRI').AsString ;
     DM1.cdsOficio.FieldByName('FECAASEM').AsString  := dm1.cdsReporte1.FieldBYName('FECAASEM').AsString ;
     DM1.cdsOficio.FieldByName('FECAASS') .AsString  := dm1.cdsReporte1.FieldBYName('FECAASS') .AsString ;
     DM1.cdsOficio.FieldByName('FECMMSS') .AsString  := dm1.cdsReporte1.FieldBYName('FECMMSS') .AsString ;

     DM1.cdsOficio.FieldByName('FECMMSS') .AsDateTime  := DM1.dtFechaSistema ;

     if dblcbTipDesm.LookupTable.Locate('TIPDESEID',VarArrayOf([dblcbTipDesm.Text]),[]) then
        if dblcbTipDesm.LookupTable.FieldByName('ACTAGEN').AsString = 'S' then
          DM1.cdsOficio.FieldByName('FGIRO')   .ASString    := 'S'
        else
          DM1.cdsOficio.FieldByName('FGIRO')   .ASString    := 'N'
     else
        Raise Exception.Create('Error en la Configuración -- Consulte con Sistemas');

     dm1.dcom1.AppServer.AS_ApplyUpdates(DM1.cdsOficio.ProviderName, DM1.cdsOficio.Delta, 0, ErrorCount, OwnerData);
     if ErrorCount > 0 then
        Raise exception.Create('Error en la Grabación de la Cabecera del Oficio');
     DM1.DCOM1.AppServer.SolCommit ;
     ShowMessage('Actualización Exitosa');

   except
     DM1.DCOM1.AppServer.SolRollBack ;
     Raise ;
   end ;

   //Posteriores a la Grabación
   if dm1.cdsOficio.LogChanges then
      dm1.cdsOficio.MergeChangeLog ;
   lblNumero.Caption  := dm1.cdsOficio.FieldBYName('TIPDESEID').ASString + '-'+ sCorrelativo ;
   DM1.wModo := 'M' ;

   pnlTool.Enabled     := False ;
   Z2bbtnAceptar.Enabled   := False ;
   z2bbtnImprime1.Enabled  := True ;
   z2bbtnImprime2.Enabled  := True ;
   z2bbtnImprime3.Enabled  := True ;
   z2bbtndiskette.Enabled  := True ;
   z2bbtnImprime.Enabled   := True ;


   DM1.cdsOficio.Locate('NOFID', VarArrayOf([TRIM(sCorrelativo)]), [loPartialKey]);
//Inicio APO_202501_DAF
   If (Copy(DM1.cdsOficio.FieldByName('ESTADO').AsString,1,1)='E') and (dm1.cdsOficio.FieldBYName('TIPDESEID').ASString<>'20') Then
   Begin
       BitTrans.Visible:=True;
       btnArchivo.Visible:=False;
   End
   Else
   Begin
     BitTrans.Visible:=False;
     btnArchivo.Visible:=True;
   End;
//Final APO_202501_DAF

end;

procedure TFOficioDet.ValidaGrabacion;
begin
  if trim(dblcbTipDesm.Text)='' then
  begin
     dblcbTipDesm.SetFocus ;
     Raise Exception.Create('Ingrese Tipo de Desembolso');
  end ;
  if trim(dblcdbanco.Text)='' then
  begin
     dblcdbanco.SetFocus ;
     Raise Exception.Create('Ingrese Banco');
  end ;
  if trim(dblcdCuenta.Text)='' then
  begin
     dblcdCuenta.SetFocus ;
     Raise Exception.Create('Ingrese Cuenta');
  end ;
  if dbgPendientes.DataSource.DataSet.RecordCount=0 then
  begin
     Raise Exception.Create('No ha registrado Devoluciones para este Oficio');
  end ;

end;

function TFOficioDet.RecuperaCorrelativo: String;
var
  sANO   : String ;
  sMES   : String ;
  sSQL   : String ;
begin
   AsignaAnoMes( sANO , sMES );
//wmc 20030708   if dblcbTipDesm.Text = '05' then
      SSQL := 'BEGIN SP_RECUPERA_CORRELATIVO2(''DEVGIRO'' , ''' + sANO + ''');  END ;';
//wmc 20030708   else
//wmc 20030708      SSQL := 'BEGIN SP_RECUPERA_CORRELATIVO2(''DEVABONO'' , ''' + sANO + ''');  END ;' ;
   dm1.DCOM1.Appserver.EjecutaSQL(ssql);
   dm1.cdsQry.Close ;
   dm1.cdsQry.DataRequest('SELECT CODIGO FROM TMP001') ;
   dm1.cdsQry.Open  ;
   if dm1.cdsQry.FieldByName('CODIGO').AsInteger = 0 then
     result := ''
   else
     result := dm1.cdsQry.FieldByName('CODIGO').AsString ;
end;

procedure TFOficioDet.AsignaAnoMes(var sAno, sMes: String);
var
  Year, Month, Day : Word;
begin

  DecodeDate(dbdtpFechar.Date , Year , Month, Day);
  sAno := dm1.StrZero(IntToStr(Year),4) ;
  sMes := dm1.StrZero(IntToStr(Month),2) ;

end;

procedure TFOficioDet.RecuperaDetalleEdicion(xTIPDESEID,xNROFICIO : STring);
var
   sSQL : String ;
begin
   sSQL :=
//Inicio APO_202501_DAF
     ' SELECT DEVID,                                      '
   +  '      APO311.FREG,                                 '  
   +  '      APO311.ASOID,                                '
   +  '      APO311.NROFICIO,                             '
   +  '      ASODNI,                                      '
   +  '      APO311.ASOCODMOD,                            '
   +  '      APO311.ASOAPENOM,                            '
   +  '      TRANSMTO,                                    '
   +  '      TIPDESEID,                                   '
   +  '      TIPDESEABR,                                  '
   +  '      APO311.USUARIO,                              '
   +  '      APO311.ASONCTA,                              '
   +  '      APO311.ASOCCI,                               '
   +  '      AGENBANCOID,                                 '
   +  '      TGE158.DPTODES,                              '
   +  '      COB102.AGENBCODES                            '
   +  ' FROM APO311 , TGE158 , COB102 ,APO201             '
   +  ' WHERE APO311 . TIPDESEID = ''' + xTIPDESEID + ''' '
   +  '   AND APO311 . NROFICIO = ''' + xNROFICIO + '''   '
   +  '   AND APO311 . AGENBANCOID = COB102.AGENBCOID (+) '
   +  '   AND APO311 . DPTOGIRO    = TGE158.DPTOID (+)    '
   +  '   AND APO201.ASOID = APO311.ASOID  ';
//Final APO_202501_DAF
   dm1.cdsQry1.Close ;
   dm1.cdsQry1.DataRequest(sSQL);
   dm1.cdsQry1.Open ;
   ConfiguraGrid ;
end;

procedure TFOficioDet.ppLabel46Print(Sender: TObject);
begin
  if ppSystemVariable1.Text = '1' then
     TppPrintable( Sender ) .Visible := True
  else
     TppPrintable( Sender ).Visible := False ;
end;

procedure TFOficioDet.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;

procedure TFOficioDet.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TFOficioDet.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport3.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TFOficioDet.z2bbtnImprimeClick4(Sender: TObject);
const
    cMeses : Array[1..12] of String = ('Enero','Febrero','Marzo','Abril','Mayo','Junio',
                                    'Julio','Agosto','Setiembre','Octubre','Noviembre','Diciembre');
var
    xMeses,xCampo1,xCampo2,xCampo3,xCampo4,xCampo5,xCampo6,xCampo7,xCampo8,
    xCiudad,xLinea,xTmonAbr,xTmondes,xCampo9,xCampo10,xCampo11,xCampo12,xCampo13,xCampo14,xSql : String;
    xAno,xMes,xDia : Word;
    xFalta,xI : Integer;
//Inicio APO_202501_DAF
    xInt:Real;
    ifrac : extended ;
//Final APO_202501_DAF
    xTotal : double;
    xAgen,xDpto,xNuevoCampo1,xNuevoCampo,xAgencias,xRutaWord : String;
    xGlosa : String ;
begin


//Inicio APO_202501_DAF
  If dm1.cdsOficio.FieldByname('TIPDESEID').AsString ='20' Then
    Begin
       ppLabel83.Caption :='OFICIO N° '+DM1.cdsOficio.FieldBYName('NOFID').AsString+'-'+copy(DM1.cdsOficio.FieldBYName('NOFID').AsString,1,4)+'-DM-COB';
       ppLabel82.Caption := 'Jesús María, '+FormatDateTime('d "de" mmmm "de" yyyy',DM1.FechaSis);
       ppLabel86.Caption:=DM1.cdsOficio.FieldByName('ESTADO').AsString;
       xInt:=Int(DM1.cdsOficio.fieldbyname('NOFID').AsCurrency);
       ifrac := frac(DM1.cdsOficio.fieldbyname('MONTOTOT').AsFloat)* 100 ;
       mTextSoles.Text:='En Letras : ('+DM1.NumLetra(TRUNC(DM1.cdsOficio.fieldbyname('MONTOTOT').AsFloat),1,1)+' Y ' + formatfloat('00',ifrac)+ '/100'+' '+'Nuevos Soles'+')';

       If DM1.cdsQry1.RecordCount > 0 Then
       Begin
          DbDetRP.DataSource   := DM1.dsQry1;
          ppLblusuario.Caption := dm1.wUsuario;
          ppRepAutTraInt.Print;
          ppRepAutTraInt.Cancel;
       End;
    End
  Else
    Begin
    If Copy(DM1.cdsOficio.FieldByName('ESTADO').AsString,1,1)='E' Then
       Begin
          MessageDlg(' OFICIO DEBE SER TRANSFERIDO, ANTES DE SER IMPRESO!!!', mtInformation,[mbOk],0);
          Exit;
       End;
      DecodeDate(Date,xANo,xMes,xDia);
      Case  xMes of
      1 : xMeses := cMeses[xMes];
      2 : xMeses := cMeses[xMes];
      3 : xMeses := cMeses[xMes];
      4 : xMeses := cMeses[xMes];
      5 : xMeses := cMeses[xMes];
      6 : xMeses := cMeses[xMes];
      7 : xMeses := cMeses[xMes];
      8 : xMeses := cMeses[xMes];
      9 : xMeses := cMeses[xMes];
      10 : xMeses := cMeses[xMes];
      11 : xMeses := cMeses[xMes];
      12 : xMeses := cMeses[xMes];
      end;
      xSql := 'select CIADES CAMPO01,'+quotedstr('Sistema de Seguridad y Bienestar')+
             ' CAMPO02,'+quotedstr('SOCIAL del Magisterio')+' CAMPO03,CIALUGAR ||'+
             quotedstr(' , '+FloatToStr(xDia)+' de '+xMeses+' del '+FloatToStr(xAno)) +
            ' CAMPO04 from tge101 where cntconsol ='+quotedstr('S');
      Dm1.cdsQry3.Close;
      Dm1.cdsQry3.DataRequest(xSql);
      Dm1.cdsQry3.Open;

      xCampo1 := Dm1.cdsQry3.FieldByName('CAMPO01').AsString;
      xCampo2 := Dm1.cdsQry3.FieldByName('CAMPO02').AsString;
      xCampo3 := Dm1.cdsQry3.FieldByName('CAMPO03').AsString;
      xCampo4 := Dm1.cdsQry3.FieldByName('CAMPO04').AsString;
      xCampo5 := dm1.cdsOficio.fieldbyname('NOFID').AsString;
      xCampo5 := inttostr(strtoint(copy(dm1.cdsOficio.fieldbyname('NOFID').AsString,5,5))) +'-'+
                 copy(dm1.cdsOficio.fieldbyname('NOFID').AsString,1,4);

      xGlosa := 'OFICIO N° '+ xCampo5+' -DM';

      xSql := 'TMONID='+quotedstr(dm1.cdsOficio.fieldbyname('TMONID').AsString);
      xTMonAbr := Dm1.DisplayDescrip('prvSQL','TGE103','TMONDES,TMONABR',xSql,'TMONABR');
      xTmondes := Dm1.cdsQry.FieldByName('TMONDES').AsString;

      xSql := 'TIPDESEID='+quotedstR(dm1.cdsoficio.fieldbyname('TIPDESEID').AsString);
      xAgencias := Dm1.DisplayDescrip('prvSQL','CRE104','ACTAGEN',xSql,'ACTAGEN');

      xSql := 'BANCOID='+quotedstR(dm1.cdsoficio.fieldbyname('BANCOID').AsString);
      xCampo6 := Dm1.DisplayDescrip('prvSQL','TGE105','BANCONOM',xSql,'BANCONOM');
      xCAmpo7 := 'OFICINA PRINCIPAL';

      if dm1.cdsOficio.FieldBYName('FGIRO').ASString = 'N' then
        xSql :=
           ' SELECT APO311.NROFICIO ,APO311.ASOAPENOM , TGE103.TMONABR , APO311.TRANSMTO ,APO201.ASODNI, APO311.ASONCTA,D.*                              '
          + ' FROM APO209,APO311 , TGE103,APO201 ,                                                      '
          + ' (                                                                                         '
          + ' SELECT G.BANCOID,MAX(G.CSA) CARGOSA, MAX(G.RSA) REPRESA, MAX(G.CSG) CARGOSG,              '
          + '              MAX(G.RSG) REPRESG, MAX(G.CJI) CARGOJI   , MAX(G.RJI)  REPREJI               '
          + '       FROM (SELECT BANCOID,CASE WHEN FLGCAR = ''SA'' THEN REPCAR ELSE NULL END CSA  ,     '
          + '                    CASE WHEN FLGCAR = ''SA'' THEN REPNOM ELSE NULL END RSA  ,             '
          + '                    CASE WHEN FLGCAR = ''SG'' THEN REPCAR ELSE NULL END CSG  ,             '
          + '                    CASE WHEN FLGCAR = ''SG'' THEN REPNOM ELSE NULL END RSG  ,             '
          + '                    CASE WHEN FLGCAR = ''JI'' THEN REPCAR ELSE NULL END CJI  ,             '
          + '                    CASE WHEN FLGCAR = ''JI'' THEN REPNOM ELSE NULL END RJI                '
          + '             FROM CRE107  ) G                                                              '
          + '       GROUP BY G.BANCOID ) D                                                              '
          + ' WHERE                                                                                     '
          + '   APO209.TIPDESEID     = ''' + DM1.cdsOficio.FieldByName('TIPDESEID').AsString + '''                                                     '
          + '   AND APO209.NOFID     = ''' + DM1.cdsOficio.FieldByName('NOFID').AsString + '''                                            '
          + '   AND APO209.TIPDESEID = APO311.TIPDESEID                                                 '
          + '   AND APO209.NOFID     = APO311.NROFICIO                                                  '
          + '   AND APO209.TMONID    = TGE103.TMONID                                                    '
          + '   AND APO201.ASOID    = APO311.ASOID                                                    '
          + '   AND APO209.BANCOID   = D.BANCOID(+)                                                     '
      else
        xSql :=
           ' SELECT APO311.NROFICIO ,APO311.ASOAPENOM , TGE103.TMONABR , APO311.TRANSMTO ,APO201.ASODNI, COB102.AGENBCODES ASONCTA,D.*                              '
          + ' FROM APO209,APO311 , TGE103, COB102,APO201,                                                       '
          + ' (                                                                                         '
          + ' SELECT G.BANCOID,MAX(G.CSA) CARGOSA,MAX(G.RSA) REPRESA,MAX(G.CSG) CARGOSG,                '
          + '              MAX(G.RSG) REPRESG, MAX(G.CJI) CARGOJI   , MAX(G.RJI)  REPREJI               '
          + '       FROM (SELECT BANCOID,CASE WHEN FLGCAR = ''SA'' THEN REPCAR ELSE NULL END CSA  ,     '
          + '                    CASE WHEN FLGCAR = ''SA'' THEN REPNOM ELSE NULL END RSA  ,             '
          + '                    CASE WHEN FLGCAR = ''SG'' THEN REPCAR ELSE NULL END CSG  ,             '
          + '                    CASE WHEN FLGCAR = ''SG'' THEN REPNOM ELSE NULL END RSG  ,             '
          + '                    CASE WHEN FLGCAR = ''JI'' THEN REPCAR ELSE NULL END CJI  ,             '
          + '                    CASE WHEN FLGCAR = ''JI'' THEN REPNOM ELSE NULL END RJI                '
          + '             FROM CRE107  ) G                                                              '
          + '       GROUP BY G.BANCOID ) D                                                              '
          + ' WHERE                                                                                     '
          + '   APO209.TIPDESEID     = ''' + DM1.cdsOficio.FieldByName('TIPDESEID').AsString + '''                                                     '
          + '   AND APO209.NOFID     = ''' + DM1.cdsOficio.FieldByName('NOFID').AsString + '''                                            '
          + '   AND APO209.TIPDESEID = APO311.TIPDESEID                                                 '
          + '   AND APO209.NOFID     = APO311.NROFICIO                                                  '
          + '   AND APO209.TMONID    = TGE103.TMONID                                                    '
          + '   AND APO209.BANCOID   = D.BANCOID(+)                                                     '
          + '   AND APO311.BANCOID   = COB102.BANCOID(+)                                                     '
          + '   AND APO201.ASOID     = APO311.ASOID                                                    '
          + '   AND APO311.AGENBANCOID = COB102.AGENBCOID(+)                                                     ' ;

      Dm1.cdsQry2.Close;
      Dm1.cdsQry2.DataRequest(xSql);
      Dm1.cdsQry2.Open;

      //** Oficio al Representante del Banco -- [1] Oficio dirigido a Oficina de Créditos --
      //
      x1Campo04.Caption := xcampo4 ;
      x2Campo04.Caption := xcampo4 ;
      x3Campo04.Caption := xcampo4 ;

      if dm1.cdsOficio.FieldByName('FGIRO').AsString = 'N' then
      begin
        x1Campo05.Caption := xGlosa + '-COB' ;
        x1Campo08.caption := Dm1.cdsQry2.FieldByName('REPRESA').AsString ;
        x1Campo09.Caption := Dm1.cdsQry2.FieldByName('CARGOSA').AsString ;
        pplblLinea1.Caption := 'Por medio del presente, agradecemos se sirvan transferir';
        pplblLinea2.caption := 'a la cuenta de ahorros individual de la lista que se adjunta, cargando el monto que' ;
      end
      else
      begin
        x1Campo05.Caption := xGlosa + '-COB' ;
        x1Campo08.caption := Dm1.cdsQry2.FieldByName('REPRESG').AsString ;
        x1Campo09.Caption := Dm1.cdsQry2.FieldByName('CARGOSG').AsString ;
        pplblLinea1.Caption := 'Por medio del presente, agradecemos se sirvan realizar';
        pplblLinea2.caption := 'un giro a cada una de las personas de la lista que se adjunta,cargando el monto que' ;
      end ;
      x1Campo06.Caption := xCampo6 ;
      x1Campo07.Caption := xCampo7 ;
      x1Campo10.Caption := 'genere  la  operación  a  nuestra  cuenta  corriente Nº  ' +
                            dm1.cdsOficio.fieldbyname('CCBCOID').AsString +
                            ',  por un monto';
      x1Campo11.Caption :=  'total de ' + trim(xTmonAbr) + ' '
                             + formatfloat('###,###.00',dm1.cdsoficio.fieldbyname('MONTOTOT').AsFloat) ;//+
      x1Campo13.Caption := '( ' + dm1.cdsoficio.fieldbyname('MONTDES').AsString + ' '+xTmonDes +' ).';
      pplblAdic1.Caption := 'Por un total de ' + IntToStr(DM1.cdsQry2.Recordcount) +' movimientos.';
      if dm1.cdsQry2.RecordCount < 10 then
      begin
         ppLabel19.Visible := False ;
         ppLabel20.Visible := False ;
      end ;
      //ppReport1.Print ;

      //** Relación de Profesores        -- [2] Relación de Profesores incluidos en el Oficio --

      ppDBPipeline1.DataSource := DM1.dsQry2 ;
      If dm1.cdsoficio.FieldByName('FGIRO').AsString = 'N' then
      begin
         x3Campo05.Caption := xGlosa + '-COB';
         pplblCab1.Caption := '' ;
         ppLblCab2.Caption := 'CUENTA' ;
      end
      else
      begin
         x3Campo05.Caption := xGlosa + '-COB';
         pplblCab1.Caption := 'LUGAR' ;
         ppLblCab2.Caption := 'GIRO' ;
      end ;
      lblEstado.Caption:=dm1.cdsoficio.FieldByName('ESTADO').AsString ;
      ppReport3.Print;
      ppDBPipeline1.DataSource := nil ;

      //** Oficio del Diskette     -- [3] Dirigido al Dpto de Sistemas --
      If (DM1.cdsQry2.Recordcount >= 10) and (dm1.cdsoficio.FieldByName('FGIRO').AsString = 'N') then
       begin
         x1Campo04.Caption := xcampo4 ;
         x2Campo04.Caption := xcampo4 ;
         x3Campo04.Caption := xcampo4 ;

         x2Campo05.Caption := xGlosa + '-COB' ;
         x2Campo06.Caption := xCampo6 ;
         x2Campo07.Caption := xCampo7 ;
         x2Campo08.caption := Dm1.cdsQry2.FieldByName('REPREJI').AsString ;
         x2Campo09.Caption := Dm1.cdsQry2.FieldByName('CARGOJI').AsString ;
         x2Campo10.Caption := 'diskette conteniendo ' + IntToStr(DM1.cdsQry2.Recordcount) +' registros por un monto total de '
                              + xTMonAbr + FormatFloat('###,###.00',dm1.cdsOficio.fieldbyname('MONTOTOT').AsFloat) + '.' ;
         x2Campo14.Caption := dm1.cdsOficio.fieldbyname('MONTDES').AsString + ' '+xTmonDes +'.';
        //ppReport2.Print ;
       end;
   End;
//Final APO_202501_DAF
end;

procedure TFOficioDet.BitTransClick(Sender: TObject);
var xSQL,xNroOficio:String;
    Boton,xRegCnt:Integer;
    xRegistro: TBookmark;
begin

  If dbgPendientes.DataSource.DataSet.RecordCount=0 Then Exit;
{  If Copy(DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'CRE_NIV_AUT_USU','USERNIV'),2,1)<'3' Then
     Begin
        MessageDlg('USUARIO NO AUTORIZADO A ESTA OPCION!!!', mtError, [mbOk], 0);
        Exit;
     End; }

  If Copy(DM1.cdsOficio.FieldByName('ESTADO').AsString,1,1)='A' Then
     Begin
        MessageDlg(' OFICIO NO SE ENCUENTRA DISPONIBLE PARA DESEMBOLSO !!! ', mtInformation,[mbOk],0);
        Exit;
     End;

  If Copy(DM1.cdsOficio.FieldByName('ESTADO').AsString,1,1)='T' Then
     Begin
        MessageDlg(' DESEMBOLSO YA FUE TRANSFERIDO A LA UNIDAD DE CAJA/BOVEDA ', mtInformation,[mbOk],0);
        Exit;
     End;

  If Copy(DM1.cdsOficio.FieldByName('ESTADO').AsString,1,1)='P' Then
     Begin
        MessageDlg(' DESEMBOLSO YA FUE PROCESADO POR LA UNIDAD DE CAJA/BOVEDA ', mtInformation,[mbOk],0);
        Exit;
     End;


  If Copy(DM1.cdsOficio.FieldByName('ESTADO').AsString,1,1)<>'E' Then
     Begin
        MessageDlg(' OFICIO NO SE ENCUENTRA EN TRAMITE PARA DESEMBOLSO !!!', mtInformation,[mbOk],0);
        Exit;
     End;


  Boton := Application.MessageBox ('¿Está Seguro De Realizar La TRANSFERENCIA?','Sistema De Créditos',MB_YESNO+MB_ICONQUESTION);
  If Boton = ID_YES Then
     Begin
        xNroOficio:=DM1.cdsOficio.FieldByName('NOFID').AsString;
        xSQL:='SELECT ASOID FROM APO311 A WHERE NROFICIO='+QuotedStr(xNroOficio);
        xRegCnt:=DM1.CountReg(xSQL);
        xSQL:='INSERT INTO CAJ_TRA_DEP(NOFID,FECINIC,FECFIN,MOVTOT,MONTO,MONDES,USUTRANS,FECTRANS,TIPDESEID,OFIESTADO,CREANO,CREMES,CREFDES,MODULOID) '+
              ' VALUES ('+QuotedStr(DM1.cdsOficio.FieldByName('NOFID').AsString)+','+QuotedStr(Copy(DM1.cdsOficio.FieldByName('FREG').AsString,1,10 ))+','+QuotedStr(Copy(DM1.cdsOficio.FieldByName('FREG').AsString,1,10 ))+','+IntToStr(xRegCnt)+','+FloatToStr(DM1.cdsOficio.FieldByName('MONTOTOT').AsFloat)+','+QuotedStr(DM1.cdsOficio.FieldByName('MONTDES').AsString)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(DM1.cdsOficio.FieldByName('TIPDESEID').AsString)+','+QuotedStr('TRANSFERIDO')+','+QuotedStr(DM1.cdsOficio.FieldByName('FECANO').AsString)+','+QuotedStr(DM1.cdsOficio.FieldByName('FECMES').AsString)+','+QuotedStr(Copy(DM1.cdsOficio.FieldByName('FREG').AsString,1,10 ))+',''APO'')';
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);

        xSQL:='UPDATE APO209 SET ESTADO=''TRANSFERIDO'' WHERE NOFID='+QuotedStr(xNroOficio);
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        If DM1.tFlg='I' Then
           Begin
              FPrincipal.MtxOfi.RefreshFilter;
              DM1.cdsOficio.Locate('NOFID', VarArrayOf([TRIM(xNroOficio)]), [loPartialKey]);
           End
        Else
           Begin
              xRegistro:=DM1.cdsOficio.GetBookmark;
              FPrincipal.MtxOfi.RefreshFilter;
              DM1.cdsOficio.GotoBookmark(xRegistro);
           End;
        MessageDlg('DESEMBOLSO TRANSFERIDO CON EXITO A UNIDAD DE CAJA/BOVEDA', mtInformation,[mbOk],0);
        z2bbtnImprime.Visible:=True;
     End;
//Inicio APO_202501_DAF
end;

procedure TFOficioDet.btnArchivoClick(Sender: TObject);
VAR XSEG,xnomarc,fichero,xImpCar,Entero, Decimal, ChecSum,TotReg,Cabecera: sTRING;
    xLinea,linea,Importe: String;
    f: textfile;
begin


 If Copy(DM1.cdsOficio.FieldByName('ESTADO').AsString,1,1)='P' Then
    Begin
        MessageDlg(' YA SE GENERÓ EL ARCHIVO PARA TRANSFERIR AL BANCO ', mtInformation,[mbOk],0);
        Exit;
    End;

 If Copy(DM1.cdsOficio.FieldByName('ESTADO').AsString,1,1)<>'E' Then
    Begin
        MessageDlg(' OFICIO NO SE ENCUENTRA EN TRAMITE PARA DESEMBOLSO !!!', mtInformation,[mbOk],0);
        Exit;
    End;

If dm1.cdsOficio.FieldByname('TIPDESEID').AsString ='20' Then
   Begin
      RecuperaDetalleEdicion('20',dm1.cdsOficio.FieldByname('NOFID').AsString);
      DM1.cdsMGrupo.Close;
      XSQL:='SELECT TO_CHAR(SYSDATE,''SS'') SEG FROM DUAL ';
      DM1.cdsMGrupo.DataRequest(XSQL);
      DM1.cdsMGrupo.Open;
      XSEG:= DM1.cdsMGrupo.FieldByname('SEG').AsString;


      DM1.cdsMGrupo.Close;
      XSQL:='SELECT NROFICIO,SUM(NVL(TRANSMTO,0)) MONTOTOT,COUNT(1) TOTREGDEV FROM APO311 WHERE NROFICIO='+QuotedStr(dm1.cdsOficio.FieldByname('NOFID').AsString)+' AND TIPDESEID='+QuotedStr(dm1.cdsOficio.FieldByname('TIPDESEID').AsString) + ' AND ASOCCI IS NOT NULL GROUP BY NROFICIO ' ;
      DM1.cdsMGrupo.DataRequest(XSQL);
      DM1.cdsMGrupo.Open;

      If  DM1.cdsMGrupo.RecordCount=0 Then
      Begin
        ShowMessage('No existe Devoluciones para transferencia interbancaria - (CCI)');
        exit;
      End;

//    DM1.cdsDetalle.Close;
//    DM1.cdsDetalle.DataRequest('SELECT ASOCODMOD,ASODNI,ASOAPENOM,ASONUMDEV,ASOMONDEV,ASOFECDEV,DOCOFI,ASOCTAAHO,LUGGIRO,TIPDESEID, ASOCCI FROM MDEVCAB WHERE DOCOFI='+QuotedStr(xDocOfi)+' AND ASOANODEV='+QuotedStr(xAnoOfi)+' AND TIPDESEID='+QuotedStr(xCodDes)+' ORDER BY ASOAPENOM');
//    DM1.cdsDetalle.Open;

      ShowMessage('genero archivo' );
      //xnomarc2 := 'C:\GP' + Copy(DM1.cdsDetalle.FieldByName('ASOFECDEV').AsString, 7, 4) + Copy(DM1.cdsDetalle.FieldByName('ASOFECDEV').AsString, 4, 2) + Copy(DM1.cdsDetalle.FieldByName('ASOFECDEV').AsString, 1, 2) +XSEG+'.TXT';
      xnomarc := 'C:\OFICIOS\GP' + Copy(DM1.cdsQry1.FieldByName('FREG').AsString, 7, 4) + Copy(DM1.cdsQry1.FieldByName('FREG').AsString, 4, 2) + Copy(DM1.cdsQry1.FieldByName('FREG').AsString, 1, 2) +XSEG+'.TXT';
      fichero := xnomarc;
      AssignFile(f, Fichero);
      Rewrite(f);
      xImpCar := FormatFloat('######.#0', DM1.cdsMGrupo.FieldByName('MONTOTOT').AsFloat);
      Entero := Copy(DM1.StrZero(xImpCar, 16), 1, 13);
      Decimal := Copy(DM1.StrZero(xImpCar, 16), 15, 2);
      ChecSum := DM1.StrZero(FloatToStr(SumaChecksumCCI('00625395')), 15);
      TotReg := DM1.StrZero(IntToStr(DM1.cdsMGrupo.FieldByName('TOTREGDEV').AsInteger), 6);
      Cabecera := '';
      Cabecera := '#1PC19400625395020      S/' + Entero + Decimal + Copy(DateToStr(DM1.FechaSis), 1, 2) + Copy(DateToStr(DM1.FechaSis), 4, 2) + Copy(DateToStr(DM1.FechaSis), 7, 4) + '-DERRAMAMAGISTERIAL-' + ChecSum + TotReg + '0' + DM1.StrSpace(' ', 15) + '1';
      writeln(f, Cabecera);
      DM1.cdsQry1.First;
      While Not DM1.cdsQry1.Eof Do
      Begin
         Linea := '';
         Importe := FormatFloat('######.#0', DM1.cdsQry1.FieldByName('TRANSMTO').AsCurrency);
         Entero := Copy(DM1.StrZero(Importe, 16), 1, 13);
         Decimal := Copy(DM1.StrZero(Importe, 16), 15, 2);
         Linea := DM1.StrSpace(' ', 1)
         +'2'
         +'B'
         + DM1.cdsQry1.FieldByName('ASOCCI').AsString
         + VerificaCadena(Copy(Trim(DM1.cdsQry1.FieldByName('ASOAPENOM').AsString), 1, 40))
         + 'S/' + Entero + Decimal
         + 'DNI' + Trim(DM1.cdsQry1.FieldByName('ASODNI').AsString)
         + DM1.StrSpace(' ',12-Length(Trim(DM1.cdsQry1.FieldByName('ASODNI').AsString)))
         + 'F'
         + DM1.StrSpace(' ',10)
         + '1'
         + Trim(DM1.cdsQry1.FieldByName('NROFICIO').AsString)+'-TRANS.INTER.BCP-NACION'
         + DM1.StrSpace(' ',40-Length(Trim(DM1.cdsQry1.FieldByName('NROFICIO').AsString)+'-TRANS.INTER.BCP-NACION'))
         + '000'
         + DM1.StrSpace(' ',140);
         writeln(f, Linea);
        DM1.cdsQry1.Next;
      End;
      CloseFile(f);

     //SE ACTUALIZA EN EL APO209 COMO PROCESADO
      xsql:=' UPDATE DB2ADMIN.APO209 SET ESTADO=''PROCESADO'' '+
            '  WHERE NOFID='+QuotedStr(Trim(DM1.cdsQry1.FieldByName('NROFICIO').AsString))+ ' AND  FECANO='+QuotedStr(Copy(DM1.cdsQry1.FieldByName('FREG').AsString, 7, 4)) ;
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      MessageDlg('Se grabó con Exito el archivo TXT', mtInformation, [mbOk], 0);


     // FPrincipal.MtxOfi.RefreshFilter;
        DM1.cdsOficio.edit;
        DM1.cdsOficio.FieldByName('ESTADO').AsString := 'PROCESADO';
        DM1.cdsOficio.Post;
     //DM1.cdsDetalle.Close;
   End;
// Inicio COB_202303_HPC

end;

function TFOficioDet.SumaChecksumCCI(xCuenta: String): Double;
begin
   Result := 0;
   DM1.cdsQry1.First;
   While Not DM1.cdsQry1.Eof Do
   Begin
      Result := Result +  StrToFloat(Copy(DM1.cdsQry1.FieldByName('ASOCCI').AsString,11,10));
      DM1.cdsQry1.Next;
   End;
   Result := Result + StrToInt(xCuenta)
end;

function TFOficioDet.VerificaCadena(xCadena: String): String;
Var
   xAuxiliar, Space: String;
   I: Integer;
Begin
   Result := '';
   For I := 1 To Length(Trim(xCadena)) Do
   Begin
      xAuxiliar := Copy(Trim(xCadena), I, 1);
      If xAuxiliar = 'Ñ' Then xAuxiliar := 'N';
      Result := Result + xAuxiliar;
   End;
   If Length(Trim(Result)) < 40 Then
   Begin
      Space := '';
      For i := 1 To (40 - Length(Trim(Result))) Do
         Space := Space + ' ';
   End;
   Result := Trim(Result) + Space;
end;

procedure TFOficioDet.dbgPendientesRowChanged(Sender: TObject);
begin
If dm1.cdsOficio.FieldByname('TIPDESEID').AsString ='20' Then
     BitTrans.Visible := False
Else BitTrans.Visible := True;
//Final APO_202501_DAF
end;

end.
