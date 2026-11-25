# Smart Learning Management System (SmartLMS) - Java Project

A complete, dependency-free **Java 17** Object-Oriented Learning Management System with role-based dashboards, persistent file storage, auto-graded quizzes, and smart learning analytics.

## Features
- **Role-Based Access Control (RBAC)**:
  - **Student**: Browse & search courses, enroll, track lesson progress, take auto-graded quizzes, view notifications, get **Smart Course Recommendations**, and generate an **Adaptive Study Plan**.
  - **Instructor**: Create courses, add lessons & quizzes, view course analytics, and run **Smart At-Risk Student Detection**.
  - **Admin**: Manage users, view all courses, inspect analytics, and view the **Top Students Leaderboard**.
- **Smart Engine (`SmartRecommendationEngine`)**:
  - Content & tag-based course matching + adaptive difficulty progression based on quiz averages.
  - Day-by-day study schedule generator based on daily available minutes.
  - Early-warning detection for students with `<30%` progress or `<50%` quiz scores.
- **Persistent Storage**: Automatically saves and loads data to `data/lms_data.dat` using Java Serialization, with pre-seeded demo courses and users on first launch.

## Project Structure
```text
SmartLMS/
├── src/com/smartlms/
│   ├── Main.java
│   ├── model/        (User, Role, Course, Lesson, Quiz, Question, Enrollment, Notification)
│   ├── service/      (AuthService, CourseService, EnrollmentService, SmartRecommendationEngine, AnalyticsService)
│   ├── storage/      (DataStore)
│   └── ui/           (ConsoleUI)
├── run.sh
├── run.bat
└── README.md
```

## How to Compile & Run
Requires **Java JDK 17+**.

### Linux / macOS
```bash
chmod +x run.sh
./run.sh
```

### Windows
Double-click `run.bat` or run in Command Prompt:
```cmd
run.bat
```

### Manual Commands
```bash
mkdir -p out
javac -d out $(find src -name "*.java")
java -cp out com.smartlms.Main
```

## Demo Accounts
| Role | Email | Password |
| :--- | :--- | :--- |
| **Student** | `student@smartlms.edu` | `stud123` |
| **Instructor** | `rahim@smartlms.edu` | `inst123` |
| **Admin** | `admin@smartlms.edu` | `admin123` |
