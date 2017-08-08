<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title><?php echo CHtml::encode($this->pageTitle); ?> - <?php echo CHtml::encode(Yii::app()->name); ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="author" content="Mugi Rachmat">
	<?php
	$baseUrl = Yii::app()->theme->baseUrl; 
	$cs = Yii::app()->getClientScript();
	Yii::app()->clientScript->registerCoreScript('jquery');
	?>
	<link href="<?php echo $baseUrl;?>/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="<?php echo $baseUrl;?>/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link href="<?php echo $baseUrl;?>/assets/plugins/themify/themify-icons.css" rel="stylesheet">
	<link href="<?php echo $baseUrl;?>/assets/css/style.css" rel="stylesheet">
	<link href="<?php echo $baseUrl;?>/assets/css/responsive.css" rel="stylesheet">
</head>

<body>

	<?php require_once('tpl_navigation.php'); ?>

	<div class="page_banner about">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="banner-heading"><?php echo CHtml::encode($this->pageTitle); ?></div>    
				</div>  
			</div>
		</div>
	</div>

	<main id="maincontent">
		<div class="container">
			<div class="about_us">
				<div class="row">

					

					<div class="col-md-3">

						<div class="Resume">
							<h1>My Account</h1>
							<ul class="unstyled">

								<?php $this->widget('zii.widgets.CMenu',array(
									'htmlOptions'=>array('class'=>'unstyled'),
									'encodeLabel'=>false,
									'items'=>array(
										array('label'=>'<i class="fa fa-caret-right"></i> Data Pribadi','url'=>array('/pelamar/profile'),'visible'=>yii::app()->user->getLevel()==2),
										array('label'=>'<i class="fa fa-caret-right"></i> Dokumen Lamaran','url'=>array('/pelamar/dokumen'),'visible'=>yii::app()->user->getLevel()==2),                                  
										array('label'=>'<i class="fa fa-caret-right"></i> Pengajuan Lamaran','url'=>array('/filelamaran/history'),'visible'=>yii::app()->user->getLevel()==2),                                  
										array('label'=>'<i class="fa fa-caret-right"></i> Account Setting','url'=>array('/pelamar/update'),'visible'=>yii::app()->user->getLevel()==2),
										array('label'=>'<i class="fa fa-caret-right"></i> Edit Password','url'=>array('/pelamar/password'),'visible'=>yii::app()->user->getLevel()==2),
										),
										)); ?>


									</ul>
								</div>

							</div>

							<div class="col-md-9">
								<?php echo $content; ?>
							</div>

						</div>
					</div>
				</div>
			</main>

			<script src="<?php echo $baseUrl;?>/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
			<script src="<?php echo $baseUrl;?>/assets/js/common.js"></script>

		</body>
		</html>
