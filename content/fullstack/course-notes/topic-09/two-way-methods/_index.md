---
title: 2. Two-way data communication methods
---

- Like most things, there are a few ways to go about achieving two-way data communication
- They each have their pros and cons, and some are more popular than others

## 1. Polling
- **How it Works**:  
  - The client sends repeated `HTTP GET` requests to the server, usually at some fixed rate to check for updates
  - This is _essentially_ the equivalent of just refreshing the page periodically to see if things have updated
- **Advantages**:
  - Simple to implement and requires no specialized server setup, it uses the exact same setup as sending other network request  
  - Compatible with most browsers and server configurations.  
- **Disadvantages**:
  - Inefficient as it has to send the requests constantly, even if there's no new data to fetch as there's no way of knowing there's no new data
  - Adds latency between updates due to the fixed interval
  - Increases server load due to frequent requests, you could almost DoS your server if you weren't careful
- **Use Cases**:  
  - Applications where real-time updates are not critical (e.g., checking email or news feed)

## 2. Long Polling
- **How it Works**:  
  - Similar to polling, the client sends a request to the server. However, this time the server holds the connection open until new data is available.  
  - Once the server responds, the client immediately sends another request to repeat the cycle
  - This means fewer requests, but those requests that get sent take longer to handle
- **Advantages**:  
  - Reduces the number of unnecessary requests compared to traditional polling
  - Provides updates closer to real-time as the request automatically returns whenever new data is available
- **Disadvantages**:  
  - Still has some overhead from repeated requests.  
  - Can be difficult to scale for a high traffic application
- **Use Cases**:  
  - Chat systems or lightweight real-time applications where WebSockets are unavailable.

## 3. Server-Sent Events (SSE)
- **How it Works**:  
  - The server pushes updates to the client over a single persistent connection (usually `HTTP`)
  - Only supports one-way communication from server to client
  - Usually you would use this in conjunction with regular POST or PUT requests to send data to the server
- **Advantages**:  
  - Simple protocol; uses native browser support with `EventSource` API
  - Efficient for server-to-client updates
- **Disadvantages**:  
  - Limited to one-way communication
  - Only works over `HTTP` or `HTTPS`, not suitable for certain bidirectional use cases
  - May not work in environments requiring two-way communication
- **Use Cases**:  
  - Stock price updates, live scores, or notifications.  

## 4. WebSockets
- **How it Works**:  
  - Establishes a persistent, full-duplex communication channel between client and server
  - Both client and server can send messages at any time without additional HTTP requests
  - Doesn't use HTTP, but rather it's own protocol over a single TCP connection (socket)
- **Advantages**:  
  - Real-time, low-latency communication
  - Efficient use of resources, as it avoids repeated request-response cycles 
  - Supports bi-directional data flow natively
- **Disadvantages**:  
  - Requires specialized server and client setup
  - Not supported in older browsers (however modern browser support is standard)
- **Use Cases**:  
  - Live chat systems, multiplayer games, collaborative tools (e.g., Google Docs), IoT applications.  

## Comparison Table

| Method             | Real-Time Updates | Bidirectional | Efficiency | Typical Use Cases           |
|--------------------|-------------------|---------------|------------|-----------------------------|
| Polling            | ✖️                 | ✖️             | Low        | Basic updates, low priority |
| Long Polling       | ✓                 | ✖️             | Medium     | Lightweight chat apps       |
| Server-Sent Events | ✓                 | ✖️             | High       | Notifications, stock prices |
| WebSockets         | ✓                 | ✓             | Very High  | Gaming, live collaboration  |
