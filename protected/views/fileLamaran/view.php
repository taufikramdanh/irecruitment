<?php
/* @var $this FileLamaranController */
/* @var $model FileLamaran */
$dataBagian=Bagian::model()->findByPk($model->Lowongan->bagian);
$dataJabatan=Jabatan::model()->findByPk($model->Lowongan->jabatan);
$dataProvider=new CActiveDataProvider('Test',array('criteria'=>array('condition'=>'lamaran_id='.$model->id)));

$this->breadcrumbs=array(
	'File Lamarans'=>array('index'),
	$model->id,
	);

if(YII::app()->user->getLevel()==2){
	$this->pageTitle='Detail File Lamaran';
}else{
	$this->pageTitle='Verifikasi File Lamaran';
}
?>

<?php if(YII::app()->user->getLevel()==1): ?>

	<?php if($model->status_lamaran=="Diverifikasi"): ?>

		<?php if($model->test_id==1): ?>
			<?php echo CHtml::link('<i class="fa fa-plus"></i> Buat Pengumuman', 
				array('test/create', 'loker'=>$model->lowongan_id, 'lamaran'=>$model->id, 'user'=>$model->id_people
					), array('class' => 'btn btn-danger btn-flat', 'title'=>'Buat Pengumuman Test'));
					?>	 	
				<?php endif; ?>

			<?php endif; ?>

			<?php if($model->status_lamaran!="Ditolak"): ?>

				<?php if($model->status_lamaran=="Diverifikasi"){ ?>

					<button class="btn btn-danger btn-flat" disabled>Lamaran telah Diverifikasi</button>

					<?php }else{ ?>

						<?php 
						echo CHtml::link('<i class="fa fa-check"></i> Verifikasi Lamaran', 
							array('diterima', 'id'=>$model->id,
								), array('class' => 'btn btn-danger btn-flat', 'title'=>'Terima Lamaran'));
						?>

						<?php } ?>

					<?php endif; ?>

					<?php if($model->status_lamaran!="Diverifikasi"): ?>

						<?php echo CHtml::link('<i class="fa fa-remove"></i> Tolak', 
							array('ditolak', 'id'=>$model->id,
								), array('class' => 'btn btn-danger btn-flat', 'title'=>'Tolak Lamaran'));
								?>
							<?php endif; ?>

						<?php endif; ?>


						<?php
						if($model->status_lamaran=="Belum di Verifikasi"){
							$alert = "warning";
						}else if($model->status_lamaran=="Diverifikasi"){
							$alert = "success";
						}else{
							$alert = "danger";
						}
						?>

						<?php if(YII::app()->user->getLevel()==2): ?>

							<?php if($model->status_lamaran!="Diverifikasi"): ?>

								<?php echo CHtml::link('<i class="fa fa-close"></i> Batalkan Lamaran', 
									array('dibatalkan', 'id'=>$model->id,
										), array('class' => 'btn btn-warning btn-flat', 'title'=>'Batalkan Lamaran'));
										?>

									<?php endif; ?>

								<?php endif; ?>

								<?php if($model->status_lamaran!="Lulus"){ ?>

									<div class="alert alert-<?php echo $alert; ?>">File Lamaran ini <?php echo $model->status_lamaran; ?></div>

									<?php }else{ ?>

										<?php if(YII::app()->user->getLevel()==2): ?>

										<div class="alert alert-info">Selamat Anda Telah Lulus Seleksi, dan Menjadi Bagian dari Kami</div>

									<?php endif; ?>

									<?php } ?>
									<div class="col-md-6">

										<h4><i class="ti ti-user"></i> Data Pribadi</h4>
										<?php
										$data=Pelamar::model()->findByAttributes(array('id_user'=>$model->id_people));
										$this->widget('zii.widgets.CDetailView', array(
											'data' => $data,
											'htmlOptions'=>array("class"=>"table "),
											'attributes' => array(


												'nama',
												'tempat_lahir',
												'tanggal_lahir',
												'agama',
												'jenis_kelamin',
												'golongan_darah',
												'kewarganegaraan',
												array('label'=>'Umur','value'=>Pelamar::model()->countBirth($data->tanggal_lahir)." Tahun"),
												'hp',

												'alamat_domisili',
												array('name'=>'status_domisili','value'=>Pelamar::model()->domisili($data->status_domisili)),
												array('name'=>'kota_id','value'=>$data->Kota->name),
												array('name'=>'provinsi_id','value'=>$data->Provinsi->name),

																					// array('name'=>'status_menikah','value'=>Pelamar::model()->menikah($data->status_menikah)),
																					// 'tanggal_menikah',
																					// 'no_jamsostek',
																					// 'no_sim',
																					// 'no_npwp',
																					// 'telephone_pribadi',
																					// 'telephone_rumah',



												),
											));
											?> 
										</div>
										<div class="col-md-6 col-lg-12 col-xs-12">
											<h4><i class="fa fa-calendar"></i> File</h4>
											<?php $this->widget('zii.widgets.CDetailView', array(
												'data'=>$model,
												'htmlOptions'=>array("class"=>"table"),
												'attributes'=>array(
													'tanggal_upload',
																						// 'status_lamaran',
													),
													)); ?>

													<h4><i class="fa fa-file-o"></i> Lamaran</h4>
													<?php $this->widget('zii.widgets.CDetailView', array(
														'data'=>$model,
														'htmlOptions'=>array("class"=>"table"),
														'attributes'=>array(

															array('label'=>'Bagian','value'=>$dataBagian->nama),
															array('label'=>'Jabatan','value'=>$dataJabatan->nama),

															),
															)); ?>

															<?php if($model->verifikasi_id!=0): ?>

																<h4><i class="fa fa-eye"></i> Status</h4>
																<?php $this->widget('zii.widgets.CDetailView', array(
																	'data'=>$model,
																	'htmlOptions'=>array("class"=>"table"),
																	'attributes'=>array(
																		'tanggal_verifikasi',
																		'keterangan',
																// 'verifikasi_id',
																		),
																		)); ?>	
																	</div>

																<?php endif; ?>

																<div class="col-md-12">


																	<?php if(YII::app()->user->getLevel()==1): ?>
																		<?php if($model->keterangan==""): ?>
																			<div class="form-normal form-horizontal clearfix">
																				<div class="col-md-9"> 

																					<?php $form=$this->beginWidget('CActiveForm', array(
																						'id'=>'people-form',
																						'enableAjaxValidation'=>false,
																						'enableClientValidation'=>true,
																						'clientOptions'=>array('validateOnSubmit'=>true),
																						'htmlOptions' => array('enctype' => 'multipart/form-data'),
																						)); ?>

																						<?php echo $form->errorSummary($model, null, null, array('class' => 'alert alert-warning')); ?>


																						<div class="form-group">

																							<div class="col-sm-4 control-label">
																								<?php echo $form->labelEx($model,'keterangan'); ?>
																							</div>   

																							<div class="col-sm-8">
																								<?php echo $form->error($model,'keterangan'); ?>
																								<?php echo $form->textArea($model,'keterangan',array('class'=>'form-control')); ?>
																							</div>

																						</div>   	


																						<div class="form-group">
																							<div class="col-md-12">  
																							</br></br>
																							<?php echo CHtml::submitButton($model->isNewRecord ? 'Unggah' : 'Kirim', array('class' => 'btn btn-default btn-flat pull-right')); ?>
																						</div>
																					</div>

																					<?php $this->endWidget(); ?>

																				</div></div><!-- form -->		

																			<?php endif; ?>
																		<?php endif; ?>



																		<h4><span class="ti-user"></span> Status Seleksi</h4>
																		<?php $this->widget('zii.widgets.grid.CGridView', array(
																			'id'=>'test-grid',
																			'dataProvider'=>$dataProvider,
																			'itemsCssClass' => 'table table-bordered table-striped dataTable table-hover',
																			'columns'=>array(

																				array(
																					'header'=>'Test 1',
																					'visible'=>Yii::app()->user->getLevel()==1,
																					'class' => 'CButtonColumn',
																					'template' => '{update}',
																					'class'=>'CButtonColumn',
																					'updateButtonUrl' => 'Yii::app()->controller->createUrl("test/update1",array("id"=>$data->id_test,))'
																					),		

																				'status1',
																				'berita_acara1',

																				),
																				)); ?>		

																		<?php $this->widget('zii.widgets.grid.CGridView', array(
																			'id'=>'test-grid',
																			'dataProvider'=>$dataProvider,
																			'itemsCssClass' => 'table table-bordered table-striped dataTable table-hover',
																			'columns'=>array(


																				array(
																					'header'=>'Test 2',
																					'visible'=>Yii::app()->user->getLevel()==1,
																					'class' => 'CButtonColumn',
																					'template' => '{update}',
																					'class'=>'CButtonColumn',
																					'updateButtonUrl' => 'Yii::app()->controller->createUrl("test/update2",array("id"=>$data->id_test,))'
																					),		

																				'status2',
																				'berita_acara2',



																				),
																				)); ?>	

																		<?php $this->widget('zii.widgets.grid.CGridView', array(
																			'id'=>'test-grid',
																			'dataProvider'=>$dataProvider,
																			'itemsCssClass' => 'table table-bordered table-striped dataTable table-hover',
																			'columns'=>array(



																				array(
																					'header'=>'Test 3',
																					'visible'=>Yii::app()->user->getLevel()==1,
																					'class' => 'CButtonColumn',
																					'template' => '{update}',
																					'class'=>'CButtonColumn',
																					'updateButtonUrl' => 'Yii::app()->controller->createUrl("test/update3",array("id"=>$data->id_test,))'
																					),		


																				'status3',
																				'berita_acara3',




																				),
																				)); ?>		
																			</div>

																			<?php if($model->status_lamaran=="Diverifikasi"): ?>
																				<?php if(YII::app()->user->getLevel()==1): ?>
																					<?php echo CHtml::link('<i class="fa fa-check"></i> Lulus Seleksi', 
																						array('lulus', 'id'=>$model->id,
																							), array('class' => 'btn btn-danger btn-flat', 'title'=>'Terima Pelamar Sebagai Pegawai'));
																							?>

																							<?php echo CHtml::link('<i class="fa fa-remove"></i> Tolak', 
																								array('ditolak', 'id'=>$model->id,
																									), array('class' => 'btn btn-danger btn-flat pull-right', 'title'=>'Tolak Lamaran'));
																									?>
																								<?php endif; ?>

																							<?php endif; ?>																		


																							<STYLE>
																								th{width:150px;}
																							</STYLE>

