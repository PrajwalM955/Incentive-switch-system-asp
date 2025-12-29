<%
' header.asp - Common HTML head and navigation for Option for Incentive Payment (Offline)
' Usage: Place this at the top of every ASP page (after db_connection.asp if needed)
If IsEmpty(PageTitle) Then PageTitle = "Dashboard"
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><%= Server.HTMLEncode(PageTitle) %> - Option for Incentive Payment (Offline)</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/styles/main.css">
    <style>
        .site-header {
            background: #207cca;
            color: #fff;
            padding: 18px 30px;
            border-radius: 0 0 12px 12px;
            margin-bottom: 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .site-header .site-title {
            font-size: 1.5em;
            font-weight: bold;
            letter-spacing: 1px;
        }
        .site-header .user-info {
            font-size: 1em;
        }
        .site-header .nav-links a {
            color: #fff;
            text-decoration: none;
            margin-left: 20px;
            font-weight: 500;
        }
        .site-header .nav-links a:hover {
            text-decoration: underline;
        }
        @media (max-width: 600px) {
            .site-header {
                flex-direction: column;
                align-items: flex-start;
                padding: 14px 10px;
            }
            .site-header .nav-links a {
                margin-left: 0;
                margin-right: 15px;
            }
        }
    </style>
</head>
<body>
    <div class="site-header">
        <div class="site-title">
            Option for Incentive Payment (Offline)
        </div>
        <div class="user-info">
            <% If Not IsEmpty(Session("name")) Then %>
                Hello, <%= Server.HTMLEncode(Session("name")) %>
                (<%= Server.HTMLEncode(Session("role")) %>)
            <% End If %>
        </div>
        <div class="nav-links">
            <% If Not IsEmpty(Session("role")) Then %>
                <% Select Case UCase(Session("role"))
                    Case "EMPLOYEE" %>
                        <a href="/employee_dashboard.asp">Dashboard</a>
                <%  Case "PAYROLL" %>
                        <a href="/payroll_dashboard.asp">Dashboard</a>
                <%  Case "IT" %>
                        <a href="/it_dashboard.asp">Dashboard</a>
                <% End Select %>
                <a href="/logout.asp">Logout</a>
            <% Else %>
                <a href="/login.asp">Login</a>
            <% End If %>
        </div>
    </div>
<%
' After this include, your page should continue with its own content (do not close </body> or </html> here)
%>
