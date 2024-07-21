# Hobbies and Interests
<style>
/* from https://codepen.io/smashingmag/pen/KKvMqaL */
* {
	box-sizing: border-box;
}

ul body {
	font-family: Lato, sans-serif;
	margin: 0;
	padding: 1rem;
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

ul img {
	width: 100%;
	display: block;
	aspect-ratio: 1 / 1;
	object-fit: cover;
	transition: transform 1000ms;
}

ul {
	list-style: none;
	margin: 0;
	padding: 0;
	display: grid;
	gap: 0.5rem;
	grid-template-columns: repeat(auto-fit, minmax(15rem, 1fr));
	max-width: 100%;
	width: 70rem;
}

ul figure {
	margin: 0;
	position: relative;
	overflow: hidden;
}

ul figure::after {
	content: '';
	position: absolute;
	top: 50%;
	left: 50%;
	width: 200%;
	height: 200%;
	background: rgba(0, 0, 0, 0.5);
	transform-origin: center;
	opacity: 0;
	transform: scale(2);
	transition: opacity 300ms;
}

ul figcaption {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	place-items: center;
	text-align: center;
	padding: 1rem;
	color: white;
    background: rgba(0, 0, 0, 0.2);
	font-size: 1rem;
	z-index: 1;
	opacity: 0;
	transition: opacity 600ms, transform 600ms;
}

ul a:is(:hover, :focus) figure::after {
	opacity: 0.1;
}

ul a:is(:hover, :focus) figcaption {
	opacity: 1;
	transition: opacity 600ms;
}

@media (prefers-reduced-motion: no-preference) {
	ul figcaption {
		transform: translate3d(0, 2rem, 0);
	}
	
	ul figure::after {
		border-radius: 50%;
		opacity: 1;
		transform: scale(0);
		transition: transform 900ms;
	}
	
	ul a:is(:hover, :focus) figure::after {
		transform: scale(2.5);
	}

	ul a:is(:hover, :focus) figcaption {
		opacity: 1;
		transform: translate3d(0, 0, 0);
		transition: opacity 600ms 400ms, transform 600ms 400ms;
	}

	ul a:is(:hover, :focus) img {
		transform: scale(1.2);
	}
}
</style>
When not working, enjoys exploring with friends and family and capturing moments along the way. Biking, surfing, and traveling outdoors are some favorite activities. When not outside, enjoys pottery, photography, and being a DJ. 

## Gallery
<ul>
    <li><a><figure>
                <img src="/assets/img/hobbies/hobby1.jpeg" title="Yosemite Winter" alt="Yosemite Winter">
                <figcaption>Yosemite Winter</figcaption>
    </figure></a></li>
     <li><a><figure>
                <img src="/assets/img/hobbies/hobby2.jpeg" title="Glazed Bowl Set" alt="Glazed Bowl Set">
                <figcaption>Glazed Bowl Set</figcaption>
    </figure></a></li>
     <li><a><figure>
                <img src="/assets/img/hobbies/hobby3.jpeg" title="Glazed Dinner Set" alt="Glazed Dinner Set">
                <figcaption>Glazed Dinner Set</figcaption>
    </figure></a></li>
     <li><a><figure>
                <img src="/assets/img/hobbies/hobby4.jpeg" title="Mountain Biking" alt="Mountain Biking">
                <figcaption>Mountain Biking</figcaption>
    </figure></a></li>
     <li><a><figure>
                <img src="/assets/img/hobbies/hobby5.jpeg" title="Dorm DJ Set" alt="Dorm DJ Set">
                <figcaption>Dorm DJ Set</figcaption>
    </figure></a></li>
     <li><a><figure>
                <img src="/assets/img/hobbies/hobby6.jpeg" title="Triathlon" alt="Triathlon">
                <figcaption>Triathlon</figcaption>
    </figure></a></li>
    <li><a><figure>
                <img src="/assets/img/hobbies/hobby7.jpeg" title="Wake Surfing" alt="Wake Surfing">
                <figcaption>Wake Surfing</figcaption>
    </figure></a></li>
    <li><a><figure>
                <img src="/assets/img/hobbies/hobby8.jpeg" title="Fishing" alt="Fishing">
                <figcaption>Fishing</figcaption>
    </figure></a></li>
    <li><a><figure>
                <img src="/assets/img/hobbies/hobby9.png" title="Northstar Snowboarding" alt="Northstar Snowboarding">
                <figcaption>Northstar Snowboarding</figcaption>
    </figure></a></li>
    <li><a><figure>
                <img src="/assets/img/hobbies/hobby10.jpeg" title="Throwing Sealed Vase" alt="Throwing Sealed Vase">
                <figcaption>Throwing Sealed Vase</figcaption>
    </figure></a></li>
</ul>
