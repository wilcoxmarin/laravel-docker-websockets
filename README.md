<p  align="center"><a  href="https://laravel.com"  target="_blank"><img  src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg"  width="400"></a></p>

<p  align="center">

<a  href="https://travis-ci.org/laravel/framework"><img  src="https://travis-ci.org/laravel/framework.svg"  alt="Build Status"></a>

<a  href="https://packagist.org/packages/laravel/framework"><img  src="https://poser.pugx.org/laravel/framework/d/total.svg"  alt="Total Downloads"></a>

<a  href="https://packagist.org/packages/laravel/framework"><img  src="https://poser.pugx.org/laravel/framework/v/stable.svg"  alt="Latest Stable Version"></a>

<a  href="https://packagist.org/packages/laravel/framework"><img  src="https://poser.pugx.org/laravel/framework/license.svg"  alt="License"></a>

</p>

## Laravel Websockets With Docker

<p>Basic structure and from scratch implementing websockets and pusher for real time and with a dashboard to verify that your channels work.</p>

<img src="https://www.tutofox.com/wp-content/uploads/2020/03/off-white-23.jpg">

## Project Configuration

<p>these are the steps to follow:</p>

1.  clone the repository.
    ```
        git clone https://github.com/wilcoxmarin/laravel-docker-websockets
    ```

2.  then copy the .env.example and give it the name .env there will have the variables to configure.

    ```
        cp .env.example .env
    ```

3.  Do you remember having an account in pusher already created with a channel, the variables that you must configure in the .env are:

    ```
        PUSHER_APP_ID= // the channel id which is app_id
        PUSHER_APP_KEY= // the key of the channel that is key
        PUSHER_APP_SECRET= //also the secret key of the channel that is secret
        PUSHER_APP_CLUSTER= // and we also have the cluster is the location of where the channel that is cluster will be
    ```

<p>All these variables are obtained when they created the channel, it goes to the App key part and gives you everything that I comment on step by step.</p>

## Start containers

<p>To start our project we are going to use docker recommendation and you must have docker installed and we go to the folder after being inside the folder we enter the following command.</p>

    docker-compose up -d

<p>With this, the four containers that are app webserver websockets and db were created.</p>
<p>To check that everything works and connect the pusher enter this url</p>
<p>http://localhost:8000/laravel-websockets</p>

<p>And it must come out like this.</p>

![enter image description here](https://beyondco.de/img/docs/laravel-websockets/img/dashboard.jpg)
