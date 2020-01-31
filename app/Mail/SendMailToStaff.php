<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendMailToStaff extends Mailable
{
    use Queueable, SerializesModels;

    protected $sender;
    protected $recipient;
    protected $barcode;
    protected $optional;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($sender, $recipient, $barcode, $optional)
    {
        $this->sender = $sender;
        $this->recipient = $recipient;
        $this->barcode = $barcode;
        $this->optional = $optional;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from($this->sender->email, $this->sender->name)
                    ->subject('New Parcel')
                    ->markdown('emails.staff')
                    ->with([
                        'sender' => $this->sender,
                        'recipient' => $this->recipient,
                        'barcode' => $this->barcode,
                        'optional' => $this->optional,
                    ]);
    }
}
