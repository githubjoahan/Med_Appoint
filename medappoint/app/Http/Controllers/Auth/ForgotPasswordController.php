<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Facades\Mail;
use Illuminate\Auth\Notifications\ResetPassword;
use Illuminate\Notifications\Messages\MailMessage;

class ForgotPasswordController extends Controller
{
    use SendsPasswordResetEmails;

    public function __construct()
    {
        $this->middleware('guest');
    }

    public function showLinkRequestForm()
    {
        return view('auth.passwords.email');
    }

    public function sendResetLinkEmail(Request $request)
    {
        $this->validateEmail($request);

        $response = $this->broker()->sendResetLink(
            $request->only('email')
        );

        if ($response == Password::RESET_LINK_SENT) {
            return back()->with('status', __($response));
        } else {
            return back()->withErrors(['email' => __($response)]);
        }
    }

    // Override the sendPasswordResetNotification method
    public function sendPasswordResetNotification($token)
    {
        $user = $this->broker()->getUser($this->credentials($this->request));

        // Send password reset email with custom sender
        $user->notify(new ResetPassword($token, $this->customSender()));
    }

    // Define your custom sender details
    protected function customSender()
    {
        return [
            'email' => 'my-appointments.com',
            'name' => 'ReliaCoders SAS'
        ];
    }
}