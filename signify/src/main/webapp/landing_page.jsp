<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }
      body {
        background-color: #d2d2d2;
        background-image: repeating-linear-gradient(
            to right,
            transparent 0 100px,
            #25283b22 100px 101px
          ),
          repeating-linear-gradient(
            to bottom,
            transparent 0 100px,
            #25283b22 100px 101px
          );
      }

      body::before {
        position: absolute;
        width: min(1400px, 90vw);
        top: 10%;
        left: 50%;
        height: 90%;
        transform: translateX(-50%);
        content: "";
        background-image: url(L_images/bg.png);
        background-size: 100%;
        background-repeat: no-repeat;
        background-position: top center;
        pointer-events: none;
      }
    </style>
    <link rel="stylesheet" href="landing.css" />
  </head>
  <body>
    <div class="banner">
      <div class="slider" style="--quantity: 6">
        <div class="item" style="--position: 1 ; background-image: url('L_images/Frame1.png');  
		      width: 100%;
		      height: 100%; 
		      background-size: auto 80%;
		      background-repeat: no-repeat; 
		      background-position: center;  
		      flex-direction: column ; 
		      align-items: center; 
			  height: 100%; 
			  color: black;
			  font-size: 1em;
			  padding: 10px; 
			  text-shadow: 0 2px 5px rgba(0, 0, 0, 0.7); 
			  justify-content: flex-end;">
         <span>Machine Learning</span>
        </div>
        <div class="item" style="--position: 2 ; background-image: url('L_images/Frame2.png');  
		      width: 100%;
		      height: 100%; 
		      background-size: auto 50%;
		      background-repeat: no-repeat; 
		      background-position: center;  
		      flex-direction: column ; 
		      align-items: center; 
			  height: 100%; 
			  color: black;
			  font-size: 1em;
			  padding: 10px; 
			  text-shadow: 0 2px 5px rgba(0, 0, 0, 0.7); 
			  justify-content: flex-end;">
         <span>Offline Access</span>
        </div>
        <div class="item" style="--position: 3 ; background-image: url('L_images/Frame3.png');  
		      width: 100%;
		      height: 100%; 
		      background-size: auto 70%;
		      background-repeat: no-repeat; 
		      background-position: center;  
		      flex-direction: column ; 
		      align-items: center; 
			  height: 100%; 
			  color: black;
			  font-size: 1em;
			  padding: 10px; 
			  text-shadow: 0 2px 5px rgba(0, 0, 0, 0.7); 
			  justify-content: flex-end;">
         <span>Multilanguage Support </span>
        </div>
        <div class="item" style="--position: 4 ; background-image: url('L_images/Frame4.png');  
		      width: 100%;
		      height: 100%; 
		      background-size: auto 70%;
		      background-repeat: no-repeat; 
		      background-position: center;  
		      flex-direction: column ; 
		      align-items: center; 
			  height: 100%; 
			  color: black;
			  font-size: 1em;
			  padding: 10px; 
			  text-shadow: 0 2px 5px rgba(0, 0, 0, 0.7); 
			  justify-content: flex-end;">
         <span>Educational Content </span>
        </div>
        <div class="item" style="--position: 5 ; background-image: url('L_images/Frame5.png');  
		      width: 100%;
		      height: 100%; 
		      background-size: auto 70%;
		      background-repeat: no-repeat; 
		      background-position: center;  
		      flex-direction: column ; 
		      align-items: center; 
			  height: 100%; 
			  color: black;
			  font-size: 1em;
			  padding: 10px; 
			  text-shadow: 0 2px 5px rgba(0, 0, 0, 0.7); 
			  justify-content: flex-end;">
         <span>AI Chatbot </span>
        </div>
        <div class="item" style="--position: 6 ; background-image: url('L_images/Frame6.png');  
		      width: 100%;
		      height: 100%; 
		      background-size: auto 60%;
		      background-repeat: no-repeat; 
		      background-position: center;  
		      flex-direction: column ; 
		      align-items: center; 
			  height: 100%; 
			  color: black;
			  font-size: 1em;
			  padding: 10px; 
			  text-shadow: 0 2px 5px rgba(0, 0, 0, 0.7); 
			  justify-content: flex-end;">
         <span>Text to Sign Language </span>
        </div>
      </div>
      <div class="content">
        <h1 data-content="SIGNIFY">SIGNIFY</h1>
        <div class="author">
          <!-- <h2>Signify</h2> -->
          <div class="button-field">
    			<a href="login_page.jsp" class="btn">Let's Go!!</a>
		  </div>
          <p><b>One Stop Solution</b></p>
          <p>MI based sign language recognition</p>
        </div>
        <div class="model"></div>
      </div>
    </div>
  </body>
</html>
