﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagePhotoGallery.aspx.cs" Inherits="TechKriti.CMS.Client.Web.Views.PhotoGallery.ManagePhotoGallery" 
    MasterPageFile="~/Web/Shared/Site.Master" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<%@ Register Assembly="TechKriti.Custom.Controls" Namespace="TechKriti.Custom.Controls" TagPrefix="techKriti" %>

<asp:Content ID="contentManageSectorsView" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
        <asp:UpdatePanel ID="uptPanelManageNews" runat="server">
             <ContentTemplate>
                     <table border="0" style="vertical-align:top;width:100%;" >
                        <tr>
                            <td></td>
                              <td style="vertical-align:top;">                            
                                  <techKriti:HyperlinkControl ID="linkPhotoGallery" Text="Add Photo Gallery" runat="server" RequiredActionPermission="AddPhotoGallery" />                                  
                              </td>
                        </tr>
                         <tr>
                             <td colspan="2">
                                   <asp:Label ID="lblStatus" runat="server" Visible="false" ></asp:Label>
                             </td>
                         </tr>
                        <tr>
                            <td colspan="2">
                                  <table border="0" style="border: dashed;">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblSection" runat="server" Text="Section"></asp:Label>
                                                </td>
                                                <td>
                                                     <asp:DropDownList ID="drpDownSections" runat="server">
                                                           <asp:ListItem Value="" Text="Select"></asp:ListItem>
                                                           <asp:ListItem Value="1" Text="Section 1"></asp:ListItem>
                                                           <asp:ListItem Value="2" Text="Section 2"></asp:ListItem>
                                                           <asp:ListItem Value="4" Text="Section 3"></asp:ListItem>
                                                           <asp:ListItem Value="5" Text="Section 4"></asp:ListItem>
                                                       </asp:DropDownList>
                                                </td>
                                                 <td style="width:20px;">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="lblDisplayName" runat="server" Text="Display Name"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtDisplayName" runat="server"></asp:TextBox>
                                                </td>
                                                <td style="width:20px;">&nbsp;</td>                                                 
                                                <td>
                                                    <asp:Button ID="btnPhotoGallerySearch" runat="server" Text="Search" OnClick="btnPhotoGallerySearch_Click" />
                                                </td>
                                            </tr>
                                  </table>
                            </td>
                        </tr>
                         <tr>
                             <td style="width:10px;">
                         </tr>
                        <tr>
                            <td>                              
                            </td>
                            <td>
                                <table border="0" style="width:100%;border: dashed;">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblTotalNumberOfRecords" runat="server" ></asp:Label>
                                            <asp:GridView ID="gridPhotoGallery" DataKeyNames="Id" runat="server" AutoGenerateColumns="false"
                                                AllowPaging="true" AllowCustomPaging="true" PageSize="3" OnPageIndexChanging="gridPhotoGallery_PageIndexChanging" OnRowCommand="gridPhotoGallery_RowCommand" >
                                                <Columns>
                                                        <asp:BoundField HeaderText="Display Name" DataField="DisplayName" ItemStyle-Width="300px" />                                                        
                                                        <asp:TemplateField HeaderText="Action" >
                                                        <ItemTemplate>
                                                             <techKriti:ButtonControl ID="btnEditPhotoGallery" runat="server" CommandName='<%# TechKriti.CMS.Client.Web.Views.PhotoGallery.ManagePhotoGallery.EditCommandName  %>' 
                                                                   RequiredActionPermission="UpdatePhotoGallery"  Text="Edit" CommandArgument='<%# Eval("Id") %>' />
                                                             <techKriti:ButtonControl ID="btnPhotoGallery" runat="server" Text="Delete" CommandName='<%# TechKriti.CMS.Client.Web.Views.PhotoGallery.ManagePhotoGallery.DeleteCommandName  %>' 
                                                                  RequiredActionPermission="DeletePhotoGallery" CommandArgument='<%# Eval("Id") %>'  OnClientClick="return confirm('Are you sure you want to delete?')" />
                                                        </ItemTemplate>
                                        
                                                    </asp:TemplateField>                                    
                                                </Columns>
                                            </asp:GridView> 
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
               </ContentTemplate>
         </asp:UpdatePanel>
</asp:Content>
