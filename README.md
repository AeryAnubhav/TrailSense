# TrailBack AI - Visual Return Navigation System

TrailBack AI is an offline visual return navigation system designed for hikers and disaster survival scenarios. It uses ORB feature extraction and brute-force matching to create a visual breadcrumb trail and guide users back via a confidence-based HUD.

## Features
- **Exploration Mode**: Automatically captures visual landmarks every 2-5 seconds.
- **Return Mode**: Real-time matching against stored landmarks with confidence scoring.
- **Tactical HUD**: Glassmorphism UI with neon accents, confidence gauge, and status telemetry.
- **Offline Capable**: Runs entirely locally with no cloud dependencies.

## Prerequisites
- Python 3.8+
- Node.js 16+

## Quick Start
1.  **Run the system**:
    Double-click `run.bat` to install dependencies and launch both the backend and frontend.

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

## Usage
1.  **Explore**: Walk around. The system will automatically capture landmarks (green indicators).
2.  **Return**: Click "SWITCH TO RETURN". The system will match your current view against the stored path.
    - **Green/High Confidence**: You are on the right path.
    - **Red/Low Confidence**: You are straying.

## Tech Stack
- **Backend**: Python, FastAPI, OpenCV (ORB, BFMatcher)
- **Frontend**: React, Canvas/SVG, CSS logic
- **Style**: Custom Tactical UI (Glassmorphism + Neon)

## License
MIT
