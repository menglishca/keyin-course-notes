---
title: 5. Examples
---

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example: Stock Price Tracker with WebSockets</h2></summary>

  You are tasked with building a **Stock Price Tracker** using WebSockets and Express. The application should allow users to view and update stock prices in real time.

  ### Example Repository
  - A base repository will be provided to help get started. You can find it [here](https://github.com/menglishca/socket-stock-tracker-base.git).

  ### Functional Requirements:

  1. **Display stock prices**:
     - Show an initial list of stocks and their prices on the main page.
     - Periodically update stock prices for the displayed stocks.

  2. **Add new stocks**:
     - Enable users to add new stock symbols via WebSocket messages.
     - When a new stock is added, broadcast the update to all connected clients.

  3. **Real-time updates**:
     - Push stock price updates to all clients via WebSockets without requiring a page refresh.

  ### WebSocket Communication:
  - WebSockets will handle bidirectional communication between the server and connected clients.
  - The server periodically sends updates on stock prices to all clients.
  - Clients can send messages to add new stock symbols, which are then broadcast to all other clients.

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Detailed Breakdown</h3></summary>

1. **Setting up the Express server**:
   - Use the `express-ws` package to add WebSocket support.
   - Set up a route to serve the main page using EJS templates.
   - Establish WebSocket endpoints to handle communication.

2. **Designing the EJS template**:
   - Create a user interface displaying a list of stocks with their current prices.
   - Include an input field for adding new stock symbols.
   - Ensure the page updates dynamically when stock prices change or new stocks are added.

3. **Implementing WebSocket logic**:
   - Periodically generate updated prices for the existing stocks and send these updates to all connected clients.
   - Handle incoming WebSocket messages from clients to add new stock symbols and notify all clients of the addition.

4. **Live updates**:
   - Broadcast real-time updates to all connected clients whenever the stock list changes or prices are updated.
  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example: Real-Time Notification System</h2></summary>

  You are tasked with building a **Real-Time Notification System** that pushes notifications to users in real-time using WebSockets. The system should support both broadcasting notifications to all users and sending notifications to specific users.

  ### Example Repository
  - A base repository will be provided to help get started. You can find it [here](https://github.com/menglishca/socket-notification-system-base.git).

  ### Functional Requirements:

  1. **Broadcast Notifications**:
     - The server can send notifications to all connected clients simultaneously.
     - Useful for system-wide updates, like announcements or maintenance alerts.

  2. **User-Specific Notifications**:
     - The server can target individual clients for personalized notifications.
     - Examples include private messages or account-specific updates.

  3. **Dynamic Display**:
     - Notifications should appear instantly on the user’s screen.
     - Implement the display as a pop-up or within a dedicated notification panel.

  ### WebSocket Communication:
  - WebSockets handle real-time, bidirectional communication between the server and clients.
  - The server generates notifications dynamically and sends them to either all clients or specific clients.
  - Clients display received notifications without requiring a page refresh.

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Detailed Breakdown</h3></summary>

1. **Setting up the Express server**:
   - Use the `express-ws` package to enable WebSocket support.
   - Set up a route to serve the main page using EJS templates.
   - Implement WebSocket endpoints for broadcasting and targeted messaging.

2. **Designing the EJS template**:
   - Create a user interface with a notification area or pop-up display.
   - Ensure the notifications update dynamically in real-time.
   - Include visual elements for distinguishing between general and user-specific notifications.

3. **Implementing WebSocket logic**:
   - Maintain a list of connected users to enable targeted notifications.
   - Broadcast messages to all users for general notifications.
   - Send personalized messages to specific users when needed.

4. **Dynamic notification updates**:
   - Notifications are pushed to clients as events occur (e.g., user actions, system alerts).
   - The client’s notification display updates instantly without refreshing the page.
  </details>
</details>

