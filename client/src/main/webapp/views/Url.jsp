<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,400;1,100&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Page search</title>

    <script>

        function handleClick(e){

            let element = document.getElementById("animation-svg");

            element.classList.add("animate-class");
            element.classList.remove("hidden");
            element.classList.add("block");
            element.classList.add("cursor-not-allowed");

            setTimeout(()=>{
                element.classList.remove("animate-class");
                element.classList.remove("cursor-not-allowed");
                element.classList.remove("block");
                element.classList.add("hidden");
                window.location.href="/report";
            },5000)
        }

        function handleSubmit(event){
            event.preventDefault();
        }
    </script>
    <style>

        @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,400;1,100&display=swap');
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        .form-container{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
            margin-right: 10px;

        }
        .form-register-sub{
            display: flex;
            flex-direction: row;
            gap: 20px;


        }
        .form-container h2{
            font-size: 25px;
            text-transform: uppercase;

        }
        .form-container-sub{
            display: flex;
            flex-direction: column;
            margin-top: 20px;
            gap: 8px;
        }
        .form-container-sub input{
            width: 22rem;
            height: 3rem;
            background: #e0f2fe;
            outline: 0;
            border:none;
            padding-left: 10px;
        }
        .form-container-sub label{
            font-size: 16px;
            font-family: 'Poppins', sans-serif;
        }
        .form-container button{
            width: 14rem;
            height: 3rem;
            background: #0369a1;
            color: white;
            border: none;
            outline: 0;
            font-size: 16px;
            margin-top: 20px;
            cursor: pointer;
        }

        .animate-class{
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            from {
                transform: rotate(0deg);
            }
            to {
                transform: rotate(360deg);
            }
        }

    </style>
</head>
<body>

<div class="form-container mt-32">
    <h2>Website downloader</h2>

    <c:if test="${not empty error}">
        <div class="bg-red-300 w-full p-2 text-red-500 w-[20rem]">
                ${error}
        </div>
    </c:if>

    <%--    onsubmit="handleSubmit(event)"--%>
    <%--    call the api to download url when form gets submitted--%>
    <form action="/download" method="post">
        <div class="form-register-sub">
            <div class="form-container-sub">
                <label>Website url</label>
                <input type="text" name="url" required>
                <%--                onclick="handleClick()"--%>
                <button id="download-btn" type="submit" class="flex items-center justify-center transition ease-in-out duration-150">
                    <svg class="-ml-1 hidden mr-3 h-5 w-5 text-white" xmlns="http://www.w3.org/2000/svg" id="animation-svg" fill="none" viewBox="0 0 24 24">
                        <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                        <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                    </svg>
                    Download
                </button>
            </div>


        </div>
    </form>


    <%--    link to view all the downloaded pages--%>
    <a href="/report" class="-ml-[160px] underline text-[#0369a1] mt-16">View previous reports</a>

</div>

</body>
</html>