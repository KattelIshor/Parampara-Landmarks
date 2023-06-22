<?php


namespace App\Listeners;

use App\Events\NewUserRegistered;
use App\Notifications\NewUserNotification;

class SendNewUser

{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  \App\Events\NewUserRegistered  $event
     * @return void
     */
    public function handle(NewUserRegistered $event)
    {
        //
    }
}