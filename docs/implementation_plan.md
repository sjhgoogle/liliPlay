# SyncPlay: Artist & Lyrics Sync Player

## Goal Description
A web application that plays audio and synchronously highlights the current singing artist and the corresponding lyrics. The service features a space/galaxy-themed UI and operates on a subscription scaling model.

## User Review Required
> [!IMPORTANT]
> - I will use **Tailwind CSS** to build out the high-quality, glowing galaxy theme rapidly.
> - The provided image showed artists on top and lyrics on the bottom, but as requested, I will implement the layout with **Artists on the Left** and **Lyrics on the Right**.
> 
> Please review the plan below. Once approved, I will dive directly into UI implementation!

## Proposed Changes

### 1. Requirements & Core Features
- **Target Audience**: Users wanting immersive, synchronized audio-visual music playback.
- **Key Features**:
  - **Main Page**: Hero banner, service overview, and Subscription Tiers (Free, $10 Basic, $30 Premium).
  - **Player Layout**: Left panel for Artist images (highlights on cue), Right panel for synchronized, scrolling lyrics.
  - **Auth**: Devise with Google / Kakao OAuth.

### 2. UI/UX (Space/Galaxy Theme)
- **Colors**: Deep purple, navy blue, and black backgrounds.
- **Effects**: Glowing text and neon borders around highlighted artists.
- **Animations**: CSS-based subtle twinkling stars or dynamic moving background.

### 3. Implementation Steps (Phase 1)
- Install Tailwind CSS to the Rails project.
- Scaffold a `Pages` controller to serve the static/UI mockups.
- Build the **Main Page UI** (Subscription cards, hero banner).
- Build the **Player Page UI** (Grid layout for artists on left, scrolling text for lyrics on right).
- Build the **Login/Signup UI** mockups.

## Verification Plan
### Manual Verification
- Visual inspection of the browser to ensure the layout correctly matches the specification (Left vs Right).
- Validate the aesthetic pop of the space/galaxy theme.
