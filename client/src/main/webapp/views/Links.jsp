<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Report</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,400;1,100&display=swap"
          rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>

    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        .report-container {
            display: flex;
            flex-direction: column;
            margin-top: 50px;

        }

        .report-container h2 {
            text-align: center;
            margin-top: 10px;
        }

        .report-container-sub {
            width: 100%;
            height: auto;
        }

        .report-container-sub table {
            width: 95%;
            height: auto;
            margin-left: 30px;
            margin-top: 10px;

        }

        .table-header {
            height: 2.8rem;
            background: #e0f2fe;
        }

        .table-body tr td {
            text-align: center;
            padding-top: 12px;
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
    </style>
</head>
<body>

<div class="form-container">

<%--        <table>--%>
<%--            <thead class="table-header">--%>
<%--            <th>Link Name</th>--%>
<%--            <th>Website Name</th>--%>
<%--            <th>Total elapsed time(MS)</th>--%>
<%--            <th>Kilobytes Downloaded</th>--%>

<%--            </thead>--%>
<%--            <tbody class="table-body">--%>
<%--            <c:forEach items="${links}" var="url">--%>
<%--                <tr>--%>
<%--                    <td>${url.link_name}</td>--%>
<%--                    <td>${url.website.website_name}</td>--%>
<%--                    <td>${url.total_elapsed_time}</td>--%>
<%--                    <td>${url.total_downloaded_kilobytes}</td>--%>
<%--                </tr>--%>
<%--            </c:forEach>--%>

<%--            </tbody>--%>
<%--        </table>--%>


    <div class="mt-20 ml-[60px]">
        <h2 class="font-semibold text-xl">Download report for your search</h2>

        <div class="flex flex-col gap-3 pt-4 ">
            <c:forEach items="${links}" var="url">
                <div class="border-b pb-2 border-gray-400">
                    <div class="flex gap-2 items-center">
                        <h6 class="font-semibold">Link name: </h6>
                        <span>${url.link_name}</span>
                    </div>

                    <div class="flex gap-2 items-center">
                        <h6 class="font-semibold">Website name: </h6>
                        <span>${url.website.website_name}</span>
                    </div>

                    <div class="flex gap-2 items-center">
                        <h6 class="font-semibold">Took: </h6>
                        <span>${url.total_elapsed_time}</span>
                    </div>

                    <div class="flex gap-2 items-center">
                        <h6 class="font-semibold">Kilobytes: </h6>
                        <span>${url.total_downloaded_kilobytes}</span>
                    </div>
                </div>
            </c:forEach>
        </div>


    </div>
</div>

</body>
</html>