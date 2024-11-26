---
title: 3. What are WebSockets?
---

## Overview of WebSockets
- **WebSockets** are a communication protocol that provides full-duplex (two-way) communication between a client (e.g., a web browser) and a server over a single TCP connection.  
- Unlike HTTP, which requires repeated request-response cycles, WebSockets keep the connection open, allowing real-time data exchange.  
- Once a WebSocket connection is established, both the client and server can send messages to each other at any time without needing to make new requests.  

## Key Features of WebSockets
- **Persistent Connection**: A single connection remains open for the lifetime of the communication, avoiding repeated setup overhead.  
- **Real-Time Communication**: Ideal for scenarios where updates need to be sent immediately, such as live chat or gaming.  
- **Low Latency**: Messages are sent directly over the WebSocket connection, avoiding the delays of HTTP request-response cycles.  
- **Bidirectional Communication**: Both the client and server can send data whenever necessary.  

## WebSocket Workflow
1. **Handshake**:
   - Communication begins with an HTTP request from the client to the server, called the *WebSocket handshake*.  
   - If the server accepts the handshake, the connection is upgraded from HTTP to the WebSocket protocol.  
   - Example HTTP upgrade headers:
     ```
     GET /chat HTTP/1.1
     Host: example.com
     Upgrade: websocket
     Connection: Upgrade
     ```

2. **Communication**:
   - After the handshake, both client and server can send messages directly over the connection.  
   - Messages can be small and lightweight, containing plain text, JSON, or binary data.  

3. **Closure**:
   - Either the client or server can close the WebSocket connection when communication is no longer needed.  

## Example Use Cases
- **Chat Applications**: Real-time messaging between users.  
- **Live Feeds**: Stock prices, sports scores, or breaking news updates.  
- **Online Gaming**: Low-latency data exchange for multiplayer games.  
- **Collaborative Tools**: Applications like shared document editing where changes are instantly reflected for all users.  
- **IoT Devices**: Communication between devices and servers for real-time data monitoring.  