<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Dashboard - Ritish Patil</title>
    <style>
        html, body {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f6f8fa;
            overflow: hidden;
        }
        header {
            background-color: #002663;
            color: white;
            padding: 12px 30px;
            font-weight: bold;
            font-size: 22px;
            letter-spacing: 1.1px;
            user-select: none;
            box-shadow: 0 4px 12px rgba(0,0,0,0.3);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .logout-btn {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 8px 18px;
            font-size: 14px;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s ease, box-shadow 0.3s ease;
        }
        .logout-btn:hover {
            background-color: #d32f2f;
            box-shadow: 0 0 10px rgba(255, 0, 0, 0.5);
        }
        .main-layout {
            display: flex;
            height: calc(100vh - 64px); /* Adjusted for header height */
            padding: 20px;
            box-sizing: border-box;
        }
        .side-panel {
            width: 280px;
            background: #f0f0f0;
            border-right: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            display: flex;
            flex-direction: column;
        }
        .side-panel h3 {
            margin-top: 0;
            color: #2d6cdf;
        }
        .history-container {
            flex-grow: 1;
            overflow-y: auto;
            margin-top: 10px;
            background: #fff;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        .history-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
        }
        .history-table th, .history-table td {
            border: 1px solid #ccc;
            padding: 6px 8px;
            text-align: left;
            white-space: nowrap;
        }
        .history-table th {
            background: #eaf1fb;
            position: sticky;
            top: 0;
            z-index: 1;
        }
        .history-note {
            font-size: 12px;
            color: #888;
            margin-top: 8px;
        }
        .container {
            flex-grow: 1;
            margin-left: 20px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 8px #ccc;
            padding: 30px;
            display: flex;
            flex-direction: column;
            height: 100%;
            overflow: hidden;
        }
        h2 {
            color: #2d6cdf;
            margin-top: 0;
        }
        .current-selection {
            background: #d4edda;
            border: 1px solid #c3e6cb;
            padding: 15px;
            border-radius: 8px;
            margin: 20px 0;
            color: #155724;
        }
        .content-scroll {
            flex-grow: 1;
            overflow-y: auto;
        }
        .card {
            background: #eaf1fb;
            margin: 20px 0;
            padding: 20px;
            border-radius: 8px;
        }
        .incentive-breakdown {
            max-height: 250px;
            overflow-y: auto;
            background: #ffffff;
            border: 1px solid #ccc;
            border-radius: 6px;
            padding: 10px;
        }
        .incentive-item {
            margin: 8px 0;
            padding: 5px 0;
            border-bottom: 1px dotted #ccc;
        }
        .incentive-item:last-child {
            border-bottom: none;
        }
        .payment-options {
            background: #fff3cd;
            border: 1px solid #ffeaa7;
            padding: 20px;
            border-radius: 8px;
            margin: 20px 0;
        }
        .radio-option {
            margin: 10px 0;
        }
        .radio-option input {
            margin-right: 8px;
        }
        .actions {
            margin-top: 20px;
        }
        .btn {
            background: #2d6cdf;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            margin-right: 10px;
            cursor: pointer;
            font-size: 14px;
        }
        .btn:hover {
            background: #1c4f8e;
        }
        ul {
            margin: 0;
            padding-left: 20px;
        }
        .history-container::-webkit-scrollbar,
        .content-scroll::-webkit-scrollbar,
        .incentive-breakdown::-webkit-scrollbar {
            width: 8px;
        }
        .history-container::-webkit-scrollbar-thumb,
        .content-scroll::-webkit-scrollbar-thumb,
        .incentive-breakdown::-webkit-scrollbar-thumb {
            background-color: rgba(0,0,0,0.2);
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <header>
        Hindustan Aeronautics Limited (HAL OVERHAUL DIVISION)
        <button class="logout-btn">Logout</button>
    </header>

    <div class="main-layout">
        <!-- Side Panel -->
        <div class="side-panel">
            <h3>Switch History</h3>
            <div class="history-container">
                <table class="history-table">
                    <thead>
                        <tr><th>Date</th><th>Time</th><th>Option Selected</th></tr>
                    </thead>
                    <tbody>
                        <tr><td>03-Jan-2025</td><td>10:14 AM</td><td>15th of Month</td></tr>
                        <tr><td>07-Feb-2025</td><td>03:27 PM</td><td>Salary Day</td></tr>
                        <tr><td>02-Mar-2025</td><td>09:45 AM</td><td>15th of Month</td></tr>
                        <tr><td>06-Apr-2025</td><td>01:18 PM</td><td>Salary Day</td></tr>
                        <tr><td>05-May-2025</td><td>11:05 AM</td><td>15th of Month</td></tr>
                        <tr><td>08-Jun-2025</td><td>04:50 PM</td><td>Salary Day</td></tr>
                    </tbody>
                </table>
            </div>
            <div class="history-note">
                * Only one switch allowed per month (between 1st and 8th).<br>
                * For delayed switch request on 9th and 10th, use "Send Switch Request" button.
            </div>
        </div>

        <!-- Main Dashboard -->
        <div class="container">
            <h2>Welcome, Ritish Patil!</h2>

            <div class="current-selection">
                <strong>Current Payment Option:</strong> <span id="selectedOption">Receive incentive on 15th of each month</span>
            </div>

            <div class="content-scroll">
                <div class="card">
                    <strong>Your Monthly Incentives (2025)</strong>
                    <div class="incentive-breakdown">
                        <div class="incentive-item">January: Rs 4,200 - <span id="jan-date">Next payment: 15th January</span></div>
                        <div class="incentive-item">February: Rs 3,800 - <span id="feb-date">Next payment: 15th February</span></div>
                        <div class="incentive-item">March: Rs 5,100 - <span id="mar-date">Next payment: 15th March</span></div>
                        <div class="incentive-item">April: Rs 4,700 - <span id="apr-date">Next payment: 15th April</span></div>
                        <div class="incentive-item">May: Rs 5,300 - <span id="may-date">Next payment: 15th May</span></div>
                        <div class="incentive-item">June: Rs 4,900 - <span id="jun-date">Next payment: 15th June</span></div>
                        <div class="incentive-item">July: Rs 5,600 - <span id="jul-date">Next payment: 15th July</span></div>
                        <div class="incentive-item">August: Rs 4,400 - <span id="aug-date">Next payment: 15th August</span></div>
                        <div class="incentive-item">September: Rs 5,000 - <span id="sep-date">Next payment: 15th September</span></div>
                        <div class="incentive-item">October: Rs 4,800 - <span id="oct-date">Next payment: 15th October</span></div>
                        <div class="incentive-item">November: Rs 5,200 - <span id="nov-date">Next payment: 15th November</span></div>
                        <div class="incentive-item">December: Rs 5,500 - <span id="dec-date">Next payment: 15th December</span></div>
                    </div>
                </div>

                <div class="payment-options">
                    <strong>Choose Your Incentive Payment Date:</strong><br><br>
                    <div class="radio-option">
                        <input type="radio" name="paymentOption" value="15th" id="option1" checked onchange="updatePaymentOption()">
                        <label for="option1">Option 1: Receive incentive on 15th of each month</label>
                    </div>
                    <div class="radio-option">
                        <input type="radio" name="paymentOption" value="salary" id="option2" onchange="updatePaymentOption()">
                        <label for="option2">Option 2: Receive incentive on salary day (last working day of month)</label>
                    </div>
                    <br>
                    <button class="btn" onclick="savePaymentOption()">Save Payment Preference</button>
                </div>

                <div class="card">
                    <strong>Recent Announcements</strong>
                    <ul>
                        <li>Annual meeting on July 15th, 2025</li>
                        <li>Performance review period starts August 1st, 2025</li>
                        <li>New incentive structure effective from January 2025</li>
                    </ul>
                </div>

                <div class="actions">
                    <button class="btn">View Payslip</button>
                    <button class="btn" onclick="sendSwitchRequest()">Send Switch Request</button>
                    <button class="btn">Download Incentive Report</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        function updatePaymentOption() {
            var option1 = document.getElementById('option1');
            var selectedOptionText = document.getElementById('selectedOption');
            var months = ['jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec'];
            var monthNames = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
            if (option1.checked) {
                selectedOptionText.textContent = 'Receive incentive on 15th of each month';
                for (let i = 0; i < months.length; i++) {
                    document.getElementById(months[i] + '-date').textContent = 'Next payment: 15th ' + monthNames[i];
                }
            } else {
                selectedOptionText.textContent = 'Receive incentive on salary day (last working day of month)';
                const lastDays = ['31st Jan', '28th Feb', '31st Mar', '30th Apr', '31st May', '30th Jun',
                    '31st Jul', '31st Aug', '30th Sep', '31st Oct', '30th Nov', '31st Dec'];
                for (let i = 0; i < months.length; i++) {
                    document.getElementById(months[i] + '-date').textContent = 'Next payment: ' + lastDays[i] + ' (with salary)';
                }
            }
        }

        function savePaymentOption() {
            var option1 = document.getElementById('option1');
            var optionText = option1.checked ? 'Option 1 (15th of month)' : 'Option 2 (Salary day)';
            alert('Payment preference saved: ' + optionText);
        }

        function sendSwitchRequest() {
            alert('✅ Successfully sent request to payroll department for switch!');
        }

        window.onload = updatePaymentOption;
    </script>
</body>
</html>
