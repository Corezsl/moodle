# Moodle Clone — Referral/Deferral Coursework

This repository contains the starting template code for the Referral/Deferral (Re-assessment) project for students enrolled in the **Programming Applications and Programming Languages (M30235)** and **User Experience Design and Implementation (M32605)** modules at the University of Portsmouth.

## Overview

Moodle is the university's virtual learning environment (VLE) which you use daily to access course materials, submit work, and view announcements.

Your task is to recreate a simplified version of the Moodle interface (specifically the Dashboard, Course List, a Module page, Calendar, and Support pages) using Flutter. You must begin by forking this repository, which contains the skeleton template code, and building your application incrementally.

Once completed, you will submit the link to your public repository on Moodle for assessment and demonstrate your application in a practical session. Demos are mandatory to receive marks.

---

## Key Dates & Logistics

* **Release Date:** Monday 13th July 2026
* **Submission Deadline:** Wednesday 29th July 2026 at 13:00 (On-time)
* **Late Submission Deadline:** Friday 31st July 2026 at 13:00 (With standard 48-hour late penalty/extension window applied)
* **Demo Booking:** You **MUST** book your live demonstration session with me using the following link:
  👉 [Book a Demo Session](https://bookings.cloud.microsoft/bookwithme/user/e0acc34f2ca040b295fb20cfce7425a2%40port.ac.uk/meetingtype/qZuY5y_IuUimqFEq4d1oDA2?anonymous&ismsaljsauthenabled)
  *Note: Demos will be held online or in practical rooms during late July / early August. Failure to demo your application will result in a mark of 0 for the coursework.*

---

## Step-by-Step Getting Started

### 1. Fork the Repository
- Navigate to the coursework repository on GitHub: `https://github.com/manighahrmani/moodle_clone`.
- Click the **Fork** button in the top right corner of the page to create your own copy under your account.
- Ensure your fork is **public** and named `moodle_clone`.

[Fork Repository Screenshot Placeholder]

### 2. Open in VS Code
- Copy your fork's HTTPS or SSH clone URL.
- Open your terminal or Command Prompt, navigate to your workspace folder, and clone the project:
  ```bash
  git clone https://github.com/YOUR-USERNAME/moodle_clone.git
  cd moodle_clone
  ```
- Open the folder in VS Code:
  ```bash
  code .
  ```

[Open in VS Code Screenshot Placeholder]

### 3. Basic Setup & First Task
Before running the application, you must complete your first development task:
1. Locate the [lib/widgets/nav_drawer.dart](lib/widgets/nav_drawer.dart) file.
2. Replace `"Yourname Here"` with your actual name (e.g., `"John Doe"`).
3. Replace `"up1234567"` with your actual UP identification number (e.g., `"up2198765"`).
4. Save the file.

### 4. Running the Project
- Run the following commands to download dependencies and launch the app in Chrome:
  ```bash
  flutter pub get
  flutter run -d chrome
  ```

[Run Project Screenshot Placeholder]

- To inspect responsive layouts, press `F12` in Chrome to open the Developer Tools, and click the device toggle icon to emulate a mobile screen size.

[Web Development Tools Screenshot Placeholder]

---

## Marking Criteria

This coursework is worth **55%** of the Flutter module component. Marks are divided into:
* **Application (Functionality) (30%)**: Demonstrated during your live demo.
* **Software Development Practices (25%)**: Evaluated directly from your repository history and contents.

---

### Application (Functionality) (30%)

Implement as many of the following features as possible. The focus is on core functionality and responsive layouts (mobile view first, but desktop layouts count towards responsiveness).

| Feature Category | Description | Weight | Reference / Page |
|:---|:---|:---|:---|
| **Basic (40%)** | | | |
| **Sidebar Navigation Drawer** | A drawer navigation menu that displays links to other sections of the app (dashboard, courses, calendar, support). Links must work to switch routes/views. | 10% | Moodle Left Sidebar |
| **Static Dashboard Homepage** | Main landing page mimicking Moodle's dashboard. Must display timeline widgets, search bar input (non-functioning), recently accessed items list, mini calendar view, and standard footer. | 10% | Dashboard View |
| **Static Support Page** | Static help screen (`local/extend/support.php`) displaying academic support information, IT helpdesk contacts, and tutor support details. | 10% | Support Screen |
| **README Documentation** | **Mandatory.** You must delete this brief file from your fork and write a new README detailing the features you implemented, installation instructions, test commands, and cloud hosting links. | 10% | Model README |
| **Intermediate (35%)** | | | |
| **App Routing & Navigation** | Complete Flutter navigation allowing users to move seamlessly between views using buttons, sidebar links, or URL routing. | 5% | All screens |
| **My Courses/Modules Page** | Display list of enrolled courses (`my/courses.php`). Must show mock modules (e.g. course code, title, and progress bar). | 10% | Courses View |
| **Module Details View** | A detail page for a single course (e.g. `course/view.php?id=2312` or `2299` depending on your pathway). Shows tabs/sections for Announcements, Learning Materials, Assessments. | 10% | Course Detail Screen |
| **Calendar Month Page** | Full monthly calendar grid layout (`calendar/view.php`). Displays dates, highlighting mock assignment deadlines or event days. | 5% | Calendar View |
| **Responsive Layout** | Adaptable layouts that work seamlessly on both mobile device previews and standard desktop screens. | 5% | All screens |
| **Advanced (25%)** | | | |
| **Notifications Feed** | Working notifications drawer/panel listing recent updates, marked submissions, or forum replies. | 8% | Header Bell Icon |
| **Search System** | Functional search input allowing dynamic filtering of the course list or calendar deadlines. | 5% | Search bar |
| **Database Persistence** | Storing items (like notifications, calendar reminders, or recently accessed modules) locally (SQLite) or remotely (Firestore). | 6% | SQLite / Firebase |
| **Cloud Hosting & Services** | If using Firebase, you must integrate Firebase Auth/Firestore and host the application live, linking the active URL in your README. | 6% | Firebase Hosting |

---

### Software Development Practices (25%)

Your repository will be analyzed automatically for engineering practices:
* **Git Practices (8%)**: Regular, small commits tracking incremental development. Avoid single massive commits. Commits must have clear, professional messages (preferably in the imperative mood).
* **README Completeness (5%)**: Detail your design choices, instructions to run/test, lists of features implemented, and references.
* **Testing (6%)**: Include unit and widget tests covering your views and business logic. All tests must pass.
* **External Services (6%)**: Correct integration of third-party APIs or Firebase modules (e.g., authentication, database, web hosting) documented clearly.
