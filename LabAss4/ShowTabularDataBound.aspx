<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowTabularDataBound.aspx.cs" Inherits="LabAss4.ShowTabularDataBound" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><h1>GridView</h1>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    </Columns>
                </asp:GridView>
            </p></div>
        <div><h1>DataList</h1>
            <p class="auto-style1">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="UserName" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        UserName:
                        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                        <br />
                        Password:
                        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
            </p></div>
        <div><h1>DetailsView</h1>
            <p>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    </Fields>
                </asp:DetailsView>
            </p></div>
        <div><h1>FormView</h1>
            <p>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="UserName" DataSourceID="SqlDataSource1">
                    <EditItemTemplate>
                        UserName:
                        <asp:Label ID="UserNameLabel1" runat="server" Text='<%# Eval("UserName") %>' />
                        <br />
                        Password:
                        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        UserName:
                        <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                        <br />
                        Password:
                        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        UserName:
                        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                        <br />
                        Password:
                        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
            </p></div>
        <div><h1>Repeater</h1>
            <p>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <%#Eval("Username") %>
                        <i>-->y</i>
                        <%#Eval("password") %>
                    </ItemTemplate>
                </asp:Repeater>
            </p></div>
        <div><h1>ListView</h1>
            <p>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="UserName">
                    <AlternatingItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                            </td>
                            <td>
                                <asp:Label ID="UserNameLabel1" runat="server" Text='<%# Eval("UserName") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>未返回数据。</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                            </td>
                            <td>
                                <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server">UserName</th>
                                            <th runat="server">Password</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style=""></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
            </p></div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SampleDatabaseConnectionString2 %>" SelectCommand="SELECT [UserName], [Password] FROM [Logon]"></asp:SqlDataSource>

    </form>
</body>
</html>
