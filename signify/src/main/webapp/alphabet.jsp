<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Education Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="alphabet.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
                    <li><a href="about_us.jsp"><i class="fas fa-calendar-alt"></i></a></li>
                    <li><a href="#"><i class="fas fa-cog"></i></a></li>
                </ul>
            </nav>
            <div class="bottom-image">
                <img src="images/image_processing20210620-27756-zsfljb.png" alt="Bottom Image" class="bottom-image-img">
            </div>
        </aside>
        <main class="content">
            <header class="header">
                <input type="text" placeholder="Search">
                <div class="user-info">
                    <a href="dashboard.jsp">
                        <i class="ri-arrow-go-back-line"></i>
                    </a>
                </div>
            </header>
            <section class="dashboard">
                <h2>Dashboard</h2>
                
                <!-- Our Courses Section -->
                <div class="courses-section">
                    <h3>Alphabets</h3>
                    <div class="course-slider">
                        <div class="course-card" onclick="openModal('images/A_0.jpg')" style="background-image: url('images/letter_A_red-1024.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/B_1.jpg')" style="background-image: url('images/letter_B_red-1024.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/C_0.jpg')" style="background-image: url('images/letter_C_red-1024.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/D_0.jpg')" style="background-image: url('images/letter_D_red-512.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/images.jpeg')" style="background-image: url('images/letter_E_red-1024.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/F_0.jpg')" style="background-image: url('images/letter_F_red-1024.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/G_0.jpg')" style="background-image: url('images/letter_G_red-512.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/H_0.jpg')" style="background-image: url('images/letter_H_red-512.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/I.jpg')" style="background-image: url('images/letter_I_red-1024.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/J_0.jpg')" style="background-image: url('images/letter_J_red-512.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/K_0.jpg')" style="background-image: url('images/letter_K_red-512.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/L_0.jpg')" style="background-image: url('images/letter_L_red-512.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/M.jpg')" style="background-image: url('images/letter_M_red-512.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/N.jpg')" style="background-image: url('images/letter_N_red-1024.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/O_0.jpg')" style="background-image: url('images/letter_O_red-512.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/P_0.jpg')" style="background-image: url('images/letter_P_red-1024.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/Q.jpg')" style="background-image: url('images/letter_Q_red-512.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/R_0.jpg')" style="background-image: url('images/letter_R_red-512.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/S_0.jpg')" style="background-image: url('images/letter_S_red-512.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/T_0.jpg')" style="background-image: url('images/letter_T_red-512.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/U.jpg')" style="background-image: url('images/letter_U_red-1024.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/W_0.jpg')" style="background-image: url('images/letter_W_red-2-1024.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/X_0.jpg')" style="background-image: url('images/lowercase_letter_x_red-512.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/Y_0.jpg')" style="background-image: url('images/letter_Y_red-1024.webp');">
                        </div>
                        <div class="course-card" onclick="openModal('images/Z.jpg')" style="background-image: url('images/letter_Z_red-512.webp');">
                        </div>
                        
                        <!-- Modal structure -->
                        <div id="modal" class="modal">
                            <div class="modal-content">
                                <span class="close" onclick="closeModal()">&times;</span>
                                <img id="modal-image" src="" alt="Course Image" class="modal-image">
                            </div>
                        </div>
                        

                    </div>
                </div>

               
            </section>
        </main>
    </div>
    <script>
		
		function openModal(imageUrl) {
		    document.getElementById("modal-image").src = imageUrl;
		    document.getElementById("modal").style.display = "flex";
		}
		
		function closeModal() {
		    document.getElementById("modal").style.display = "none";
		}

    </script>
</body>
</html>
