<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="BasicWebFormApplication.Employees1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            <asp:Label ID="Label3" runat="server" Text="Lütfen Kullanıcı Adı ve Şifresini giriniz." ForeColor="Red"></asp:Label>
              <br /><br />
            <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı :" Width="100px"></asp:Label>
                 <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Kullanici Adi alanı boş geçilemez" ControlToValidate="txtKullaniciAdi" ></asp:RequiredFieldValidator>
            <br /> <br />
             <asp:Label ID="Label2" runat="server" Text="Şifre :" Width="100px"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" Şifre alanı boş geçilemez" ControlToValidate="txtPassword" ></asp:RequiredFieldValidator>
            <br /> <br />
             <asp:Label ID="Label4" runat="server" Text=" " Width="100px"></asp:Label>
            <asp:Button ID="btnSubmit" runat="server" Text="Giriş" OnClick="btnSubmit_Click"  Width="174px"/>
            <br />
              <hr/>
          <asp:DropDownList ID="ddlCustomers" runat="server" OnSelectedIndexChanged="ddlCustomers_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
        <hr />
            <asp:GridView ID="gvCustomers" runat="server"></asp:GridView>
            <hr />
            <asp:Label ID="lblSonuc" runat="server" Text=" "></asp:Label>
        </div>
    </form>
    
</body>
</html>
