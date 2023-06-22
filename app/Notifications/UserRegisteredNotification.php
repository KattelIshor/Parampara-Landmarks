use Illuminate\Notifications\Notification;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Messages\DatabaseMessage;

class UserRegisteredNotification extends Notification
{
public function via($notifiable)
{
return ['database'];
}

public function toDatabase($notifiable)
{
return new DatabaseMessage([
// Customize the notification message and data as per your requirements
'message' => 'A new user has registered: ' . $notifiable->name,
'link' => '/admin/users', // Link to the admin dashboard or user management page
]);
}
}