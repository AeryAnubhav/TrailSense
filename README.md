# TrailSense - Edge-AI Offline Navigation

TrailSense is an edge-AI navigation system that allows hikers and disaster survivors to retrace their steps without GPS or cellular data. By using the Arduino Uno Q to capture 'visual breadcrumbs' from an ESP32-CAM, the system creates a local landmark database and provides real-time guidance to help users navigate back to safety entirely offline.

## Use Case (The Elevator Pitch)
- **Problem**: GPS fails in canyons/disasters; batteries die; cloud AI is inaccessible.
- **Solution**: A self-contained "Visual Return System" running on edge hardware.
- **Hardware Advantage**: 
  - **Arduino Uno Q (Linux)**: Stores GBs of landmarks locally and runs OpenCV.
  - **ESP32-CAM**: Wirelessly streams "eyes" to the backpack-mounted brain.
  - **Tactical Feedback**: Simple Red/Green LED cues for "On Path" / "Off Path" so you don't need to stare at a screen.

## Features
- **Exploration Mode**: Automatically captures visual landmarks every 2.5 seconds.
- **Return Mode**: Real-time matching against stored landmarks using ORB features.
- **Tactical HUD**: Glassmorphism UI (React) accessible via phone browser (hosted on the Uno Q).
- **Offline Capable**: Runs entirely locally.

## Prerequisites
- Python 3.8+
- Node.js 16+

## Quick Start (Mock/Laptop Mode)
1.  **Run the system**:
    Double-click `run.bat` to install dependencies and launch the system.

    Or run manually:
    ```bash
    # Terminal 1 (Backend)
    cd backend
    pip install -r requirements.txt
    python main.py

    # Terminal 2 (Frontend)
    cd frontend
    npm install
    npm run dev
    ```

2.  **Access the interface**:
    Open `http://localhost:5173` in your browser.

## Hardware Deployment
See [HARDWARE_SETUP.md](HARDWARE_SETUP.md) for deploying to the Arduino Uno Q and ESP32-CAM.

## Tech Stack
- **Edge AI**: OpenCV (ORB + BFMatcher) running on Linux (Uno Q).
- **Frontend**: React + Vite (Scanline/Tactical UI).
- **Connectivity**: WiFi AP (Uno Q) + ESP32 Stream.

## License
MIT
