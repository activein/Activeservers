<%@ Page Title="Subscribe" EnableEventValidation="false" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SubScribe.aspx.cs" Inherits="SubScribe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="contact">
        <div class="row">
            <div class="col-sm-8">
                <h3>Subscribe</h3>
                <div id="sendstatus"></div>
<div id="contactform">
    
    <table>
        <tr>
            <td>
              <h6> Name:*</h6>
            </td>
             </tr>
        <tr>
            <td>
                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Can Not Blank" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>

             

                </td>
        </tr>
        <tr>
            <td><h6>LastName:*</h6></td>  </tr>
        <tr>
            <td>
                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Can Not Blank" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
    </td>  </tr>

        <tr>
            <td><h6>Email Id:*</h6></td> </tr>
        <tr>
            <td>
                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox3" runat="server" ErrorMessage="Not A Valid ID" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Can Not Blank" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
       </tr>

        <tr>
            <td>
            <asp:Button CssClass="submit" ID="Button1" BackColor="#DE6262" ForeColor="White" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
        </tr>
    </table>
   
</div>
            </div>

             <div class="col-sm-3 col-sm-offset-1">
             <h4 class="badge">E-mail</h4>
            <p><a href="">info@activeservers.in</a></p>
            <h4 class="badge">Phone</h4>
            <p>+91 7359158072</p>
            <h4 class="badge">On the Web</h4>
            <ul>
            <li><a href="https://www.facebook.com/ActiveserversIndia/">Facebook</a></li>
            <li><a href="https://twitter.com/Activeserver_ho">Twitter</a></li>
            <li><a href="">Linked In</a></li>
         
            </ul>
            </div>
        </div>
    </section>
</asp:Content>

