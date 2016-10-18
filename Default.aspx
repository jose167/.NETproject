<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


     <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/busi1.png" alt="group" width="1000" height="150">
        <div class="carousel-caption">
          <h3 class="heading-primary">Welcome</h3>
          <p>a rapidly growing Company</p>
        </div>      
      </div>

      <div class="item">
        <img src="images/bussines2.jpg" alt="Chicago" width="1000" height="150">
        <div class="carousel-caption">
          <h3 class="heading-primary">Manage your Database</h3>
          <p>Fast and easy</p>
        </div>      
      </div>
    
      <div class="item">
        <img src="images/bussines3.jpg" alt="Los Angeles" width="1000" height="150">
        <div class="carousel-caption">
          <h3 class="heading-primary">The future is now </h3>
          <p>Contact us today: 01-258-46-86</p>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>

    <div class="superContainer">
    <h1 class="heading-primary">Always on </h1>
        <h4 class="sub-heading"> Happy Customers</h4>
      <p class="justify">Zoom’s international customer base has grown across a variety of industries. Large international companies, such as JAS Forwarding Worldwide, now rely on Zoom to help manage their widely dispersed workforce of thousands of employees with virtual team briefings, trainings, and executive meetings. Startups – from HitReach and Brevity, technology companies with staff and customers around the world, to YUMs Yoga, an Australian virtual yoga center – have also found that Zoom is the easiest, highest quality, and most affordable way to stay connected. We’ve also become a mainstay at the Higher Colleges of Technology, the largest higher education institution in the United Arab Emirates with approximately 20,000 students on 17 campuses – stay tuned for more on HCT and Zoom in an upcoming case study!</p>
    <p>If you would like to participate in the Summer Trip&nbsp;&nbsp; click </p>
    <p>For update or Delate entry&nbsp; <a href="trip.aspx">click</a></p>

    </div>
</asp:Content>

