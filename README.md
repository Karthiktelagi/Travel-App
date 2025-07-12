# 🏔️ Mountain Trip Flutter App

The **Mountain Trip App** is a modern and elegant travel application built using **Flutter**. It provides users with a rich visual experience of welcome screens and allows them to explore trip packages like mountains, lakes, and forests through an animated and interactive UI.

---

## 🌟 Features

### ✅ Welcome Page Slider
- Full-screen background images
- Smooth horizontal swiping with `PageView`
- Unique title, subtitle, and description for each screen
- "Get Started" button on the final slide that takes users to the homepage

### ✅ Animated Trip Carousel
- Beautiful horizontally scrollable list of trips
- Smooth animation scale using `Transform.scale`
- Gradient overlays for text readability
- Displays trip name, location, and price

### ✅ Clean UI Components
- Reusable widgets (`AppLargeText`, `AppText`, `ResponsiveButton`)
- Uses modern design elements like blur, elevation, and shadows
- Responsive to different screen sizes

---

## 🧭 Navigation Flow

```text
WelcomePage (Slider) 
    |
    |---> PageView (3 Screens)
        |---> Explore Nature → Mountains
        |---> Dive Into Adventure → Lakes
        |---> Discover New Paths → Forests
    |
    --> Press "Get Started" → HomePage (Trip Slider)
