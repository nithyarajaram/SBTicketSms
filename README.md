SBTicketSms
===========

An app to deliver Sms notifications for new tickets that come into SupportBee. This uses SupportBee's webhooks. To have this working for your helpdesk, fork this repo and host it on heroku

BulkSMS account
===============

Create your Bulksms account by registering here: https://bulksms.vsms.net/register/

Buying credits
==============

Buy enough Bulksms credits for your needs

Setting up BulkSMS credentials as ENV variables on Heroku
==========================================================

$ heroku config:add BULKSMS_USERNAME = "< Bulksms_username >"

$ heroku config:add BULKSMS_PASSWORD = "< Bulksms_Password >"

$ heroku config:add BULKSMS_RECIPIENT = "< Recipient_number >" # Number in international format


Once you push the app to heroku, add the following URL in the web hook screen of SupportBee

http://< heroku_app_url >

An Sms notification will be sent every time there is a new ticket or a new reply to a ticket.
