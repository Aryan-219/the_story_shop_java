<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://cdn.tailwindcss.com"></script>

    <script src="https://kit.fontawesome.com/921e89acba.js" crossorigin="anonymous"></script>

    <title>The Story Shop - Sign Up</title>

    <link
        href="https://api.fontshare.com/v2/css?f[]=sharpie@400&f[]=tanker@400&f[]=pencerio@50&f[]=stardom@400&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.css" rel="stylesheet" />

    <style>
        .headin {
            font-family: 'Stardom', sans-serif;
        }
    </style>

</head>



<!-- Modal toggle -->
<!-- <button data-modal-target="authentication-modal" data-modal-toggle="authentication-modal" class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" type="button">
    Toggle modal
  </button> -->
  
  <!-- Main modal -->
  <div id="authentication-modal" tabindex="-1" aria-hidden="true" class="animate__animated animate__backInUp hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
      <div class="relative p-4 w-full max-w-md max-h-full">
          <!-- Modal content -->
          <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
              <!-- Modal header -->
              <div class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                  <h3 class="text-xl font-semibold text-gray-900 dark:text-white">
                      Enter Your Registered Email
                  </h3>
                  <button type="button" class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white" data-modal-hide="authentication-modal">
                      <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                          <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                      </svg>
                      <span class="sr-only">Close modal</span>
                  </button>
              </div>
              <!-- Modal body -->
              <div class="p-4 md:p-5">
                  <form class="space-y-4">
                      <div>
                          <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your email</label>
                          <input type="email" name="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" placeholder="Registered Email" required>
                      </div>
                      <div class="hidden">
                          <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your password</label>
                          <input type="password" name="password" id="password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white">
                      </div>
                      
                      <button type="button" id="send_otp_btn" class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Send OTP</button>
                      
                  </form>
              </div>
          </div>
      </div>
  </div> 
  

<body
    class="flex justify-center items-center min-h-screen bg-[url('static/media/images/signup/bg3.jpg')] bg-cover bg-center flex-col relative">
    <a href="getting_started.do?login=false">
        <div class="absolute top-8 left-8 text-3xl text-white cursor-pointer">
            <i class="fa-solid fa-arrow-left"></i>
        </div>
    </a>


    <div
        class="wrapper md:w-[480px] w-full text-text-gray-800 rounded-xl pt-8 pb-8 pr-10 pl-10 h-full bg-indigo-900 bg-clip-padding backdrop-filter backdrop-blur-sm bg-opacity-10 border border-spacing-2 border-gray-800">
        <form action="getting_started.do?login=true" method="post" onsubmit="return handleSubmit()">
            <div class="input-box w-full h-[80px] my-[10px] mx-0 relative text-[20px] mb-12 ">
                <h1 class="text-[50px] text-center font-bold text-white bg-gray-800 rounded-lg headin animate__animated animate__bounceIn animate__slower">LOG IN</h1>

                <c:if test="${loginErr != null}">
                    <div class="animate__animated animate__flash animate__infinite animate__slower text-center mt-3">
                        <span class="text-xs mx-6 border py-2 px-1 rounded-md border-red-700 bg-red-400 text-gray-800 block tracking-wider font-bold visible" id="server_err">
                            <c:out value="${loginErr}" />
                        </span>
                    </div>
                </c:if>
                
            </div>

            <div class="input-box w-full h-[80px] my-[20px] mx-0 relative text-[20px]">
                <input type="text" placeholder="Email" name="email"
                    class="w-full h-[70%] bg-transparent border-2 border-gray-800 outline-none rounded-[40px] px-7 py-7 placeholder:text-gray-800 mb-0">
                <i class="fa-solid fa-envelope absolute right-[20px] top-[25%]"></i>
                <div class="animate__animated animate__flash animate__infinite animate__slower">
                    <span
                        class="text-xs mx-6 border py-1 px-1 rounded-md border-red-700 bg-red-400 text-gray-800 font-medium invisible"
                        id="email_err">Please Fill An Email</span>
                </div>
            </div>

            <div class="input-box w-full h-[80px] my-[20px] mx-0 relative text-[20px]">
                <input type="password" placeholder="Password" name="password"
                    class="w-full h-[70%] bg-transparent border-2 border-gray-800 outline-none rounded-[40px] px-7 py-7 placeholder:text-gray-800 mb-0">
                <i class="fa-solid fa-lock absolute right-[20px] top-[25%]"></i>
                <div class="animate__animated animate__flash animate__infinite animate__slower">
                    <span
                        class="text-xs mx-6 border py-1 px-1 rounded-md border-red-700 bg-red-400 text-gray-800 font-medium invisible"
                        id="password_err">Please Fill A Password</span>
                </div>
            </div>

            <button type="submit"
                class="btn w-full h-11 bg-gray-800 rounded-[40px] shadow-[0 0 10px rgba(0, 0, 0, .1)] cursor-pointer text-[18px] text-white font-semibold headin">Log
                In</button>

            <div class="register-link text-[14.5px] text-center mt-5">
                <p class="text-gray-900">Don't have an account? <a href="getting_started.do?login=false"
                        class="text-black font-semibold hover:underline">Signup Here</a></p>
                </div>
        </form>

        <div class="register-link text-[14.5px] text-center mt-5">
            <p class="text-gray-900">Forgot Password? 
                <button class="text-black font-semibold hover:underline" data-modal-target="authentication-modal" data-modal-toggle="authentication-modal" type="button">
                    Click Here To Recover
                </button>
            </p>
        </div>

    </div>

    <script src="static/js/login.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.js"></script>
</body>

</html>