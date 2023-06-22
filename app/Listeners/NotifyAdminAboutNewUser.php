<?php

namespace App\Listeners;

use App\Events\NewUserRegistered;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Notification;
use App\Notifications\AdminNewUserNotification;

class NotifyAdminAboutNewUser implements ShouldQueue
{
    use InteractsWithQueue;

    /**
     * Handle the event.
     *
     * @param  NewUserRegistered  $event
     * @return void
     */
    public function handle(NewUserRegistered $event)
    {
        $admin = User::where('is_admin', true)->first();

        if ($admin) {
            Notification::send($admin, new AdminNewUserNotification($event->user));
        }
    }
}