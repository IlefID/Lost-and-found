<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lost and Found</title>
    <style>
        :root {
            --yellow: #fdf004;
        }
        html {
            scroll-behavior: smooth;
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', Arial, Helvetica, sans-serif;
        }
        body {
            background-color: black;
            position: relative;
            overflow: hidden;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        #particle-container {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            z-index: -1; /* Ensure particles are in the background */
        }
        .hero {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            flex: 1; /* Allow hero section to take up remaining space */
            position: relative;
        }
        .hero h1 {
            color: var(--yellow);
            font-size: 5rem;
            text-align: center;
        }
        .hero button {
            padding: 10px 30px;
            background-color: transparent;
            color: var(--yellow);
            margin-top: 40px;
            border: 2px solid var(--yellow);
            transition: cubic-bezier(0.445, 0.05, 0.55, 0.95) .15s;
            border-radius: 1px;
            position: relative;
            cursor: pointer;
        }
        .hero button::after {
            content: '';
            position: absolute;
            width: 0;
            height: 100%;
            background-color: var(--yellow);
            top: 0;
            left: 0;
            transition: .5s;
            z-index: -1;
        }
        .hero button:hover::after {
            width: 100%;
        }
        .hero button:hover {
            color: black;
            z-index: 2;
        }
        #about .lfh1 {
            font-size: 3rem;
        }
        #about .lfh1::after {
            top: 65px;
            height: 3px;
        }
        .about-desc {
            color: white;
            padding: 0 12%;
            padding-bottom: 5%;
            font-size: 2rem;
            text-align: center;
            line-height: 40px;
            font-family: 'Caveat', Arial, Helvetica, sans-serif;
        }
        .about-desc span {
            color: var(--yellow);
            font-family: 'Caveat', Arial, Helvetica, sans-serif;
        }
        footer {
            background-color: var(--yellow);
            text-align: center;
            padding: 10px;
        }
        footer a {
            color: red;
        }
        footer a:hover {
            text-decoration: underline;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
</head>
<body>
    <div id="particle-container"></div>
    <div class="hero">
        <h1>Lost and Found</h1>
        <a href="login">
            <button>Find item</button>
        </a>
    </div>
    <footer>
        <p>Lost and Found &copy; 2024. All Rights Reserved.</p>
    </footer>
    <script>
        particlesJS("particle-container", {
            background: {
                color: { value: "#f4fc03" },
                opacity: 1,
            },
            backgroundMask: {
                composite: "destination-out",
                cover: {
                    color: { value: "#f4fc03" },
                    opacity: 1,
                },
                enable: false,
            },
            defaultThemes: {},
            delay: 0,
            fullScreen: {
                enable: true,
                zIndex: -1,
            },
            fpsLimit: 144,
            interactivity: {
                events: {
                    onClick: { enable: true, mode: "repulse" },
                    onHover: { enable: true, mode: "grab" },
                    resize: true,
                },
                modes: {
                    push: { quantity: 4 },
                    repulse: { distance: 300, duration: 1 },
                },
            },
            particles: {
                color: { value: "#f4fc03" },
                links: {
                    color: "#f4fc03",
                    distance: 150,
                    enable: true,
                    opacity: 0.5,
                    width: 1,
                },
                move: {
                    direction: "none",
                    enable: true,
                    outModes: { default: "bounce" },
                    random: false,
                    speed: 4,
                    straight: false,
                },
                number: {
                    density: { enable: true, area: 800 },
                    value: 150,
                },
                opacity: { value: 0.0 },
                shape: { type: "circle" },
                size: { value: { min: 1, max: 3 } },
            },
            detectRetina: true,
        });
    </script>
</body>
</html>
