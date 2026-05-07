# 🔗 vLinks - Advanced Link Aggregator
## **Website:** [https://pixxella.github.io/vlinks](https://pixxella.github.io/vlinks)

> A modern, real-time link sharing platform with developer controls, live status updates, and user engagement tracking.

---

## 🎯 Overview

**vLinks** is a sleek, customizable link aggregator designed for streamers and creators. Built with a modern aesthetic and powerful backend management, it displays social media links and game server information with real-time updates. The platform combines a clean, interactive frontend with an admin dashboard for instant content updates—all powered by Firebase.

**Created by:** [pxlzfr](https://github.com/pxlzfr) (nPixelz)

---

## ✨ Core Features

### 📌 Link Display System
- **8 Organized Links** in a responsive grid layout
  - 🎮 **Social Media**: Roblox, YouTube, Twitch, TikTok, Discord
  - 🖥️ **Game Servers**: Private Server (VIP) and Current Server
- **Custom Styled Borders** with theme-specific colors
- **One-Click Access** - All links open in new tabs

### 🔄 Real-Time Status Updates
- **Live Server Status**: Shows WORKING (🟢) or DOWN (🔴) indicators
- **Instant Admin Control**: Toggle VIP and Current server status from admin panel
- **Color-Coded Feedback**: Green for operational, Red for offline

### 🎨 Dynamic Theme System
- **4 Available Themes**: Pink (default), Blue, Red, Green
- **Persistent Storage**: Theme preference saved locally
- **Instant Sync**: Changes apply across all UI elements
- **Easy Switching**: Click the glowing dot in the top-left to cycle themes

### 🔥 Firebase Real-Time Sync
All data syncs instantly across devices:
- ⚡ **Live Link Updates** - Modify any link in real-time
- 🛑 **Maintenance Mode** - Block user access with a single toggle
- 📝 **Changelog System** - Push updates that all visitors see
- 💬 **User Suggestions** - Gather feedback from your audience
- 📊 **Visitor Tracking** - Count active users and total visits
- 🌈 **Theme Synchronization** - All users see theme changes

---

## 🎮 Admin Features (Developer Mode)

### 🔐 Authentication
- **Easy Activation**: Click `[SYSTEM AUTH]` button (top-left on PC, top-right on mobile)
- **Dev Badge**: Shows status with glowing animation

### 🎛️ Admin Dashboard Controls

#### 👥 User Management
- View live active user count
- Browse all user-submitted suggestions with timestamps

#### 📊 Server Status Control
- Toggle VIP Server (UP/DOWN)
- Toggle Current Server (UP/DOWN)
- Real-time status reflection

#### 📋 Changelog Management
- Push new update messages
- Auto-timestamped entries
- Visible to all users immediately

#### 🔗 Link Database Editor
- **Edit Options**: Main Title, Private Server URL, Current Server URL, or any social media link
- **Live Updates**: Changes sync instantly to all users
- **Easy Management**: Dropdown selector for quick navigation

#### ⚙️ Maintenance Mode
- Toggle maintenance ON/OFF
- **ON State**: Users see "SYSTEM OFFLINE" screen
- **Developers**: Still access the site normally
- **Status Display**: Shows current state with color coding (🔴 ON / 🟢 OFF)

---

## 👥 User Features

### 💡 Suggestions System
- Click `[SUGGESTIONS]` button
- Submit feature requests and feedback
- All suggestions stored and viewable by admins

### 📚 Changelog Viewer
- Click `[CHANGELOG]` button
- View full update history with dates
- Latest update displayed on main page

### 📈 Statistics Display
- **Live User Count**: Real-time active session tracking
- **Total Visitors**: Cumulative visit counter
- **Persistent Tracking**: Uses sessionStorage for accuracy

### 🛑 Maintenance Screen
- Non-admins see full-screen offline message when maintenance is active
- Developers bypass this restriction
- Clean, professional appearance

---

## 📱 Responsive Design

### 📲 Mobile Experience (≤600px)
- **Scrollable Layout**: Full content access on smaller screens
- **Compact UI**: Shrunk fonts and spacing for mobile optimization
- **Smart Auth Button**: Repositioned to top-right inside container
- **Toggleable Panel**: 
  - Click `[PANEL]` button to open admin dashboard
  - Appears centered on screen
  - Includes close `X` button
  - Fully scrollable content

### 💻 Desktop Experience (601px+)
- **Full-Size Layout**: Optimal spacing and typography
- **Fixed Auth Button**: Always accessible in top-left
- **Persistent Admin Panel**: Fixed in bottom-right corner
- **All Original Features**: Complete feature set

---

## 🎨 Design & Aesthetics

### 🌑 Visual Design
- **Modern Dark Theme**: Dark background with vibrant accent colors
- **Glassmorphism Effects**: Frosted glass appearance on panels and modals
- **Rounded Corners**: All elements feature smooth border-radius (8px-16px)
- **Dev Mode Particles**: Animated `[DEV]` text in background when in dev mode

### ✨ Interactive Animations
- **Pulse Border**: Continuous breathing animation on main container
- **Gradient Transitions**: Smooth color transitions between theme colors
- **Hover Effects**: Links and buttons respond with scale and shadow changes
- **Welcome Animation**: Blur fade effect when entering dev mode
- **Toast Notifications**: Slide-in notifications from top-right with cubic-bezier easing
- **Ripple Effects**: Smooth ripple animation on button clicks
- **Dev Badge Glow**: Pulsing animation on developer badge

### 🎯 Color System (Theme-Based)
Each theme features a gradient of primary and secondary colors:
- **Button Backgrounds**: Dynamic gradients
- **Text Highlights**: Theme color accents with text gradients
- **Border Colors**: Match current theme
- **Glow Effects**: Pulsing shadows and glows
- **Gradient Text**: Heading uses text-clip for modern look

---

## 🛠️ Technical Stack

| Layer | Technology |
|-------|-----------|
| **Frontend** | HTML5, CSS3, JavaScript (ES6+) |
| **Database** | Firebase Realtime Database |
| **Storage** | localStorage (themes), sessionStorage (visits) |
| **Real-time Sync** | Firebase `onValue()` listeners |
| **Modules** | Firebase SDK ES6 modules |
| **Font** | JetBrains Mono (Google Fonts) |
| **Effects** | CSS Gradients, Backdrop-filter, Animations |

---

## 🔄 Data Flow Architecture

```
User Loads Page
    ↓
Load theme from localStorage
    ↓
Fetch all data from Firebase
    ↓
Real-time listeners established
    ↓
Admin updates content
    ↓
Firebase triggers update
    ↓
All users see changes instantly
```

---

## 🚀 Key Workflows

### 📝 Updating Content
1. Click `[SYSTEM AUTH]` → Enter password
2. Open Admin Panel (bottom-right on PC, click `[PANEL]` on mobile)
3. Select target (link, title, status)
4. Enter new value
5. Click `PUSH TO DATABASE`
6. All users receive update instantly ✨

### 📢 Pushing Updates
1. Type changelog message
2. Click `ADD CHANGELOG`
3. Message shows on everyone's page immediately
4. Stored with timestamp for history

### 🛠️ Maintenance Mode
1. Admin Panel → `TOGGLE MAINTENANCE`
2. Users see offline screen (admins see normally)
3. Click again to restore access

---

## 📊 Summary

**vLinks** is a **production-ready, real-time link management platform** that empowers creators and developers. With its intuitive admin dashboard, responsive design, and powerful Firebase integration, it provides the perfect solution for sharing links with live status updates, user engagement tools, and professional content management—all wrapped in a modern, aesthetically pleasing interface.

Perfect for:
- 🎥 **Streamers** - Share links with live status updates
- 🎮 **Game Developers** - Manage game server links
- 📱 **Content Creators** - Centralize all social media presence
- 👨‍💻 **Developers** - Showcase projects and portfolios

---

## 📄 License & Credits

Created with ❤️ by [pxlzfr](https://github.com/pxlzfr) (nPixelz)

© Copyright 2026 The Huge nPixelz™ | All rights reserved ®
