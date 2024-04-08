<%@ Page Title="G Suite Details" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gsuite.aspx.cs" Inherits="Email_Gsuite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <!-- Breadcrumps -->
    <div class="breadcrumbs">
        <div class="row">
            <div class="col-sm-6">
                <h1>G Suite Hosting</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb">
                    <li>You are here: </li>
                    <li><a href="../Default.aspx">Home</a>
                    </li>
                    <li><a href="#">Email Services</a>
                    </li>
                    <li class="active">G Suite Hosting</li>
                </ol>
            </div>
        </div>
    </div>

    <!-- End of Breadcrumps -->


    <!--  Pricing Tables -->
    <section class="pricingtables shared">
        <div class="row">
            <div class="col-sm-12">
                <h2>Get Gmail id for your Business communication</h2>
                <p>You can create email id info@yourdomainname.in with 30 GB storage. You can add email id as your orgnisation grows</p>
                <span class="chooseprice">Choose price per period</span>
                <div class="btn-group price-per-period" role="group">
                    
                    <button type="button" class="btn btn-default peryear">Annually</button>
                    
                </div>

            </div>
        </div>

        <div class="row spacing-40 no-gutter">

            <div class="col-sm-3 wow fadeInUp hostingfeatures" data-wow-delay="0.2s">
                <div class="panel panel-info">
                    <div class="panel-heading">
                    </div>
                    <div class="panel-body text-center">
                    </div>
                    <ul class="text-left">
                        <li><a href="#" data-toggle="tooltip" data-placement="top" data-original-title="Protect, Andrew Carnegie enabler">Email Address</a>
                        </li>
                        <li><a href="#" data-toggle="tooltip" data-placement="top" data-original-title="Protect, Andrew Carnegie enabler">Storage</a>
                        </li>
                        <li><a href="#" data-toggle="tooltip" data-placement="top" data-original-title="Protect, Andrew Carnegie enabler">Full-featured web interface</a>
                        </li>
                        <li><a href="#" data-toggle="tooltip" data-placement="top" data-original-title="Protect, Andrew Carnegie enabler">Basic mobile and desktop</a>
                        </li>
                        <li><a href="#" data-toggle="tooltip" data-placement="top" data-original-title="Protect, Andrew Carnegie enabler">Fully synchronized email</a>
                   
                        </li>
                    </ul>
                    <div class="panel-footer">

                    </div>
                </div>
            </div>

            <div class="col-sm-3 wow fadeInUp" data-wow-delay="0.4s">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="text-center">Basic</h3>
                    </div>
                    <div class="panel-body text-center">
                        <div class="monthprice">
                            <h4>&#8377;1800</h4>
                            <span class="per">PER YEAR</span>
                        </div>
                      
                    </div>
                    <ul class="text-center">
                        <li>1</li>
                        <li>30 GB</li>
                        <li><i class="fa fa-check"></i>
                            <div class="visible-xs">Free Setup</div></li>
                        <li><i class="fa fa-check"></i>
                            <div class="visible-xs">Free Setup</div>
                        </li>
                        <li><i class="fa fa-check"></i>
                            <div class="visible-xs">Free Setup</div>
                        </li>
                       
                    </ul>
                    <div class="panel-footer">
                        <a class="btn btn-lg btn-pricetable" href="http://clients.activeservers.in/cart.php?a=add&pid=62">ORDER NOW</a>
                    </div>
                </div>
            </div>

            <div class="col-sm-3 wow fadeInUp most-popular" data-wow-delay="0.6s">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="text-center">Advanced</h3>
                    </div>
                    <div class="panel-body text-center">
                        <div class="monthprice">
                            <h4>&#8377;7500</h4>
                            <span class="per">PER YEAR</span>
                        </div>
                        
                    </div>
                    <ul class="text-center">
                        <li>5</li>
                        <li>150 GB</li>
                        <li><i class="fa fa-check"></i>
                            <div class="visible-xs">Free Setup</div></li>
                        <li><i class="fa fa-check"></i>
                            <div class="visible-xs">Free Setup</div>
                        </li>
                         <li><i class="fa fa-check"></i>
                            <div class="visible-xs">Free Setup</div>
                        </li>
                    </ul>
                    <div class="panel-footer">
                        <a class="btn btn-lg btn-pricetable" href="http://clients.activeservers.in/cart.php?a=add&pid=63">ORDER NOW</a>
                    </div>
                </div>
            </div>

            <div class="col-sm-3 wow fadeInUp" data-wow-delay="0.8s">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="text-center">Professional</h3>
                    </div>
                    <div class="panel-body text-center">
                        <div class="monthprice">
                            <h4>&#8377;21600</h4>
                            <span class="per">PER YEAR</span>
                        </div>
                        
                    </div>
                    <ul class="text-center">
                       <li>15</li>
                        <li>450 GB</li>
                        <li><i class="fa fa-check"></i>
                            <div class="visible-xs">Free Setup</div></li>
                        <li><i class="fa fa-check"></i>
                            <div class="visible-xs">Free Setup</div>
                        </li>
                         <li><i class="fa fa-check"></i>
                            <div class="visible-xs">Free Setup</div>
                        </li>
                    </ul>
                    <div class="panel-footer">
                        <a class="btn btn-lg btn-pricetable" href="http://clients.activeservers.in/cart.php?a=add&pid=64">ORDER NOW</a>
                    </div>
                </div>
            </div>

        </div>
    </section>

      <section class="shared-features">
        <div class="row">
            <div class="col-sm-12">
                <div class="wow fadeInLeft" data-wow-delay="0.2s">
                    <h2>G suite</h2>
                    <p>
                       By using Email hosting, you can access emails from desktop, smart phone with responsible look & feel. Anti Virus technology secure your mail box from
                        virus and malwares.Email hosting gives 100% network up time and 0% data loss. You can get advantages of Gmail. You can check your twitter and google plus feeds in your email box.
                        </p>
                    <br />
                        <p>
                    
                            You can create mailing list, setup the auto responder. ActiveServers does not allow to send spams emails. 
                    </p>

                  
                </div>

                
            </div>
        </div>
    </section>
    <!-- End of Pricing Tables -->

    <!-- Shared Hosting Tabs -->
    ss
        <!--  End of Footer -->
<a href="#top" id="back-to-top"><i class="fa fa-angle-up"></i></a>

    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/hoverIntent.js"></script>
    <script src="../js/superfish.min.js"></script>
    <script src="../js/owl.carousel.js"></script>
    <script src="../js/wow.min.js"></script>
    <script src="../js/jquery.circliful.min.js"></script>
    <script src="../js/waypoints.min.js"></script>
    <script src="../js/jquery.responsiveTabs.js"></script>
    <script src="../js/jquery.slicknav.min.js"></script>
    <script src="../js/retina.min.js"></script>
    <script src="../js/custom.js"></script>
   <script type="text/javascript">


       // ______________ TABS
       $('#shared-hosting-tabs').responsiveTabs({
           startCollapsed: 'accordion'
       });
         </script>
</asp:Content>

