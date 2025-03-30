# DevOps Lab Project

This project demonstrates the usage of Docker, Docker Compose, CI/CD pipelines, database configuration, and monitoring with Prometheus and Grafana. It is a simple web application built with Flask, which connects to a MySQL database, exposes metrics to Prometheus, and visualizes them with Grafana.

## Project Structure

```plaintext
project-root/
├── backend/                    # Flask application
│   ├── app.py                   # Main Flask app script
│   ├── Dockerfile               # Dockerfile to build the backend service
│   ├── requirements.txt         # Python dependencies
├── db/                          # Database initialization and backup scripts
│   ├── init.sql                 # SQL script to initialize the database schema
│   ├── backup.sh                # Script to back up the database
│   ├── restore.sh               # Script to restore the database
├── scripts/                     # Utility scripts for managing the environment
│   ├── start.sh                 # Start the application with Docker Compose
│   ├── stop.sh                  # Stop the application
│   ├── cleanup.sh               # Clean up Docker resources
├── monitoring/                  # Prometheus and Grafana configurations
│   ├── prometheus.yml           # Prometheus scrape configuration
│   ├── grafana/                 # Grafana dashboard configurations
│   │   ├── dashboards/          # Dashboards to be loaded in Grafana
│   │   │   ├── system_metrics.json    # System metrics dashboard
│   │   │   ├── application_metrics.json  # Application metrics dashboard
├── .github/workflows/           # GitHub Actions CI/CD pipeline
│   ├── ci-cd.yml                # GitHub Actions CI/CD pipeline configuration
├── docker-compose.yml           # Docker Compose file to run all services
├── .env                         # Environment variables for configuration
└── README.md                    # This file
# DevOps Lab Project

This project demonstrates the usage of Docker, Docker Compose, CI/CD pipelines, database configuration, and monitoring with Prometheus and Grafana. It is a simple web application built with Flask, which connects to a MySQL database, exposes metrics to Prometheus, and visualizes them with Grafana.

## Project Structure

```plaintext
project-root/
├── backend/                    # Flask application
│   ├── app.py                   # Main Flask app script
│   ├── Dockerfile               # Dockerfile to build the backend service
│   ├── requirements.txt         # Python dependencies
├── db/                          # Database initialization and backup scripts
│   ├── init.sql                 # SQL script to initialize the database schema
│   ├── backup.sh                # Script to back up the database
│   ├── restore.sh               # Script to restore the database
├── scripts/                     # Utility scripts for managing the environment
│   ├── start.sh                 # Start the application with Docker Compose
│   ├── stop.sh                  # Stop the application
│   ├── cleanup.sh               # Clean up Docker resources
├── monitoring/                  # Prometheus and Grafana configurations
│   ├── prometheus.yml           # Prometheus scrape configuration
│   ├── grafana/                 # Grafana dashboard configurations
│   │   ├── dashboards/          # Dashboards to be loaded in Grafana
│   │   │   ├── system_metrics.json    # System metrics dashboard
│   │   │   ├── application_metrics.json  # Application metrics dashboard
├── .github/workflows/           # GitHub Actions CI/CD pipeline
│   ├── ci-cd.yml                # GitHub Actions CI/CD pipeline configuration
├── docker-compose.yml           # Docker Compose file to run all services
├── .env                         # Environment variables for configuration
└── README.md                    # This file
