<?php
/* @var $this DokumenController */
/* @var $model Dokumen */
/* @var $form CActiveForm */
?>


<div class="form-normal form-horizontal clearfix">
	<div class="col-lg-9 col-md-10"> 

		<?php $form=$this->beginWidget('CActiveForm', array(
			'id'=>'dokumen-form',
			'enableAjaxValidation'=>false,
			'enableClientValidation' => true,
			'clientOptions' => array(
				'validateOnSubmit' => true,
				),
			'errorMessageCssClass' => 'label label-danger',
			'htmlOptions' => array('enctype' => 'multipart/form-data','autocomplete'=>'off'),
			)); ?>

			<?php echo $form->errorSummary($model, null, null, array('class' => 'alert alert-warning')); ?>



			<div class="form-group">

				<div class="col-sm-4 control-label">
					<?php echo $form->labelEx($model,'cv'); ?>
				</div>   

				<div class="col-sm-8">
					<?php echo $form->error($model,'cv'); ?>
					<?php echo $form->fileField($model,'cv',array('class'=>'btn btn-success')); ?>
				</div>

			</div>  


			
			<div class="form-group">
				<div class="col-md-12">  
				</br></br>
				<?php echo CHtml::submitButton($model->isNewRecord ? 'Submit' : 'Edit', array('class' => 'btn btn-success btn-flat pull-right')); ?>
			</div>
		</div>

		<?php $this->endWidget(); ?>

</div></div><!-- form -->