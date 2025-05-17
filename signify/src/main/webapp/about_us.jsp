<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <title>About Page</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: linear-gradient(to bottom right, #1e2a47, #2e90f0);
            color: white;
            margin: 0;
        }
        .main-content {
        margin-left: 250px; /* Offset by sidebar width */
        width: calc(100% - 250px);
        display: flex;
        flex-direction: column;
    }

    header {
        padding: 15px;
        background: transparent;
        display: flex;
        justify-content: space-between;
        align-items: center;
        position: fixed;
        width: 100%;
        z-index: 1000;
        padding-left: 50px;
    }

    .container {
        padding: 80px 50px; /* Adding top padding to avoid overlapping with the fixed header */
        text-align: center;
    }

        .sidebar {
    width: 250px;
    background-color: #12264a;
    color: #fff;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding-top: 20px;
    height: 100vh; /* Ensures the sidebar covers the full viewport height */
    position: fixed; /* Keeps the sidebar fixed in place */
    top: 0;
    left: 0;
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
    padding: 0;
    width: 100%;
    text-align: center;
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

.container {
        padding: 80px 50px; /* Adding top padding to avoid overlapping with the fixed header */
        text-align: center;
    }

    @keyframes popUpAnimation {
        0% {
            transform: scale(0.8);
            opacity: 0;
        }
        100% {
            transform: scale(1);
            opacity: 1;
        }
    }
        .about-content {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 40px;
    margin-bottom: 40px;
    background: url(A_images/pngtree-sign-language-communication-for-the-deaf-and-the-disabled-png-image_6144939.png) no-repeat center center;
    background-size: auto 110%; 
    background-position: calc(50% + 10px) cover; 
    width: 100%; 
    height: 500px; 
    padding-left: 70px;
    animation: popUpAnimation 1.5s ease-in-out; /* Adding animation */
}
        .profile-image {
            width: 150px;
            height: 250px;
            border-radius: 15px;
            display: inline-block;
        }

        .info {
            max-width: 300px;
        }

        .info h1 {
            font-size: 36px;
            margin-bottom: 50px;
            margin-right: 60px;
            border-width: 23px;
            border-color: black;
            text-shadow: black;
        }

        .info .subtitle {
            font-size: 20px;
            margin: 10px 0;
        }

        .info .quote {
            font-style: italic;
            margin-bottom: 20px;
        }

        .btn {
            padding: 10px 20px;
            background-color: #f0a500;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-right: 50px;
        }

        .btn:hover {
            background-color: #ffbb33;
        }

        .cards-container {
            display: flex;
            gap: 20px;
            justify-content: center;
        }

        .card {
            background: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 10px;
            max-width: 200px;
            text-align: left;
        }

        .card h3 {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .card p {
            font-size: 14px;
            margin-bottom: 10px;
        }

        .card .read-more {
            color: #f0a500;
            text-decoration: none;
            font-weight: bold;
        }

        .card .read-more:hover {
            text-decoration: underline;
        }
        .team-icon {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background-color: #f0a500;
            color: white;
            padding: 15px;
            border-radius: 50%;
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s;
        }

        .team-icon:hover {
            transform: scale(1.1);
        }

        .team-slider {
            position: fixed;
            bottom: 100px;
            right: 50px;
            width: 300px;
            max-height: 0;
            overflow: hidden;
            background:transparent;
            color: white;
            padding: 20px;
            border-radius: 10px;
            transition: max-height 0.5s ease-in-out;
            max-height: 400px; /* Set max height for scrollable area */
            overflow-y: auto; /* Enable scrolling */
            display: none; 
        
        }
        .team-slider::-webkit-scrollbar {
        width: 8px; /* Set scrollbar width */
    }

    .team-slider::-webkit-scrollbar-track {
        background: transparent; /* Transparent track */
    }

    .team-slider::-webkit-scrollbar-thumb {
        background: rgba(255, 255, 255, 0.3); /* Semi-transparent thumb */
        border-radius: 4px; /* Rounded corners for the scrollbar thumb */
    }

    .team-slider::-webkit-scrollbar-thumb:hover {
        background: rgba(255, 255, 255, 0.5); /* Lighter color on hover */
    }
        .team-member {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
            animation: slideIn 1s forwards;
            transform: translateX(100%);
            opacity: 0;
            overflow: hidden;
        }

        .team-member img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            margin-right: 10px;
            overflow: hidden;
        }

        .team-member-info {
            display: flex;
            flex-direction: column;
            overflow: hidden;
        }
        .hidden {
            display: none;
        }

        @keyframes slideIn {
            0% {
                transform: translateX(100%);
                opacity: 0;
            }
            100% {
                transform: translateX(0);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <aside class="sidebar">
        <div class="logo">
            <h3>Signify</h3>
            <img src="A_images/Sig-.png" alt="Logo Image" class="logo-image">

        </div>
        <nav>
            <ul>
                <li><a href="dashboard.jsp"><i class="fas fa-user"></i></a></li>
                <li><a href="sign1.jsp"><i class="fas fa-book-open"></i></a></li>
                <li><a href="about_us.jsp"><i class="fas fa-calendar-alt"></i></a></li>
                <li><a href="#"><i class="fas fa-cog"></i></a></li>
            </ul>
        </nav>
        <div class="bottom-image">
            <img src="A_images/image_processing20210620-27756-zsfljb.png" alt="Bottom Image" class="bottom-image-img">
        </div>
    </aside>
    <div class="main-content">
        <header>
            <h1>About Us</h1>
        </header>

    <main class="container">
        <section class="about-content">
            <div class="team-icon" id="teamIcon">
                <i class="fas fa-users"></i>
            </div>
        
            <!-- Team slider content -->
            <div class="team-slider" id="teamSlider">
                <div class="team-member">
                    <img src="A_images/sourav.jpg" alt="Member 1">
                    <div class="team-member-info">
                        <h4>Sourav Tewary</h4>
                        <p>Lead Developer</p>
                    </div>
                </div>
                <div class="team-member">
                    <img src="A_images/sayan.jpg" alt="Member 2">
                    <div class="team-member-info">
                        <h4>Sayan Sarkar</h4>
                        <p>UI/UX Designer</p>
                    </div>
                </div>
                <div class="team-member">
                    <img src="A_images/subhadeep.jpg" alt="Member 3">
                    <div class="team-member-info">
                        <h4>Subhadeep Banerjee</h4>
                        <p>Data Management</p>
                    </div>
                </div>
                <div class="team-member">
                    <img src="A_images/surbhi.jpg" alt="Member 3">
                    <div class="team-member-info">
                        <h4>Surbhi Kumari</h4>
                        <p>Frontend Developer</p>
                    </div>
                </div>
                <div class="team-member">
                    <img src="A_images/member3.jpg" alt="Member 3">
                    <div class="team-member-info">
                        <h4>Satendra Kumar</h4>
                        <p>Backend Developer</p>
                    </div>
                </div>
                
            </div>
        
            <div class="info">
                <h1>Echoes</h1>
                <p class="subtitle" style="color: white; font-size: x-large; font: 900; text-shadow: 4px 4px 8px rgba(0, 0, 0, 0.7);"><b>Designer & Developer</b></p>
                <p class="subtitle" style="color: white; font-size: x-large; text-shadow: 4px 4px 8px rgba(0, 0, 0, 0.7);"><b>Asansol Engineering College</b></p>
                <p class="quote" style="color: white; font-size: large; text-shadow: 4px 4px 8px rgba(0, 0, 0, 0.7);"><b>Failure is the condiment that gives success</b></p>
                
                <a href="contact.jsp" class="btn">Contact Me</a>


            </div>
        </section>

        <section class="cards-container">
            <div class="card">
                <h3>Real time text to sign</h3>
                <p>Convert text to Indian Sign Language instantly, making communication inclusive and accessible for the deaf community through expressive, accurate ISL translations.</p>
                <a href="#" class="read-more">Read More &gt;</a>
            </div>
            <div class="card">
                <h3>Educational content</h3>
                <p>Transform educational content into Indian Sign Language, ensuring accessible, inclusive learning experiences for deaf students through engaging, accurate ISL translations</p>
                <a href="#" class="read-more">Read More &gt;</a>
            </div>
            <div class="card">
                <h3>AI Chatbot</h3>
                <p>Engage with our AI chatbot for tailored responses or OpenAI Gemini-powered replies, providing accurate, personalized, and insightful interactions seamlessly</p>
                <a href="#" class="read-more">Read More &gt;</a>
            </div>
        </section>
    </main>
    </div>

    <script>
        //Basic script to handle any interactive behaviors
        document.addEventListener('DOMContentLoaded', () => {
            const btn = document.querySelector('.btn');
            btn.addEventListener('click', () => {
                alert('Contact form would be opened.');
            });
        });
    // Trigger pop-up animation only on page load
    window.addEventListener('load', () => {
        const aboutContent = document.querySelector('.about-content');
        aboutContent.style.animation = 'popUpAnimation 1.5s ease-in-out';
    });
    const teamIcon = document.getElementById('teamIcon');
        const teamSlider = document.getElementById('teamSlider');
        let isOpen = false;

        teamIcon.addEventListener('click', () => {
            if (!isOpen) {
                teamSlider.style.display = 'block'; // Show the slider
                const members = document.querySelectorAll('.team-member');
                members.forEach((member, index) => {
                    setTimeout(() => {
                        member.style.transform = 'translateX(0)';
                        member.style.opacity = '1';
                    }, index * 200); // Staggered animation
                });
            } else {
                const members = document.querySelectorAll('.team-member');
                members.forEach(member => {
                    member.style.transform = 'translateX(100%)';
                    member.style.opacity = '0';
                });
                setTimeout(() => {
                    teamSlider.style.display = 'none'; // Hide the slider after animation
                }, 500);
            }
            isOpen = !isOpen;
        });
</script>
</body>
</html>