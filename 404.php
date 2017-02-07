<? $this->load->view('components/page_head.php'); ?>
  <body>
<style>
body{
cursor: url(<? echo config_item('cursor'); ?>), default;
background-image: url(<? echo config_item('fon'); ?>);
color:<? echo config_item('fontcolor'); ?>;
}
.jumbotron{
background-image: url(<? echo config_item('header'); ?>);
}
</style>		
    <div style="display:none;">
	 <? echo config_item('scripts'); ?>
    </div>
	<div class="container">
		<div class="jumbotron">
		  <p><? echo config_item('sitedescription'); ?></p>
		</div>
		<div class="row maincont" style="
    background-color: <? echo config_item('tablecolor'); ?>;
">
			<div class="col-lg-8">
			<h4 style="font-size:35px;font-weight:bold;">
			404>
			</h4>
			<h4 style="font-size:25px;font-weight:bold;">
страница не найдена>
</h4>			
			</div>
			
	
			</div>
		</div>
     <div class="row foot">
			<div class="col-lg-12">
				<footer>
				<center><d>© <a href="http://macpay.ru">MacPay</a> <?php echo date('Y') ?> - Аренда интернет магазина</d></center>
	        </footer>
			</div>
		</div>
	</div>		
<? $this->load->view('components/page_foot.php'); ?>