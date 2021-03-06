<?php

class PendidikanController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			// 'postOnly + delete', // we only allow deletion via POST request
			);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow',
				'actions'=>array('create','update','view'),
				'users'=>array('@'),
				),
			array('allow',
				'actions'=>array('create','update','view','delete','formal','nonformal','updateformal','updatenonformal'),
				'users'=>array('@'),
				'expression'=>'Yii::app()->user->getLevel()==2',
				),			
			array('allow',
				'actions'=>array('create','update','view','delete','admin','index'),
				'users'=>array('@'),
				'expression'=>'Yii::app()->user->getLevel()==1',
				),
			array('deny',
				'users'=>array('*'),
				),
			);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
			));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate($id)
	{
		$model=new Pendidikan;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Pendidikan']))
		{
			$model->attributes=$_POST['Pendidikan'];
			$model->people_id = $id;
			$model->user_id = YII::app()->user->id;
			if($model->save()){
				$this->redirect(array('pelamar/profile'));
			}
		}

		$this->render('create',array(
			'model'=>$model,
			));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Pendidikan']))
		{
			$model->attributes=$_POST['Pendidikan'];
			if($model->save()){
				$this->redirect(array('pelamar/profile'));
			}
		}

		$this->render('update',array(
			'model'=>$model,
			));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$this->loadModel($id)->delete();

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('Pendidikan');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
			));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Pendidikan('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Pendidikan']))
			$model->attributes=$_GET['Pendidikan'];

		$this->render('admin',array(
			'model'=>$model,
			));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Pendidikan the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Pendidikan::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Pendidikan $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='pendidikan-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}

	public function actionFormal($id)
	{
		$model=new Pendidikan;
		$model->setScenario('formal');

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Pendidikan']))
		{
			$model->attributes=$_POST['Pendidikan'];
			$model->people_id = $id;
			$model->user_id = YII::app()->user->id;
			$model->jenis = 1;

			if($model->save()){
				$this->redirect(array('pelamar/profile'));
			}
		}

		$this->render('create_formal',array(
			'model'=>$model,
			));
	}

	public function actionNonFormal($id)
	{
		$model=new Pendidikan;
		$model->setScenario('nonformal');

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Pendidikan']))
		{
			$model->attributes=$_POST['Pendidikan'];
			$model->people_id = $id;
			$model->user_id = YII::app()->user->id;
			$model->jenis = 2;
			
			if($model->save()){
				$this->redirect(array('pelamar/profile'));
			}
		}

		$this->render('create_non_formal',array(
			'model'=>$model,
			));
	}		

	public function actionUpdateFormal($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Pendidikan']))
		{
			$model->attributes=$_POST['Pendidikan'];
			if($model->save()){
				$this->redirect(array('pelamar/profile'));
			}
		}

		$this->render('update_formal',array(
			'model'=>$model,
			));
	}

	public function actionUpdateNonFormal($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Pendidikan']))
		{
			$model->attributes=$_POST['Pendidikan'];
			if($model->save()){
				$this->redirect(array('pelamar/profile'));
			}
		}

		$this->render('update_non_formal',array(
			'model'=>$model,
			));
	}	
}
