#!/usr/bin/env perl

use Mojolicious::Lite;

get '/' => sub {
	my $c = shift;
	$c->render(template => 'index');
};

app->start;

__DATA__

@@ index.html.ep
% layout 'default';
% title 'Index';
<h1>Welcome to CandyAccounting!</h1>
<p>
This site will document and explain how I personally use
<%= link_to Ledger => 'http://ledger-cli.org/' %>. No claims of
proper accounting procedures are made :)
</p>

<h2>Sections</h2>
<ul>
	<li>Terms and Concepts</li>
	<li>Setting up Ledger</li>
	<li>Opening the Books</li>
	<li>Getting Paid</li>
	<li>Budgeting</li>
	<li>Loans</li>
	<li>Paypal</li>
</ul>

<h2>Contact</h2>

You can find me (CandyAngel) in #ledger on
<%= link_to 'Freenode' => 'https://freenode.net/' %>.

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
	<head>
		<title><%= title %> - CandyAccounting</title>
	</head>

	<body>
<%= content %>
	</body>
</html>
