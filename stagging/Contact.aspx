<%@ Page Title="Contact To ActiveServers" Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="map_wrapper">
    <div id="map_canvas" class="mapping">

        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3145.6773980234207!2d74.25715131443876!3d22.8343469290677!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39611dac218ff187%3A0xca7bb952afe63b78!2sACTIVE+SERVERS!5e1!3m2!1sen!2sin!4v1492931858179" width="1200" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

    </div>
    </div>

    <section class="contact">
        <div class="row">
            <div class="col-sm-8">
                <h3>Contact us</h3>
                <div id="sendstatus"></div>
<div id="contactform">



<form method="post" action="sendmail.php">

            <p><label for="name">Name:*</label> <asp:TextBox ID="TextBox1"  CssClass="form-control" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Can Not Blank" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </p>
            <p><label for="email">Email:*</label> <asp:TextBox ID="TextBox2"  CssClass="form-control" runat="server"></asp:TextBox>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox2" runat="server" ErrorMessage="Not A Valid ID" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Can Not Blank" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
        
            </p>
            <p><label for="comments">Message:*</label> <asp:TextBox ID="TextBox3" TextMode="MultiLine"  CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Can Not Blank" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>

            </p>
            <p>
                <asp:Button ID="submit"  BackColor="#DE6262" ForeColor="White" CssClass="submit" runat="server" Text="Submit" OnClick="submit_Click" />
                

            </p>

</form>
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

