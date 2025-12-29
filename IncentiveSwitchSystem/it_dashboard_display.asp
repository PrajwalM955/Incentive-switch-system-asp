<!-- Add this inside or just after your header -->
<div style="position: absolute; top: 15px; right: 40px;">
    <form method="post" action="logout.asp" style="margin:0;">
        <button type="submit" style="
            background: #f44336;
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            box-shadow: 0 1px 3px #c9d2de;
            transition: background 0.2s;
        " 
        onmouseover="this.style.background='#a31515'" 
        onmouseout="this.style.background='#f44336'">
            Logout
        </button>
    </form>
</div>
<%
' it_dashboard_display.asp - HAL IT dashboard: employee requests and payroll-approved requests with staff details
%>
<!DOCTYPE html>
<html>
<head>
    <title>IT Dashboard - HAL</title>
    <meta charset="UTF-8" />
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background: linear-gradient(120deg, #e3e6ea 0%, #f6f8fa 100%);
            margin: 0;
            overflow: hidden;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }
        header {
            background-color: #002663;
            color: white;
            padding: 15px 40px;
            font-weight: bold;
            font-size: 24px;
            letter-spacing: 1.2px;
            user-select: none;
            flex-shrink: 0;
            box-shadow: 0 4px 12px #b0b9c6;
        }
        .container {
            flex-grow: 1;
            margin: 20px auto;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 24px #b0b9c6;
            padding: 28px 36px;
            max-width: 1200px;
            display: flex;
            flex-direction: column;
            overflow: hidden;
        }
        h2 {
            color: #1e3d59;
            margin-bottom: 24px;
            letter-spacing: 1px;
            flex-shrink: 0;
        }
        .dashboard-row {
            display: flex;
            gap: 32px;
            flex-wrap: nowrap;
            flex-grow: 1;
            overflow: hidden;
        }
        .panel {
            background: linear-gradient(120deg, #f6f8fa 0%, #eaf1fb 100%);
            border-radius: 10px;
            padding: 20px 24px;
            box-sizing: border-box;
            border: 1.5px solid #d1d9e6;
            box-shadow: 0 2px 8px #e0e5ee;
            flex: 1 1 0;
            display: flex;
            flex-direction: column;
            max-height: 100%;
            overflow: hidden;
        }
        .panel-title {
            font-weight: bold;
            font-size: 18px;
            margin-bottom: 18px;
            color: #1e3d59;
            border-left: 4px solid #2a9d8f;
            padding-left: 10px;
            letter-spacing: 0.5px;
            flex-shrink: 0;
        }
        .table-container {
            overflow-y: auto;
            flex-grow: 1;
            margin-bottom: 12px;
        }
        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            background: #f6f8fa;
            border-radius: 8px;
            overflow: hidden;
        }
        th, td {
            padding: 10px 8px;
            border: 1px solid #c9d2de;
            text-align: left;
            font-size: 15px;
            white-space: nowrap;
        }
        th {
            background: #e3f0f7;
            color: #1e3d59;
            font-weight: bold;
            position: sticky;
            top: 0;
            z-index: 1;
        }
        tr:hover td {
            background: #eaf6ff;
        }
        .btn {
            background: #2a9d8f;
            color: #fff;
            padding: 8px 18px;
            border: none;
            border-radius: 5px;
            margin: 2px 0;
            cursor: pointer;
            font-size: 15px;
            box-shadow: 0 1px 3px #c9d2de;
            transition: background 0.2s;
            white-space: nowrap;
        }
        .btn:hover {
            background: #1e6c5a;
        }
        .panel-footer {
            text-align: right;
            margin-top: 8px;
            flex-shrink: 0;
        }
        @media (max-width: 1200px) {
            .dashboard-row {
                flex-wrap: wrap;
                overflow: visible;
            }
            .panel {
                max-height: none;
                flex: 1 1 100%;
                margin-bottom: 24px;
            }
            .table-container {
                max-height: 400px;
            }
        }
    </style>
</head>
<body>
<header>
     Hindustan Aeronautics Limited (HAL OVERHAUL DIVISION)
</header>

<div class="container">
    <h2>IT Employee Request Dashboard</h2>
    <div class="dashboard-row">
        <!-- Panel 1: All Employee IT Requests Received -->
        <div class="panel">
            <div class="panel-title">All Employee Requests Received</div>
            <div class="table-container" style="max-height: 380px;">
                <table>
                    <thead>
                        <tr>
                            <th>Employee ID</th>
                            <th>Employee Name</th>
                            <th>Request Date</th>
                            <th>Request Time</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr><td>E001</td><td>Ritish Patil</td><td>03-Jul-2025</td><td>10:14 AM</td><td>Pending</td></tr>
                        <tr><td>E002</td><td>Jane Doe</td><td>05-Jul-2025</td><td>11:20 AM</td><td>Pending</td></tr>
                        <tr><td>E003</td><td>Rahul Singh</td><td>07-Jul-2025</td><td>02:45 PM</td><td>Approved</td></tr>
                        <tr><td>E004</td><td>Priya Sharma</td><td>02-Jul-2025</td><td>09:50 AM</td><td>Pending</td></tr>
                        <tr><td>E005</td><td>Amit Kumar</td><td>06-Jul-2025</td><td>03:15 PM</td><td>Approved</td></tr>
                        <tr><td>E006</td><td>Sunita Rao</td><td>04-Jul-2025</td><td>01:05 PM</td><td>Pending</td></tr>
                        <tr><td>E007</td><td>Manoj Verma</td><td>08-Jul-2025</td><td>04:30 PM</td><td>Pending</td></tr>
                        <tr><td>E008</td><td>Priya Sharma</td><td>09-Jul-2025</td><td>10:30 AM</td><td>Approved</td></tr>
                        <tr><td>E009</td><td>Jane Doe</td><td>10-Jul-2025</td><td>12:00 PM</td><td>Approved</td></tr>
                        <tr><td>E010</td><td>Ritish Patil</td><td>12-Jul-2025</td><td>03:20 PM</td><td>Approved</td></tr>
                    </tbody>
                </table>
            </div>
            <div class="panel-footer">
                <button class="btn" onclick="exportReport('received')">Export Received Report</button>
            </div>
        </div>
        <!-- Panel 2: Requests Approved by Payroll Staff (9th-13th) with Staff Details -->
        <div class="panel">
            <div class="panel-title">Requests Approved by Payroll Staff (9th to 13th)</div>
            <div class="table-container" style="max-height: 380px;">
                <table>
                    <thead>
                        <tr>
                            <th>Employee ID</th>
                            <th>Employee Name</th>
                            <th>Payroll Staff ID</th>
                            <th>Payroll Staff Name</th>
                            <th>Approved Date</th>
                            <th>Approved Time</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>E008</td>
                            <td>Priya Sharma</td>
                            <td>P001</td>
                            <td>Sunita Rao</td>
                            <td>09-Jul-2025</td>
                            <td>10:45 AM</td>
                        </tr>
                        <tr>
                            <td>E009</td>
                            <td>Jane Doe</td>
                            <td>P002</td>
                            <td>Rahul Singh</td>
                            <td>10-Jul-2025</td>
                            <td>01:10 PM</td>
                        </tr>
                        <tr>
                            <td>E010</td>
                            <td>Ritish Patil</td>
                            <td>P003</td>
                            <td>Priya Sharma</td>
                            <td>12-Jul-2025</td>
                            <td>03:30 PM</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="panel-footer">
                <button class="btn" onclick="exportReport('approved')">Export Approved Report</button>
            </div>
        </div>
    </div>
</div>

<script>
function exportReport(type) {
    if(type === 'received') {
        alert('Received employee requests report exported successfully.');
    } else if(type === 'approved') {
        alert('Approved employee requests report exported successfully.');
    }
}
</script>
</body>
</html>
