<?php



namespace App\Http\Controllers;
use App\Http\Controllers\NotificationController;
use App\Notifications\AdminNotification;


use Illuminate\Http\Request;

class NotificationController extends Controller
{
    /**
     * Summary of notifyAdmin
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function notifyAdmin(Request $request)
    {
        // Perform notification logic here
        // You can use Laravel's notification system, send an email, or any other preferred method to notify the admin.

        // For example, you can use Laravel's built-in notification system to send a notification to the admin via email:
        \Illuminate\Support\Facades\Notification::route('mail', 'admin@example.com')
            ->notify(new \App\Notifications\AdminNotification());

        // Optionally, you can redirect the user back with a success message
        return redirect()->back()->with('success', 'Admin notified successfully.');
    }
}