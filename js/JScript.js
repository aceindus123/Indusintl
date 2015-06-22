function useBillInfo()
{
var idx;
{
frmMain.txtaddress1.value = frmMain.txtaddr1.value;
frmMain.txtaddress2.value = frmMain.txtaddr2.value;
frmMain.txtcity1.value = frmMain.txtcity.value;
frmMain.txtstate1.value = frmMain.txtstate.value;
frmMain.txtzip1.value = frmMain.txtzip.value;

//frmMain.ShipTo_Name_First.value= frmMain.BillTo_Name_First.value;
//frmMain.ShipTo_Name_Last.value = frmMain.BillTo_Name_Last.value;
//frmMain.ShipTo_Address.value = frmMain.BillTo_Address.value;
//frmMain.ShipTo_City.value = frmMain.BillTo_City.value;
frmMain["txtaddress1"].enabled=true;
frmMain["txtaddress2"].enabled=true;
frmMain["txtcity1"].enabled=true;
frmMain["txtstate1"].enabled=true;
frmMain["txtzip1"].enabled=true;
  }
}

