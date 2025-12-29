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
' payroll_dashboard_display.asp - Optimized for standard desktop screen sizes, simple HAL header
%>
<!DOCTYPE html>
<html>
<head>
    <title>Payroll Dashboard - HAL</title>
    <meta charset="UTF-8" />
    <style>
        /* Reset and basic */
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background: #e3e6ea;
            margin: 0;
            overflow: hidden; /* prevent page scroll */
            height: 100vh;
            display: flex;
            flex-direction: column;
        }
        /* Header */
        header {
            background-color: #002663; /* HAL blue */
            color: white;
            padding: 15px 40px;
            font-weight: bold;
            font-size: 24px;
            letter-spacing: 1.2px;
            user-select: none;
            flex-shrink: 0;
        }
        /* Container */
        .container {
            flex-grow: 1;
            margin: 20px auto;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 24px #b0b9c6;
            padding: 24px 36px;
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
        /* Dashboard row with panels side by side */
        .dashboard-row {
            display: flex;
            gap: 30px;
            flex-wrap: nowrap;
            flex-grow: 1;
            overflow: hidden;
        }
        /* Panel styling */
        .panel {
            background: #f9fafc;
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
            font-size: 19px;
            margin-bottom: 18px;
            color: #1e3d59;
            border-left: 4px solid #2a9d8f;
            padding-left: 10px;
            letter-spacing: 0.5px;
            flex-shrink: 0;
        }
        /* Table container with scroll */
        .table-container {
            overflow-y: auto;
            flex-grow: 1;
            margin-bottom: 12px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: #f6f8fa;
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
        /* Buttons */
        .btn {
            background: #2a9d8f;
            color: #fff;
            padding: 7px 16px;
            border: none;
            border-radius: 5px;
            margin: 2px 0;
            cursor: pointer;
            font-size: 14px;
            box-shadow: 0 1px 3px #c9d2de;
            transition: background 0.2s;
            white-space: nowrap;
        }
        .btn:hover {
            background: #1e6c5a;
        }
        .btn-approve {
            background: #4caf50;
        }
        .btn-approve:hover {
            background: #357a38;
        }
        .btn-reject {
            background: #f44336;
        }
        .btn-reject:hover {
            background: #a31515;
        }
        .panel-footer {
            text-align: right;
            margin-top: 8px;
            flex-shrink: 0;
        }
        /* Responsive fallback */
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
    <h2>Payroll Dashboard</h2>
    <div class="dashboard-row">
        <!-- Panel 1: Requests 1st-8th -->
        <div class="panel">
            <div class="panel-title">Requests Received (1st to 8th)</div>
            <div class="table-container" style="max-height: 480px;">
                <table>
                    <thead>
                        <tr>
                            <th>Request ID</th>
                            <th>Employee</th>
                            <th>Date</th>
                            <th>Time</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr><td>REQ001</td><td>Ritish Patil</td><td>03-Jul-2025</td><td>10:14 AM</td></tr>
                        <tr><td>REQ002</td><td>Jane Doe</td><td>05-Jul-2025</td><td>11:20 AM</td></tr>
                        <tr><td>REQ003</td><td>Rahul Singh</td><td>07-Jul-2025</td><td>02:45 PM</td></tr>
                        <tr><td>REQ004</td><td>Priya Sharma</td><td>02-Jul-2025</td><td>09:50 AM</td></tr>
                        <tr><td>REQ005</td><td>Amit Kumar</td><td>06-Jul-2025</td><td>03:15 PM</td></tr>
                        <tr><td>REQ006</td><td>Sunita Rao</td><td>04-Jul-2025</td><td>01:05 PM</td></tr>
                        <tr><td>REQ007</td><td>Manoj Verma</td><td>08-Jul-2025</td><td>04:30 PM</td></tr>
                    </tbody>
                </table>
            </div>
            <div class="panel-footer">
                <button class="btn" onclick="forwardAllRequests()">Forward All Requests</button>
            </div>
        </div>

        <!-- Panel 2: Delayed Requests 9th-10th -->
        <div class="panel">
            <div class="panel-title">Delayed Switch Requests (9th and 10th)</div>
            <div class="table-container" style="max-height: 480px;">
                <table>
                    <thead>
                        <tr>
                            <th>Request ID</th>
                            <th>Employee</th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Decision</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr id="delayed1">
                            <td>REQ010</td>
                            <td>Ritish Patil</td>
                            <td>09-Jul-2025</td>
                            <td>09:45 AM</td>
                            <td>
                                <button class="btn btn-approve" onclick="approveRequest('delayed1')">Approve</button>
                                <button class="btn btn-reject" onclick="rejectRequest('delayed1')">Reject</button>
                            </td>
                        </tr>
                        <tr id="delayed2">
                            <td>REQ011</td>
                            <td>Jane Doe</td>
                            <td>10-Jul-2025</td>
                            <td>11:30 AM</td>
                            <td>
                                <button class="btn btn-approve" onclick="approveRequest('delayed2')">Approve</button>
                                <button class="btn btn-reject" onclick="rejectRequest('delayed2')">Reject</button>
                            </td>
                        </tr>
                        <tr id="delayed3">
                            <td>REQ012</td>
                            <td>Rahul Singh</td>
                            <td>09-Jul-2025</td>
                            <td>03:22 PM</td>
                            <td>
                                <button class="btn btn-approve" onclick="approveRequest('delayed3')">Approve</button>
                                <button class="btn btn-reject" onclick="rejectRequest('delayed3')">Reject</button>
                            </td>
                        </tr>
                        <tr id="delayed4">
                            <td>REQ013</td>
                            <td>Priya Sharma</td>
                            <td>10-Jul-2025</td>
                            <td>10:10 AM</td>
                            <td>
                                <button class="btn btn-approve" onclick="approveRequest('delayed4')">Approve</button>
                                <button class="btn btn-reject" onclick="rejectRequest('delayed4')">Reject</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="panel-footer">
                <button class="btn" onclick="forwardApproved()">Forward Approved Requests</button>
            </div>
        </div>
    </div>
</div>

<script>
function forwardAllRequests() {
    alert('Successfully forwarded to IT department');
}
function approveRequest(rowId) {
    var row = document.getElementById(rowId);
    row.style.backgroundColor = '#e0ffe0';
    row.setAttribute('data-approved', 'yes');
}
function rejectRequest(rowId) {
    var row = document.getElementById(rowId);
    row.style.backgroundColor = '#ffe0e0';
    row.setAttribute('data-approved', 'no');
}
function forwardApproved() {
    alert('Forwarded approved requests successfully');
}
</script>
</body>
</html>
