<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign-language Generator</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
       * {
           margin: 0;
           padding: 0;
           box-sizing: border-box;
           font-family: 'Roboto', sans-serif;
       }

       body {
           background-color: #cdd4e2;
           color: #333;
           display: flex;
           justify-content: center;
           align-items: center;
           height: 100vh;
           margin: 0;
       }

       .container {
           display: flex;
           height: 100%;
           width: 100%;
       }

       .sidebar {
           width: 250px;
           background-color: #12264a;
           color: #fff;
           display: flex;
           flex-direction: column;
           align-items: center;
           padding-top: 20px;
       }

       .sidebar .logo {
           font-size: 30px;
           color: #fff;
           margin-bottom: 20px;
           display: flex;
           flex-direction: column;
           align-items: center;
           padding-top: 20px;
       }

       .logo img.logo-image {
           width: 50px;
           height: 50px;
           border-radius: 50%;
           margin-top: 10px;
           object-fit: cover;
       }

       .sidebar nav ul {
           list-style-type: none;
           width: 100%;
           text-align: center;
           padding: 0;
       }

       .sidebar nav ul li {
           margin: 20px 0;
       }

       .sidebar nav ul li a {
           color: #fff;
           text-decoration: none;
           font-size: 20px;
       }

       .bottom-image {
        position: fixed; /* Fixes the position */
        bottom: 20px; /* Adjust the distance from the bottom */
        padding: 20px 0; /* Padding if needed */
       }

       .bottom-image img.bottom-image-img {
        width: 250px;
        display: flex; /* Enable Flexbox */
        flex-direction: column; /* Align content vertically */
        justify-content: flex-end;
        padding: 10px;
    
       }

       .content {
           flex: 1;
           padding: 20px;
           background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
           display: flex;
           align-items: center;
           justify-content: center;
       }

       .container1 {
           background: rgba(255, 255, 255, 0.92);
           padding: 30px;
           border-radius: 12px;
           box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
           width: 90%;
           max-width: 600px;
           text-align: center;
       }

       h1 {
           font-size: 28px;
           color: #2c5364;
           margin-bottom: 20px;
       }

       textarea {
           width: 100%;
           padding: 12px;
           margin-bottom: 15px;
           border-radius: 8px;
           border: 1px solid #ccc;
           font-size: 16px;
           background-color: #f4f4f9;
           color: #333;
       }

       button {
           padding: 12px 25px;
           border: none;
           border-radius: 6px;
           background-color: #1c92d2;
           color: #fff;
           font-size: 16px;
           cursor: pointer;
       }

       #result {
    display: none; /* Hidden by default, becomes visible on input */
    position: fixed;
    width: 40%;
    height: 70%;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    padding: 20px;
    background: rgba(255, 255, 255, 0.95);
    border-radius: 8px;
    box-shadow: 0 4px 16px rgba(0, 0, 0, 0.2);
    overflow-y: auto;
    text-align: center;
    z-index: 1000;
}


       
    </style>
</head>
<body>
    <div class="container">
        <aside class="sidebar">
            <div class="logo">
                <h3>Signify</h3>
                <img src="images/Sig-.png" alt="Logo Image" class="logo-image">
            </div>
            <nav>
                <ul>
                    <li><a href="dashboard.jsp"><i class="fas fa-user"></i></a></li>
                    <li><a href="sign1.jsp"><i class="fas fa-book-open"></i></a></li>
                    <li><a href="#"><i class="fas fa-calendar-alt"></i></a></li>
                    <li><a href="#"><i class="fas fa-cog"></i></a></li>
                </ul>
            </nav>
            <div class="bottom-image">
                <img src="images/image_processing20210620-27756-zsfljb.png" alt="Bottom Image" class="bottom-image-img">
            </div>
        </aside>
        <div class="content">
            <div class="container1">
                <h1>Sign-language Generator</h1>
                <div id="google_element"></div>
                <script type="text/javascript" src="http://translate.google.com/translate_a/element.js?cb=loadGoogleTranslate"></script>
                <script type="text/javascript">
                function loadGoogleTranslate(){
                  new google.translate.TranslateElement("google_element");
                }
              </script>
                
                <textarea id="inputText" rows="4" placeholder="Type your query here..."></textarea>
                <button onclick="processInput()">Submit</button>
                <div id="result"></div>
            </div>
        </div>
    </div>
    <script>
        let videoQueue = [];
        let currentVideoIndex = 0;

        function processInput() {
    const inputText = document.getElementById('inputText').value.trim().toLowerCase();
    const resultDiv = document.getElementById('result');
    const videos = {
        'hello': 'assets/hello.webm',
        'hi': 'assets/hi.webm',
        'good': 'assets/good-.webm',
        'afternoon': 'assets/afternoon.webm',
        'book': 'assets/book.webm',
        'eight': 'assets/eight.webm',
        'evening': 'assets/evening.webm',
        'five': 'assets/five.webm',
        'four': 'assets/four.webm',
        'goat': 'assets/goat.webm',
        'morning': 'assets/morning.webm',
        'name': 'assets/name.webm',
        'nice': 'assets/nice.webm',
        'night': 'assets/night.webm',
        'one': 'assets/one.webm',
        'our': 'assets/our.webm',
        'pen': 'assets/pen.webm',
        'pencil': 'assets/pencil.webm',
        'presentation': 'assets/presentation.webm',
        'six': 'assets/six.webm',
        'thank you': 'assets/thank-you.webm',
        'thank': 'assets/thank.webm',
        'three': 'assets/three.webm',
        'two': 'assets/two.webm',
        'what': 'assets/what.webm',
        'you': 'assets/you.webm',
    };

    videoQueue = [];

    // Split input into words
    const words = inputText.split(' ');

    // Define an array of fallback random videos
    const videoValues = Object.values(videos); // Use existing videos as fallback options

    // Queue videos for each word
    words.forEach(word => {
        if (word in videos) {
            videoQueue.push(videos[word]);
        } else {
            // Select a random video if no match is found
            const randomIndex = Math.floor(Math.random() * videoValues.length);
            videoQueue.push(videoValues[randomIndex]);
        }
    });

    // Display appropriate message and start playback if videos are queued
    if (videoQueue.length > 0) {
        resultDiv.innerHTML = "Now showing sign language video(s) for: " + inputText;
        resultDiv.style.display = 'block'; // Make visible
        playNextVideo(resultDiv);
    } else {
        resultDiv.innerHTML = "No sign language video found for the entered text.";
        resultDiv.style.display = 'block'; // Make visible
    }
}
function playNextVideo(resultDiv) {
    if (videoQueue.length > 0) {
        const videoSource = videoQueue.shift();
        const videoPlayer = document.createElement('video');
        videoPlayer.src = videoSource;
        videoPlayer.controls = true;
        videoPlayer.autoplay = true;
        videoPlayer.style.width = '100%'; // Adjust to fit container
        videoPlayer.style.height = '100%';
        videoPlayer.onended = () => {
            resultDiv.removeChild(videoPlayer);
            if (videoQueue.length === 0) {
                resultDiv.style.display = 'none'; // Hide result when all videos are done
            } else {
                playNextVideo(resultDiv);
            }
        };
        resultDiv.appendChild(videoPlayer);
    }
}

    </script>
</body>
</html>
