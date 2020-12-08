<?php

namespace app\models;
use yii\base\Model;
use yii\helpers\VarDumper;
/**
 * Class SignupForm
 *
 * 
 * @package app\models
 */
class SignUpForm extends Model {
    public $username;
    public $password;
    public $password_repeat;

    public function rules(){
        return [
            [['username','password','password_repeat'], 'required'],
            [['username', 'password', 'password_repeat'],'string','min' => 4, 'max' => 16],
            ['password_repeat', 'compare', 'compareAttribute' => 'password']
        ];
    }

    public function signup(){
        $user = new User();
        $user->username = $this->username;
        $user->password = \Yii::$app->security->generatePasswordhash($this->password);
        $user->access_token = \Yii::$app->security->generateRandomString();
        $user->auth_key = \Yii::$app->security->generateRandomString();

        if($user->save()){
            return true;
        }
        Yii::error("El usuario no se guardo", VarDumper::dumpAsString( $user->errors));
        return false;

    }
}