# 🛍️ Smart Shop – Mini E-commerce Flutter App

Smart Shop is a beautifully designed, lightweight e-commerce application built using Flutter. It leverages state management with `Provider`, persistent storage via `SharedPreferences`, and real-time data through the RESTful [FakeStore API](https://fakestoreapi.com/). This app demonstrates modern development techniques in Flutter including theme toggling, clean navigation, and interactive UI components.

---

## 🚀 Features

### 🔐 Authentication
- Login/Register screen with validation
- Dummy login (username/password) stored via SharedPreferences
- Splash screen checks login state and navigates accordingly

### 🏠 Home Page
- Products fetched from [FakeStore API](https://fakestoreapi.com/products)
- Product cards include:
  - Product name & price
  - Heart icon to mark as favorite
  - Star rating (from API's `rating.rate`)
- Sorting options:
  - Price: Low → High, High → Low
  - Rating: High → Low
- Pull-to-refresh with `RefreshIndicator`

### 🛒 Cart
- Add/remove items from cart
- Total price calculation
- Product rating displayed in cart
- Badge on cart icon showing item count
- Cart state managed with Provider

### ❤️ Favorites
- Add/remove products as favorites
- Favorites stored persistently
- Separate Favorites page

### 🎨 Theme Toggling
- Switch between dark & light theme
- Persistent theme using SharedPreferences
- Toggle accessible via AppBar or Drawer

### 📦 Product Categories (Extra)
- Fetch & display product categories from API
- Filter products based on selected category

### 🧭 Navigation
Drawer with routes to:
  Home
  Cart
  Favorites
  Profile
  Logout
  Logout clears login data and redirects to Login screen

## 📸 Screenshots


<img width="757" height="971" alt="Screenshot 2025-08-03 000354" src="https://github.com/user-attachments/assets/99051827-13b5-49e7-8992-df8770b2aed6" />
<img width="745" height="961" alt="Screenshot 2025-08-03 000337" src="https://github.com/user-attachments/assets/416af858-66e3-43b3-9101-ea91ca333a9b" />
<img width="751" height="961" alt="Screenshot 2025-08-03 000323" src="https://github.com/user-attachments/assets/10b640d3-3c45-4263-9cdf-6d3ee98c7671" />
<img width="748" height="960" alt="Screenshot 2025-08-03 000306" src="https://github.com/user-attachments/assets/5f7f021d-36fc-46ab-b464-5d2dc7de4c99" />
<img width="752" height="964" alt="Screenshot 2025-08-03 000248" src="https://github.com/user-attachments/assets/ebc0c839-dff0-4a26-b2a1-b404bfba6c26" />
<img width="750" height="969" alt="Screenshot 2025-08-03 000230" src="https://github.com/user-attachments/assets/fd4c4561-579a-4cd0-bab8-ba8f1700038c" />
<img width="752" height="965" alt="Screenshot 2025-08-03 000209" src="https://github.com/user-attachments/assets/7a715c5e-4570-441c-92d6-73c9e760233f" />

## 🧰 Technologies Used
**Flutter** (SDK 3.0+)
**Provider** for state management
**SharedPreferences** for local persistence
**HTTP** package for REST API calls
**FakeStore API** for product data

