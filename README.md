# ⚡ BolTranslate — Hybrid AI Real-time Voice & Text Translator

[![License: MIT](https://img.shields.io/badge/License-MIT-emerald.svg)](LICENSE)
[![AI Architecture: Hybrid Edge + Cloud](https://img.shields.io/badge/AI%20Architecture-Hybrid%20Edge%20%2B%20Cloud-indigo.svg)]()
[![On-Device: Gemini Nano](https://img.shields.io/badge/On--Device-Gemini%20Nano%20%2F%20Edge-success.svg)]()
[![Cloud: Gemini 1.5 Flash](https://img.shields.io/badge/Cloud-Google%20Gemini%201.5%20Flash-blue.svg)]()

> **BolTranslate** bridges the digital divide in India and emerging regions by combining **ultra-fast, private, zero-latency on-device AI inference** with **high-fidelity Google Gemini cloud intelligence**.

---

## 🌟 The Problem We Solve
In developing regions, rural transit, and railway corridors across India, internet connectivity is intermittent and unpredictable. Existing translation tools fail precisely when they are needed most—at remote ticket counters, during travel disruptions, or in medical emergencies. Furthermore, users are increasingly uncomfortable sending confidential, personal voice conversations to remote cloud servers.

**BolTranslate** solves this through **Hybrid AI Inference**:
- **⚡ On-Device Edge (Gemini Nano / Local Matrix):** Executes short, everyday spoken phrases (≤ 15 words) 100% on the user's hardware. Works in complete Airplane mode with **zero network latency (~15ms)**, **zero cloud egress**, and **uncompromising data privacy**.
- **☁️ Cloud Model (Google Gemini 1.5 Flash via Firebase AI Logic):** Automatically routes complex multi-sentence paragraphs, legal/medical context, and regional idioms to the cloud for maximum linguistic nuance.

---

## 🏛️ Hybrid Routing Architecture

```
                       User Input (Voice / Text)
                                  │
                                  ▼
                    ┌───────────────────────────┐
                    │  Smart Client-Side Router │
                    │   • Network Status Check  │
                    │   • Word Count Threshold  │
                    │   • Privacy / Manual Rule │
                    └─────────────┬─────────────┘
                                  │
                 ┌────────────────┴────────────────┐
                 ▼                                 ▼
   [ Condition: Offline / ≤15 words ]    [ Condition: Online & >15 words ]
                 │                                 │
                 ▼                                 ▼
    ┌─────────────────────────┐       ┌─────────────────────────┐
    │ ⚡ Edge On-Device Model │       │  ☁️ Cloud Gemini Model   │
    │   • Chrome Built-in AI  │       │   • Gemini 1.5 Flash    │
    │   • Gemini Nano / Local │       │   • Deep Linguistic Nuance│
    │   • 0-Latency (~15ms)   │       │   • Idiom & Context Fit │
    │   • 100% Offline Capable│       │   • Firebase AI Logic   │
    └────────────┬────────────┘       └────────────┬────────────┘
                 │                                 │
                 └────────────────┬────────────────┘
                                  │
                                  ▼
               ┌─────────────────────────────────────┐
               │         Response Telemetry          │
               │  • Live Engine Badging (Edge/Cloud) │
               │  • Latency Benchmark Counter (ms)   │
               │  • Voice Synthesis Audio Output     │
               └─────────────────────────────────────┘
```

---

## 🚀 Key Features

1. **Intelligent Hybrid Router:** Automatically determines the optimal execution tier based on length, complexity, and live connectivity (`navigator.onLine`).
2. **Airplane Mode Simulator:** Built-in toggle switch allowing judges and reviewers to verify offline translation with 1 click without disabling hardware Wi-Fi.
3. **Transparent Execution Telemetry:** Clear, glowing status badges displaying whether the inference ran On-Device (`⚡ 14ms • 100% Private`) or on Cloud (`☁️ 420ms • High Precision`).
4. **Two-Way Voice Translation:** Integrated Web Speech API (`webkitSpeechRecognition`) for Hindi (`hi-IN`) and English (`en-US`) with instant Text-to-Speech audio pronunciation.
5. **Split-Screen Conversation Mode:** Interactive face-to-face dialogue interface for two people speaking different languages in real time.
6. **Telemetry & Cost Dashboard:** Tracks cumulative inference count, on-device edge ratio, average latency benchmarks, and cloud cost saved.

---

## 💻 Tech Stack

- **Frontend:** HTML5, Modern Vanilla JavaScript (ES6+), Tailwind CSS, Lucide Icons
- **Hybrid AI Engine:**
  - **On-Device:** Chrome Built-in AI (`window.ai` / Gemini Nano / Prompt API) & Fast Edge Lexical Matrix
  - **Cloud:** Google Gemini 1.5 Flash API / Firebase AI Logic
- **Audio & Speech:** Web Speech API (`SpeechRecognition` & `SpeechSynthesis`)
- **Hosting / Deployment:** Zero-configuration static deployment ready for Vercel, GitHub Pages, or Firebase Hosting.

---

## 🏁 Quick Start & Running Locally

No complicated setup or build steps required!

### Option A: Direct Browser Launch
Simply double-click `index.html` in your file explorer to open it in Google Chrome or Microsoft Edge.

### Option B: Local Static Server (Node.js)
```bash
# In the project directory:
npx serve .
```
Then visit `http://localhost:3000`.

---

## 🌐 Deploy to Vercel in 1 Minute
1. Push this folder to a GitHub repository.
2. Go to [vercel.com/new](https://vercel.com/new) and select the repository.
3. Click **Deploy**. The included `vercel.json` will configure everything automatically!

---

## 📜 License
MIT License. Open-source and ready for the hackathon evaluation.
