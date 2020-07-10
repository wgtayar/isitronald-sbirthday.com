<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;  charset=utf-8">
		<title>2 Column Frames Layout &mdash; Right Menu
			Date.getDate()
			if date == 26/7/2020:
				print ("IT'S RONALD'S BIRTHDAY")
			else:
				print ("IT'S NOT RONALD'S BIRHTDAY YET :(")</title>
		<style type="text/css">

		body{
			margin: 0;
			padding: 0;
			overflow: hidden;
			height: 100%;
			max-height: 100%;
			font-family:Sans-serif;
			line-height: 1.5em;
		}

		#nav{
			position: absolute;
			top: 0;
			bottom: 0;
			right: 0;
			width: 230px; /* Width of navigation frame */
			height: 100%;
			overflow: hidden; /* Disables scrollbars on the navigation frame. To enable scrollbars, change "hidden" to "scroll" */
			background: #eee;
		}

		main{
			position: fixed;
			top: 0;
			left: 0;
			right: 230px; /* Set this to the width of the navigation frame */
			bottom: 0;
			overflow: auto;
			background: #fff;
		}

		.innertube{
			margin: 15px; /* Provides padding for the content */
		}

		p {
			color: #555;
		}

		nav ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
		}

		nav ul a {
			color: darkgreen;
			text-decoration: none;
		}

		/*IE6 fix*/
		* html body{
			padding: 0 230px 0 0; /* Set the second value to the width of the navigation frame */
		}

		* html main{
			height: 100%;
			width: 100%;
		}

		</style>

		<script type="text/javascript">
			/* =============================
			This script generates sample text for the body content.
			You can remove this script and any reference to it.
			 ============================= */
			var bodyText=["The smaller your reality, the more convinced you are that you know everything.", "If the facts don't fit the theory, change the facts.", "The past has no power over the present moment.", "This, too, will pass.", "</p><p>You will not be punished for your anger, you will be punished by your anger.", "Peace comes from within. Do not seek it without.", "<h3>Heading</h3><p>The most important moment of your life is now. The most important person in your life is the one you are with now, and the most important activity in your life is the one you are involved with now."]
			function generateText(sentenceCount){
				for (var i=0; i<sentenceCount; i++)
				document.write(bodyText[Math.floor(Math.random()*7)]+" ")
			}
		</script>

	</head>

	<body>

		<main>
			<div class="innertube">

				<h1>Heading</h1>
				<p><script>generateText(300)</script></p>

			</div>
		</main>

		<nav id="nav">
			<div class="innertube">

			<h3>Right heading</h3>
			<ul>
				<li><a href="#">Link 1</a></li>
				<li><a href="#">Link 2</a></li>
				<li><a href="#">Link 3</a></li>
				<li><a href="#">Link 4</a></li>
				<li><a href="#">Link 5</a></li>
			</ul>
			<h3>Right heading</h3>
			<ul>
				<li><a href="#">Link 1</a></li>
				<li><a href="#">Link 2</a></li>
				<li><a href="#">Link 3</a></li>
				<li><a href="#">Link 4</a></li>
				<li><a href="#">Link 5</a></li>
			</ul>
			</div>
		</nav>

	</body>
</html>
