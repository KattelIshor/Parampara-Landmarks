<?php

namespace App\Listeners;

use App\Events\UserRegistered;

class HandleUserRegistration
{
    /**
     * Handle the event.
     *
     * @param  UserRegistered  $event
     * @return void
     */
    public function handle(UserRegistered $event)
    {
        // Perform backend notification logic here
        // You can send an email, save the notification to the database, or perform any other necessary action.

        // Example: Send an email notification
        \Illuminate\Support\Facades\Mail::to('admin@example.com')
            ->send(new \App\Mail\UserRegisteredNotification($event->user));
    }
}