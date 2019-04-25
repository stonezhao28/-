<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Web.main_paymanager.program.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script   type="text/javascript">  
        function enter(obj) {
            if (event.keyCode == 13) {
                if (obj == document.all.txtPwd2) {
                    document.all.btnSave.click();
                }
                else {
                    document.all.txtPwd2.focus();
                    //document.all.Button2.click();  
                }
            }
        }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <script type="text/javascript">
        function enter(obj) {
            if (event.keyCode == 13) {
                if (obj == document.all.txtCardID) {
                    document.all.txtPwd.focus();

                } else
                    alert("111");
            }
        }
        function ConfirmSave() {
            if (Page_ClientValidate()) {
                return confirm('确定要保存所选择的数据项吗？');
            }
            else {
                return false;
            }
        }
</script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
    <div>
         会员卡号：
		<asp:textbox id="txtCardID" runat="server" onfocus="return clear()"  onkeyup="enter(this)"></asp:textbox><font color="red">*
													<asp:requiredfieldvalidator id="vrftxtCardID" runat="server" controltovalidate="txtCardID" display="None" ErrorMessage="系统提示：会员卡号不能为空"></asp:requiredfieldvalidator></font>
		密码：
		<asp:textbox id="txtPwd" runat="server"  maxlength="20" onfocus="return clear()"></asp:textbox><font color="red">*
													<asp:requiredfieldvalidator id="vrftxtPwd" runat="server" ErrorMessage="系统提示：会员密码不能为空" display="None" controltovalidate="txtPwd"></asp:requiredfieldvalidator></font>

        <asp:button id="btnSave" runat="server"  text="保 存"
                    onclick="btnShuaka_Click" OnClientClick="return ConfirmSave()" ></asp:button>
    </div>
            </table>
    </form>
</body>
</html>
