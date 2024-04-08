<%@ Page Title="Backup VPS - Backup of your website data | ActiveServers" 
MetaDescription="ActiveServers provides website data backup solution with full root access, starting from Rs.300/month only. Easy to connect and manage FTP. No Technical skills required"
    MetaKeywords="backup vps, storage vps, cheap cloud storage, storage server, backup server, cloud storage, backup storage, cheap storage vps, website backup, backing data, backing up software, backup services, automated backups, back up website, back up wordpress, backup solution"

Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Backup.aspx.cs" Inherits="Security_CodeGaurd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <!-- Breadcrumps -->
    <div class="breadcrumbs">
        <div class="row">
            <div class="col-sm-6">
                <h1>Backup VPS</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb">
                    <li>You are here: </li>
                    <li><a href="../Default.aspx">Home</a>
                    </li>
                    <li><a href="#">Security</a>
                    </li>
                    <li class="active">Backup VPS</li>
                </ol>
            </div>
        </div>
    </div>

    <!-- End of Breadcrumps -->


    <!--  Pricing Tables -->
     <!-- <section class="pricingtables shared">
        <div class="row">
            <div class="col-sm-12">
                <h2>Backup of website data on cloud</h2>
                <p>Recover your website data in cash of crashes</p>
                <span class="chooseprice">Choose price per period</span>
                <div class="btn-group price-per-period" role="group">
                    
                    <button type="button" class="btn btn-default peryear">Monthly</button>
                    
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
                        <li><a href="#" data-toggle="tooltip" data-placement="top" data-original-title="Protect, Andrew Carnegie enabler">Disk Space</a>
                        </li>
                        <li><a href="#" data-toggle="tooltip" data-placement="top" data-original-title="Protect, Andrew Carnegie enabler">Website
</a>
                        </li>
                        <li><a href="#" data-toggle="tooltip" data-placement="top" data-original-title="Protect, Andrew Carnegie enabler">Database</a>
                        </li>
                        <li><a href="#" data-toggle="tooltip" data-placement="top" data-original-title="Protect, Andrew Carnegie enabler">Automatic Backup</a>
                        </li>
                        <li><a href="#" data-toggle="tooltip" data-placement="top" data-original-title="Protect, Andrew Carnegie enabler">On Demand Backup</a>
                   
                        </li>

                          <li><a href="#" data-toggle="tooltip" data-placement="top" data-original-title="Protect, Andrew Carnegie enabler">Zip file downloads
 </a>
                   
                        </li>

                          <li><a href="#" data-toggle="tooltip" data-placement="top" data-original-title="Protect, Andrew Carnegie enabler">Full website restore
 </a>
                   
                        </li>

                          <li><a href="#" data-toggle="tooltip" data-placement="top" data-original-title="Protect, Andrew Carnegie enabler">Individual file restore
 </a>
                   
                        </li>
                    </ul>
                    <div class="panel-footer">

                    </div>
                </div>
            </div>

            

            <div class="col-sm-3 wow fadeInUp most-popular" data-wow-delay="0.6s">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="text-center">Basic</h3>
                    </div>
                    <div class="panel-body text-center">
                        <div class="monthprice">
                            <h4>&#8377;100</h4>
                            <span class="per">PER MONTH</span>
                        </div>
                        
                    </div>
                    <ul class="text-center">
                        <li>1 GB</li>
                        <li>
                            UP TO 5</li>
                        <li>
                            UNLIMITED</li>
                        <li>
                            5 DAYS
                        </li>
                         <li><i class="fa fa-times"></i>
                            <div class="visible-xs">Free Setup</div>
                        </li>
                        <li>
                            5/MONTH
                        </li>
                        <li>
                            3/MONTH
                        </li>
                        <li>
                            5/MONTH
                        </li>
                    </ul>
                    <div class="panel-footer">
                        <a class="btn btn-lg btn-pricetable" href="https://clients.activeservers.in/cart.php?a=add&pid=85">ORDER NOW</a>
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
                            <h4>&#8377;280</h4>
                            <span class="per">PER MONTH</span>
                        </div>
                        
                    </div>
                    <ul class="text-center">
                         <li>5 GB</li>
                        <li>
                            UP TO 10</li>
                        <li>
                            UNLIMITED</li>
                        <li>
                            DAILY
                        </li>
                         <li><i class="fa fa-check"></i>
                            <div class="visible-xs">Free Setup</div></li>
                     
                        <li>
                         UNLIMITED
                        </li>
                        <li>
                        UNLIMITED
                        </li>
                        <li>
                     UNLIMITED
                        </li>
                    </ul>
                    <div class="panel-footer">
                        <a class="btn btn-lg btn-pricetable" href="https://clients.activeservers.in/cart.php?a=add&pid=86">ORDER NOW</a>
                    </div>
                </div>
            </div>

            <div class="col-sm-3 wow fadeInUp" data-wow-delay="0.8s">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="text-center">Enterprise</h3>
                    </div>
                    <div class="panel-body text-center">
                        <div class="monthprice">
                            <h4>&#8377;800</h4>
                            <span class="per">PER MONTH</span>
                        </div>
                        
                    </div>
                    <ul class="text-center">
                       
                            <li>25 GB</li>
                        <li>
                            UP TO 100</li>
                        <li>
                            UNLIMITED</li>
                        <li>
                            DAILY
                        </li>
                         <li><i class="fa fa-check"></i>
                            <div class="visible-xs">Free Setup</div></li>
                     
                        <li>
                         UNLIMITED
                        </li>
                        <li>
                        UNLIMITED
                        </li>
                        <li>
                     UNLIMITED
                        </li>
                    </ul>
                    <div class="panel-footer">
                        <a class="btn btn-lg btn-pricetable" href="https://clients.activeservers.in/cart.php?a=add&pid=87">ORDER NOW</a>
                    </div>
                </div>
            </div>

        </div>
    </section>-->
    <!-- End of Pricing Tables -->

	             
                    <!--  Pricing Tables 4 columns - Gutter -->
                    <section class="pricingtables default elements">
                        <div class="row">
                            <div class="col-sm-12">
								<h2>Backup solution of website data on cloud</h2>
                <p>Restore your website's files and database to any previous backup version anytime, anypoint.</p>
                                <h5 class="badge">10% OFF ON ANNUAL PLAN</h5>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-sm-3">
                                <div class="panel panel-info">
                                    <div class="panel-heading">
                                        <h3 class="text-center">Backup 1</h3>
                                    </div>
                                    <div class="panel-body text-center">
                                        <h4>&#8377; 300</h4>
                                        <span class="per">PER MONTH</span>
                                    </div>
                                    <ul class="text-center">
                                        <li>256 GB Disk</li>
                                        <li>1 TB Bandwidth</li>
										<li><i class="fa fa-check"></i> FTP</li>
										<li><i class="fa fa-check"></i> Rsync</li>
                                        <li>100 MBPS speed</li>
                                        <li>24/7 support</li>
                                    </ul>
                                    <div class="panel-footer">
                                        <a class="btn btn-lg btn-pricetable" href="https://clients.activeservers.in/cart.php?a=add&pid=189">ORDER NOW</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="panel panel-info">
                                    <div class="panel-heading">
                                        <h3 class="text-center">Backup 2</h3>
                                    </div>
                                    <div class="panel-body text-center">
                                        <h4>&#8377; 400</h4>
                                        <span class="per">PER MONTH</span>
                                    </div>
                                    <ul class="text-center">
                                        <li>512 GB Disk</li>
                                        <li>4 TB Bandwidth</li>
										<li><i class="fa fa-check"></i> FTP</li>
										<li><i class="fa fa-check"></i> Rsync</li>
                                        <li>100 MBPS speed</li>
                                        <li>24/7 support</li>
                                    </ul>
                                    <div class="panel-footer">
                                        <a class="btn btn-lg btn-pricetable" href="https://clients.activeservers.in/cart.php?a=add&pid=190">ORDER NOW</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="panel panel-info">
                                    <div class="panel-heading">
                                        <h3 class="text-center">Backup 3</h3>
                                    </div>
                                    <div class="panel-body text-center">
                                        <h4>&#8377; 600</h4>
                                        <span class="per">PER MONTH</span>
                                    </div>
                                    <ul class="text-center">
                                        <li>1024 GB Disk</li>
                                        <li>6 TB Bandwidth</li>
										<li><i class="fa fa-check"></i> FTP</li>
										<li><i class="fa fa-check"></i> Rsync</li>
                                        <li>100 MBPS speed</li>
                                        <li>24/7 support</li>
                                    </ul>
                                    <div class="panel-footer">
                                        <a class="btn btn-lg btn-pricetable" href="https://clients.activeservers.in/cart.php?a=add&pid=191">ORDER NOW</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="panel panel-info">
                                    <div class="panel-heading">
                                        <h3 class="text-center">Backup 4</h3>
                                    </div>
                                    <div class="panel-body text-center">
                                        <h4>&#8377; 900</h4>
                                        <span class="per">PER MONTH</span>
                                    </div>
                                    <ul class="text-center">
                                        <li>2048 GB Disk</li>
                                        <li>10 TB Bandwidth</li>
										<li><i class="fa fa-check"></i> FTP</li>
										<li><i class="fa fa-check"></i> Rsync</li>
                                        <li>100 MBPS speed</li>
                                        <li>24/7 support</li>
                                    </ul>
                                    <div class="panel-footer">
                                        <a class="btn btn-lg btn-pricetable" href="https://clients.activeservers.in/cart.php?a=add&pid=192">ORDER NOW</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </section>
                    <!-- End of Pricing Tables 4 columns - Gutter -->
	
	
    <!-- Shared Hosting Tabs -->
    <section class="shared-features">
        <div class="row">
            <div class="col-sm-12">
                <div class="wow fadeInLeft" data-wow-delay="0.2s">

                    <h2>Why choose Backup VPS Service</h2>
                    <p>We can not take backup of website data and database in our servers each day. It is manual task and risky. so we need automation process which takes backup each data automatically. Customers can take backup of website data and database on Backup VPS. </p>
							<br>
							<p>It is basic that you keep backups for your important data. Depending on your situation, this could mean backing up application, or a whole site. The point behind backup VPS is that in case of a system / VPS crash, data loss, or in any case you can restore/access your data. Restoring from a backup VPS may require downtime, yet you know the difference between starting a day before and starting from scratch. Anything you cannot afford to lose, by definition, you must have a backup on another drive.</p>
<br>
<p>As far as techniques, there are many various levels of backups. For VPS, you can backup files on the same VPS so that you can easily get back your old files with just a few clicks.
		
						However, this back up setup will fail badly in case of disk failure or something more complex.
You must also have regular, automatic backups on another drive, such as a backup VPS.	
							
                    </p><br>
					<p>Every backup VPS has full root access, so you can set everything according to your needs. FTP, RSYNC, and more: it depends on you! </p>
                </div>
            </div>
        </div>
		 <div class="row spacing-70">
            <div class="col-sm-3">
                <div class="feature wow zoomIn" data-wow-delay="0.2s">
                    <i class="fa fa-sellsy"></i>
                    <h4>Fast and simple</h4>
                    <p>Easy to connect and manage FTP. No Technical skills required.</p>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="feature wow zoomIn" data-wow-delay="0.4s">
                    <i class="fa fa-server"></i>
                    <h4>Pre-enabled</h4>
                    <p>FTP and Rsync are pre-enabled to easily backup data on Backup VPS.</p>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="feature wow zoomIn" data-wow-delay="0.6s">
                    <i class="fa fa-hdd-o"></i>
                    <h4>Levels of Management</h4>
                    <p>ActiveServers by default offer managed servers. For Fully Managed please contact to support.</p>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="feature wow zoomIn" data-wow-delay="0.8s">
                    <i class="fa fa-life-ring"></i>
                    <h4>24/7 support</h4>
                    <p>Feel Free to contact with us Anytime via Email, Chat or ticket system.</p>
                </div>
            </div>

        </div>
    </section>

		    <!-- FAQ -->

    <section class="faq">
        <div class="row">
            <div class="col-sm-12">
                <h2>Backup VPS Service - Frequently asked questions</h2>
                <p></p>
            </div>
        </div>

        <div class="row spacing-40">
            <div class="col-sm-12">
                <div class="faq-questions">
                    <h3 class="badge">HAVE QUESTIONS ABOUT BACKUP VPS SERVICE?</h3>

                    <div id="accordion" class="panel-group spacing-40">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse1">What is Backup VPS? and What is the usage?</a></h4>
                            </div>
                            <div id="collapse1" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <p>Backup VPS service is designed to hold large amounts of data. These backups VPS service would work wonderfully as a backup solution or as an instant recovery point or storing data.</p>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse2">What forms of payment do you accept?</a></h4>
                            </div>

                            <div id="collapse2" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Currently ActiveServers accept debit cards, net banking payments, digital (UPI) and mobile wallets, mobile payments, bank transfers and PayPal.</p>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse3">What will happen with the backup VPS service if I don't renew it?</a></h4>
                            </div>

                            <div id="collapse3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>We will send you 3 email reminders before the due date, still, you do not get renewed backup VPS service, it will be deleted.</p>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse4">What are the charges if I exceed my bandwidth?</a></h4>
                            </div>

                            <div id="collapse4" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>We do not charge any additional fees or suspend your backup VPS service. We reduce your server network port speed 10 times by the next month.</p>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </section>


    <div class="needsupport">
        <div class="row">
            <div class="col-sm-12">

                <h3 class="badge">YOU NEED SUPPORT?</h3>

                <div class="block-grid-xs-1 block-grid-sm-4 block-grid-md-4 supportchannels">

                    <div class="block-grid-item wow zoomIn" data-wow-delay="0.2s">
                        <a href=""><i class="fa fa-comments-o"></i></a>
                        <h6>Live Chat</h6>
                        <p></p>
                    </div>

                    <div class="block-grid-item wow zoomIn" data-wow-delay="0.4s">
                        <a href=""><i class="fa fa-pencil-square-o"></i></a>
                        <h6>Support Tickets</h6>
                        <p></p>
                    </div>

                    <div class="block-grid-item  wow zoomIn" data-wow-delay="0.6s">
                        <a href=""><i class="fa fa-envelope"></i></a>
                        <h6>Email Support</h6>
                        <p></p>
                    </div>

                    <div class="block-grid-item  wow zoomIn" data-wow-delay="0.8s">
                        <a href=""><i class="fa fa-twitter"></i></a>
                        <h6>Social Media</h6>
                        <p></p>
                    </div>

                </div>

            </div>

        </div>
    </div>

    <!-- End of FAQ -->
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
