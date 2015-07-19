<div id="nav-bar">
	<ul>
		<?php if $SESSION[login]
		{
		?>
		<a href=""><li>Profile</li></a>
		<a href=""><li>Settings</li></a>
		<a href=""><li>Charities</li></a>
		<?php 
		}
		else
		{ 
		?>
		<a href=""><li>Login</li></a>
		<a href=""><li>Sign Up</li></a>
		<?php 
		} 
		?>
	</ul>
</div>