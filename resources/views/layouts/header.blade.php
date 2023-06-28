<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="{{ asset('/css/styles.css')}}">


    @if (!empty($logo_image->value))
        <link rel="icon" type="image/x-icon" href="{{ asset('/storage/siteSettings/' . $logo_image->value) }}">
    @else
        <link rel="icon" href="favicon.ico" type="image/x-icon">
    @endif
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>
        {{ $title ? $title : '' }} | {{ $site_title->value ?? config('dz.public.title') }}
    </title>

    @foreach (config('dz.public.global.css') as $item)
        <link rel="stylesheet" crossorigin="anonymous" href="{{ $item }}">
    @endforeach

    <style>
        .navbar-golden {
            background-color: goldenrod;
        }

    </style>
</head>

<body class="py-0">
