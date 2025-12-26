# 📝 Notes App — Ruby on Rails + Docker

A modern, clean, and user-friendly **Notes Application** built using **Ruby on Rails** and fully **Dockerized** for easy setup and deployment.  
The app allows users to securely create, edit, delete, and organize notes with custom colors in a minimal and responsive UI.

---

## 🚀 Features

- 🔐 User Authentication (Sign up / Login)
- 📝 Create, Edit, Delete Notes
- 🎨 Light & UI-friendly note color selection
- 👤 User-specific notes (secure ownership)
- 📱 Responsive & clean UI (Tailwind CSS)
- 🐳 Dockerized (easy local & production setup)
- 🌐 Production-ready hosting support

---

## 🛠️ Tech Stack

- **Backend:** Ruby on Rails
- **Frontend:** ERB + Tailwind CSS
- **Authentication:** Devise
- **Database:** PostgreSQL
- **Containerization:** Docker & Docker Compose
- **Deployment:** Railway / Fly.io
- **Version Control:** Git & GitHub

---

## 📂 Project Structure

```bash
.
├── app/
│   ├── controllers/
│   ├── models/
│   ├── views/
│   └── assets/
├── config/
├── db/
├── Dockerfile
├── docker-compose.yml
├── Gemfile
└── README.md

```

##🐳 Run Locally Using Docker (Recommended)

Clone Repository

```bash
git clone https://github.com/your-username/rails-notes-app.git
cd rails-notes-app
```
Build & Start Containers

```bash
docker-compose up --build
```
Setup Database

```bash
docker-compose exec web rails db:create db:migrate
bin/dev
```
Open Application

```bash
http://localhost:3000
```

## 👨‍💻 Author

  - Akash Kumar
    - 🎓 B.Tech — Computer Science & Engineering
    - 💻 Full-Stack Developer
    - GitHub: [https://github.com/AkashKumar3](https://github.com/AkashKumar3)
    - LinkedIn: [https://www.linkedin.com/in/akash-kumar-1119671a0/](https://www.linkedin.com/in/akash-kumar-1119671a0/)


## ⭐ Support

  - If you find this project useful:
    - ⭐ Star the repository
    - 🍴 Fork it
    - 📚 Use it for learning or portfolio


