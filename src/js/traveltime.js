
/*About us page load data function*/
function loadData(name)
{
	
	if(name == "Team")
	{
		document.getElementById("para").innerHTML = "<p class='service'>Our dynamic and determined team consists of 200 staff members, located around the world in several of our key offices. At TravelTime, our team is our pride and our greatest prize. Our representatives are professional, friendly, energetic, and dedicated and will always greet our customers with a genuine, heart-warming smile!</p>";
		document.getElementById("image1").src = "./images/22.PNG";
	}
	
	else if(name == "Location")
	{
		document.getElementById("para").innerHTML = "<p class='service'>We live in the city of Kelaniya in Sri Lanka, where our headquarters is located. Our goal is to serve travelers traveling to Sri Lanka, Dubai, Maldives and around the world. We firmly believe in providing quality services to our customers and maintaining our reputation as the best travel agency in Sri Lanka.</p>";
		document.getElementById("image1").src = "./images/23.PNG";
	}
	
	else if(name == "History")
	{
		document.getElementById("para").innerHTML = "<p class='service'>In 1981, TimeTravel took flight, piloted by Johnny, our CEO and Founder, with the main aim of becoming the best personalized travel agent in the world! This one-man show quickly gathered speed as the team at TimeTravel grew, fast and wide. TimeTravel, spearheaded by Johnny, grew faster by attracting the right people around him. An integral part of our growth lies with listening to our customers valuable feedback and improving ourselves, where we compete with ourselves every day!</p>";
		document.getElementById("image1").src = "./images/21.PNG";
	}
	
	else if(name == "Goal")
	{
		document.getElementById("para").innerHTML = "<p class='service'>Our goal is to become the global leader in personalized, bespoke tours. Together with our professional, friendly staff we are on the fastest track towards this.</p>";
		document.getElementById("image1").src = "./images/20.PNG";
	}
	
	
}
/*user sign up, forgot password pages ,password chack */
function checkPassword(){
	if(document.getElementById("pwd").value != document.getElementById("repwd").value){
		alert("Password Invalid!!!!! Check again");
	}else {
		alert("Password valid!!!");
	}
}

/*Service page button function*/
function services(bttn){
	if(bttn == "btn1"){
		document.getElementById("imag1").src = "images/13.JPG";
		document.getElementById("parass").innerHTML = "<ol><li>Things to See and Do<ul><li> Find your unique Sri Lankan Travel Experience</li></ul></li><li>Find a Travel Agent<br><ul><li> Find a formal registered Travel Agent</li><li>Find a provisional registered Travel Agent</li></ul></li><li>Apply Visa Online<br><ul><li> Access electronic travel authorization for Sri Lanka</li></ul></li><li>Book a Flight<br><ul><li> Book your international and domestic flights</li></ul></li><li>Find your Accommodation<br><ul><li> Find your Accommodation in Sri Lanka</li></ul></li><li>Find a Tour Guide<br><ul><li> Find a registered Tour Guide</li></ul></li><li>Find a Tour Driver<br><ul><li> Find a registered Tour Driver</li></ul></li></ol><br>" ;
		
	}else if(bttn == "btn2"){
		
		document.getElementById("imag1").src="images/OIP.JPG";
		document.getElementById("parass").innerHTML = "<ul><li>Sri Lanka is one of the leading romantic destinations in the whole world.</li><li> The land of serendipity brings spiritual tranquility and a chance to rediscover oneself.</li><li>Best time to visit Sri Lanka 2021</li><li>Things to do in Sri Lanka 2021</li><li>Follow us to get the latest news about Tour packages and offers via our social media.</li><li>Get in the social swing and connect with best travel agent in Sri Lanka to explore this beautiful island.</li></ul>";
	}
	
}

/*Admin Inbox page read more button function*/
function readmore(){
	
	var dots = document.getElementById("dots");
	var moreText = document.getElementById("more");
	var btnText = document.getElementById("mybtn");
	
	if(dots.style.display == "none"){
		dots.style.display = "inline";
		btnText.innerHTML = "Read more";
		moreText.style.display = "none";
		}else {
			 dots.style.display = "none";
			btnText.innerHTML = "Read less";
			moreText.style.display = "inline";
		}
}

function readmore1(){
	
	var dots = document.getElementById("dots1");
	var moreText = document.getElementById("more1");
	var btnText = document.getElementById("mybtn1");
	
	if(dots1.style.display == "none"){
		dots.style.display = "inline";
		btnText.innerHTML = "Read more";
		moreText.style.display = "none";
		}else {
			 dots.style.display = "none";
			btnText.innerHTML = "Read less";
			moreText.style.display = "inline";
		}
}

function readmore2(){
	
	var dots = document.getElementById("dots2");
	var moreText = document.getElementById("more2");
	var btnText = document.getElementById("mybtn2");
	
	if(dots2.style.display == "none"){
		dots.style.display = "inline";
		btnText.innerHTML = "Read more";
		moreText.style.display = "none";
		}else {
			 dots.style.display = "none";
			btnText.innerHTML = "Read less";
			moreText.style.display = "inline";
		}
}

function readmore3(){
	
	var dots = document.getElementById("dots3");
	var moreText = document.getElementById("more3");
	var btnText = document.getElementById("mybtn3");
	
	if(dots3.style.display == "none"){
		dots.style.display = "inline";
		btnText.innerHTML = "Read more";
		moreText.style.display = "none";
		}else {
			 dots.style.display = "none";
			btnText.innerHTML = "Read less";
			moreText.style.display = "inline";
		}
}

function readmore4(){
	
	var dots = document.getElementById("dots4");
	var moreText = document.getElementById("more4");
	var btnText = document.getElementById("mybtn4");
	
	if(dots.style.display == "none"){
		dots.style.display = "inline";
		btnText.innerHTML = "Read more";
		moreText.style.display = "none";
		}else {
			 dots.style.display = "none";
			btnText.innerHTML = "Read less";
			moreText.style.display = "inline";
		}
}


