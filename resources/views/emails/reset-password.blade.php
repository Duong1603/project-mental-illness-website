@php
$link = 'http://localhost:8000/forgot?token=' . $resetPwdToken;
@endphp
<div>
		Hi <b>{{ $user }}</b>, you have just requested reset your password!
		<br>
		Please click the link: <a href="{{ $link }}">{{ $link }}</a>
</div>