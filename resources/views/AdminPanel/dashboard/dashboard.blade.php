@extends('AdminPanel.layouts.main')
@section('main-section')
    <div class="container">
        <div class="container-fluid">
            <div class="mt-4">
                <h2>Dashboard</h2>
                <div aria-label="breadcrumb mt-5">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item" aria-current="page">Admin</li>
                        <li class="breadcrumb-item active">Dashboard</li>

                    </ol>
                </div>
                <div id="notification-container"></div>

<script>
    window.Echo.private('user-registration')
        .listen('.user-registered', function (event) {
            var notification = document.createElement('div');
            notification.innerText = 'A new user has registered: ' + event.user.name;
            document.getElementById('notification-container').appendChild(notification);
        });
</script>

<?php
                $message = "Welcome to the Parampara Dashboard!";

                echo '<div style="background-color: #f5f5f5; padding: 20px; border: 1px solid #ccc; border-radius: 5px; text-align: center; font-family: Arial, sans-serif;">
                        <h2 style="color: #333;">' . $message . '</h2>
                        <p style="color: #666;">Enjoy managing our website with ease and efficiency.</p>
                        <p style="color: #666;">If you have any questions or need assistance, please don\'t hesitate to contact us.</p>
                        <p style="color: #666;">Thank you for your dedication and hard work!</p>
                      </div>';
                      ?>
@endsection
