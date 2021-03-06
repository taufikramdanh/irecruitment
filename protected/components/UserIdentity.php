<?php

/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class UserIdentity extends CUserIdentity
{
	private $_id;
	
	public function authenticate()
	{
		$username = strtolower($this->username);
		if(strpos($this->username, '@') !== false){
			$user = User::model()->findByAttributes(array('email'=>$this->username));
		}else{
			$user = User::model()->findByAttributes(array('username'=>$this->username));
		}

		if($user===null)
			$this->errorCode=self::ERROR_USERNAME_INVALID;
		else if($user->password!==md5($this->password))
			$this->errorCode = self::ERROR_PASSWORD_INVALID;
		else
		{
			$this->_id = $user->id_user;
			$this->setState('record', $user);
			$this->setState('profile', $user->level_ID);
			$this->setState('profile', $user->id_user);
			$this->username = $user->username;
			$this->errorCode = self::ERROR_NONE;
		}

		return $this->errorCode == self::ERROR_NONE;
	}
	
	public function getId()
	{
		return $this->_id;
	}
}

?>