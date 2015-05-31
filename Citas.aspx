﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Citas.aspx.cs" Inherits="Citas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <form class="form-horizontal" runat="server">
    <div class="containter">
	    <div class="col-lg-6">
            <div class="well bs-component">
                <fieldset>
                    <legend>Crear Citas</legend>
                      
                    <!--Input Animal ID-->
                    <div class="form-group">
                        <label for="inputAnimalID" class="col-lg-2 control-label">Animal ID</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="inputAnimalID" placeholder="Animal ID" runat="server" />
                        </div>
                    </div>

                    <!--Input Descripcion-->
                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Descripción</label>
                        <div class="col-lg-10">
                            <textarea class="form-control textarea" rows="3" id="inputDescripcion" runat="server"></textarea>
                        </div>
                    </div>

                    <!--Input Fecha-->
                    <div class="form-group">
                        <label for="select" class="col-lg-2 control-label" >Fecha dd/mm/aaaa</label>                    
                        <div class="col-md-3">
                            <select class="form-control" id="inputDia" runat="server">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                                <option>11</option>
                                <option>12</option>
                                <option>13</option>
                                <option>14</option>
                                <option>15</option>
                                <option>16</option>
                                <option>17</option>
                                <option>18</option>
                                <option>19</option>
                                <option>20</option>
                                <option>21</option>
                                <option>22</option>
                                <option>23</option>
                                <option>24</option>
                                <option>25</option>
                                <option>26</option>
                                <option>27</option>
                                <option>28</option>
                                <option>29</option>
                                <option>30</option>
                                <option>31</option>
                            </select> 
                        </div>
                        <div class="col-md-3">
                            <select class="form-control" id="inputMes" runat="server">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                                <option>11</option>
                                <option>12</option>
                            </select> 
                        </div>
                        <div class="col-md-3">
                            <select class="form-control" id="inputAño" runat="server">
                                <option>2010</option>
                                <option>2011</option>
                                <option>2012</option>
                                <option>2013</option>
                                <option>2014</option>
                            </select> 
                        </div>
                    </div>

                    <!--Botones Cancel y Submit-->
                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <button class="btn btn-default">Cancel</button>
                            <asp:Button ID="Button1"  class="btn btn-primary" runat="server" Text="Submit" OnClick="Button1_Click" />                    
                        </div>
                    </div>  
                </fieldset>
                
            <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt; &gt;</div></div>
            
        </div>
    </div>
     
    <div class="container">
        <div class="col-lg-6">
             <asp:GridView runat="server" class="table table-striped table-hover" ID="GridView1"  AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Animal,Fecha" DataSourceID="SqlDataSource1" AllowPaging="True">
                      <Columns>
                          <asp:BoundField DataField="Animal" HeaderText="Animal" ReadOnly="True" SortExpression="Animal" />
                          <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="True" SortExpression="Fecha" />
                          <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Citas]"></asp:SqlDataSource>
                               

    </div>
    </div>
    </form>  

</asp:Content>