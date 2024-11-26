---
title: 5. Examples
---

## Objective
The goal of the following examples is to introduce the concept of WebSockets for bidirectional communication between the server and clients

## Example: Stock Price Tracker with WebSockets
### Ask
- Build an Express application that tracks and updates stock prices in real-time.
- Use WebSockets to allow clients to add new stock symbols and receive live updates of stock prices.

### Features
- Display an initial list of stocks and their prices.
- Periodically update the stock prices for the existing stocks.
- Allow users to add new stocks to the tracker via WebSocket messages.
- Broadcast updates to all connected clients whenever a new stock is added.

### Tasks
- **Set up the Express server**:
  - Create the Express server and configure the WebSocket using `express-ws`.
  - Create a route to serve the main page using EJS templates.
  - Set up WebSocket communication to send and receive stock data.
  
- **Design the EJS template**:
  - Create an interface that shows the list of stocks and their current prices.
  - Include an input field to allow users to add a new stock symbol.
  - Display real-time updates for stock prices without needing to refresh the page.

- **WebSocket logic**:
  - Use WebSockets to handle client connections.
  - Send stock prices to clients every few seconds.
  - Accept messages from clients to add new stocks and broadcast these updates to all connected clients.

### Features Breakdown:
1. **Live Stock Updates**:
   - Stock prices will be updated periodically and sent to all clients.
   - The updates are broadcast to every connected client using WebSockets.

2. **Dynamic Stock List**:
   - Clients can add new stocks to the tracker by sending WebSocket messages to the server.
   - Once a new stock is added, it will appear in the stock list for all clients.

3. **WebSocket Communication**:
   - WebSockets allow real-time, bidirectional communication between the server and the clients.
   - The server and clients can send messages to each other, enabling instant stock updates.

### Example Repository
- A base repository will be provided to help get started. You can find it [here](https://github.com/menglishca/socket-stock-tracker-base.git).
