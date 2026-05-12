<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AnimalClinic.aspx.cs" Inherits="AnimalClinicBillingSystem.AnimalClinic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Cebu City Animal Clinic - Billing System</h1>
            <br /> <br />

            <asp:ValidationSummary ID="ValidationSummary" runat="server" 
                HeaderText="Please fix the following errors:" 
                ForeColor="Red" />

            Animal's Name: <asp:TextBox ID="txtAnimalName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAnimalName" runat="server" 
                ControlToValidate="txtAnimalName" 
                ErrorMessage="Animal name is required" 
                ForeColor="Red" Font-Italic="True"></asp:RequiredFieldValidator><br />

            Owner's Name: <asp:TextBox ID="txtOwnerName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvOwnerName" runat="server" 
                ControlToValidate="txtOwnerName" 
                ErrorMessage="Owner name is required" 
                ForeColor="Red" Font-Italic="True">
            </asp:RequiredFieldValidator><br />

            Animal Type: <asp:DropDownList ID="ddlAnimalType" runat="server">
                            <asp:ListItem Text="--- Select Animal Type ---" Value=""></asp:ListItem>
                            <asp:ListItem Text="Dog" Value="Dog"></asp:ListItem>
                            <asp:ListItem Text="Chicken" Value="Chicken"></asp:ListItem>
                            <asp:ListItem Text="Snake" Value="Snake"></asp:ListItem>
                            <asp:ListItem Text="Cat" Value="Cat"></asp:ListItem>
                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                        </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvAnimalType" runat="server" 
                ControlToValidate="ddlAnimalType" 
                ErrorMessage="Please select animal type" 
                Forecolor="Red" Font-Italic="True" >
            </asp:RequiredFieldValidator><br />

            Treatment Days: <asp:TextBox ID="txtTreatmentDays" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvTreatmentDays" runat="server" 
                ControlToValidate="txtTreatmentDays" 
                ErrorMessage="Treatment days are required. " 
                Forecolor="Red" Font-Italic="True" ></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvTreatment" runat="server" 
                ControlToValidate="txtTreatmentDays" 
                MinimumValue="1" MaximumValue="365" Type="Integer"
                ErrorMessage="Enter a valid number of days (1-365)" 
                ForeColor="Red" Font-Italic="True">
            </asp:RangeValidator><br />

            Service Type: <asp:DropDownList ID="ddlServiceType" runat="server">
                            <asp:ListItem Text="--- Select Service Type ---" Value=""></asp:ListItem>
                            <asp:ListItem Text="Basic Care" Value="Basic Care"></asp:ListItem>
                            <asp:ListItem Text="Intensive Care" Value="Intensive Care"></asp:ListItem>
                            <asp:ListItem Text="Vaccination" Value="Vaccination"></asp:ListItem>
                            <asp:ListItem Text="Surgery" Value="Surgery"></asp:ListItem>
                            <asp:ListItem Text="Check-up" Value="Check-up"></asp:ListItem>
                        </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvServiceType" runat="server" 
                ControlToValidate="ddlServiceType" 
                ErrorMessage="Please select service type" 
                Forecolor="Red" Font-Italic="True" >
            </asp:RequiredFieldValidator><br />

            Membership Status: <asp:RadioButtonList ID="rbMembership" runat="server">
                                <asp:ListItem Text="Premium Member (20% off)" Value="Premium"></asp:ListItem>
                                <asp:ListItem Text="Regular Member (10% off)" Value="Regular"></asp:ListItem>
                                <asp:ListItem Text="Non-Member" Value="Non-Member"></asp:ListItem>
                            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rfvMembership" runat="server" 
                ControlToValidate="rbMembership" 
                ErrorMessage="Please select a membership status" 
                Forecolor="Red" Font-Italic="True" >
            </asp:RequiredFieldValidator><br />

            <asp:Button ID="btn" runat="server" Text="Compute Bill" OnClick="btnCompute" /><br /><br />

            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
