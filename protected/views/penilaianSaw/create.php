<?php
/* @var $this PenilaianSawController */
/* @var $model PenilaianSaw */

$this->breadcrumbs=array(
	'Penilaian Saws'=>array('index'),
	'Review',
	);

	$this->pageTitle='Review Nasabah';
	?>

	<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>