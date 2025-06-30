# CleanPro AI - Data Cleaning Web Application

## Overview

CleanPro AI is a modern, professional data cleaning web application designed for data scientists, analysts, and researchers. The application provides an elegant, user-friendly interface for uploading, cleaning, and exporting datasets with automated data cleaning capabilities and interactive user controls.

## System Architecture

### Frontend Architecture
- **Framework**: Modern React-based single-page application
- **Styling**: Tailwind CSS for responsive, professional design
- **State Management**: React hooks and context for managing application state
- **File Handling**: Client-side file upload with drag-and-drop functionality
- **Data Visualization**: Interactive tables with filtering, sorting, and comparison views

### Backend Architecture
- **API Design**: RESTful API endpoints for data processing operations
- **Data Processing**: Server-side data cleaning engine with multiple algorithms
- **File Processing**: Support for multiple formats (CSV, XLSX, JSON, Parquet)
- **Session Management**: Temporary storage for user sessions and cleaning history

### Data Processing Pipeline
- **Upload Phase**: File validation, format detection, and initial parsing
- **Analysis Phase**: Metadata extraction, missing value detection, outlier identification
- **Cleaning Phase**: Automated cleaning with configurable parameters
- **Export Phase**: Format conversion and file generation

## Key Components

### File Upload & Preview System
- Drag-and-drop interface with file type validation
- Raw data preview showing first 5-10 rows
- Metadata display: row count, column count, data types, missing values
- Support for CSV, XLSX, JSON, and Parquet formats

### Automated Data Cleaning Engine
- **Missing Value Handling**: Smart imputation using mean, median, mode, or context-aware methods
- **Outlier Detection**: IQR, Z-score, and isolation forest algorithms
- **Data Formatting**: Standardization of case, whitespace, and date/time formats
- **Duplicate Removal**: Intelligent duplicate row detection and removal
- **Type Correction**: Automatic data type detection and correction
- **Category Optimization**: Rare category identification and merging suggestions

### Interactive Cleaning Interface
- Step-by-step cleaning log with detailed actions
- Undo/redo functionality for cleaning operations
- Manual editing capabilities with dropdown menus and in-place editing
- Real-time preview of cleaning effects

### Data Visualization & Output
- Side-by-side raw vs. cleaned data comparison
- Interactive data tables with filtering and sorting
- Visual cleaning statistics and summary reports
- Export options: CSV, Excel, JSON formats
- Session history and email delivery options

## Data Flow

1. **Upload**: User uploads file via drag-and-drop or file selection
2. **Parse**: System parses file and extracts metadata
3. **Preview**: Raw data displayed with basic statistics
4. **Analyze**: Automated analysis identifies cleaning opportunities
5. **Clean**: User initiates cleaning with configurable parameters
6. **Review**: Cleaned data presented with comparison to original
7. **Export**: User downloads cleaned data in preferred format

## External Dependencies

### Data Processing Libraries
- Pandas/NumPy equivalent for data manipulation
- Statistical libraries for outlier detection
- File format parsers (CSV, Excel, JSON, Parquet)

### UI/UX Libraries
- Tailwind CSS for styling and responsive design
- Data table components for interactive displays
- File upload components with drag-and-drop support
- Chart/visualization libraries for statistics display

### File Handling
- Multi-format file readers and writers
- Compression libraries for large file handling
- Email service integration for delivery options

## Deployment Strategy

### Development Environment
- Local development server with hot reloading
- Mock data generators for testing cleaning algorithms
- Component library for consistent UI elements

### Production Environment
- Scalable web server for handling concurrent users
- Efficient file processing with memory management
- CDN integration for fast file uploads/downloads
- Session storage for temporary data retention

### Performance Considerations
- Client-side file size validation before upload
- Streaming data processing for large datasets
- Progressive loading for data preview
- Optimized algorithms for real-time cleaning feedback

## Changelog

- June 30, 2025. Initial setup
- June 30, 2025. Completed CleanPro AI application development:
  - Built full-stack TypeScript application with React frontend and Express backend
  - Implemented professional data cleaning engine with AI-powered algorithms
  - Created drag-and-drop file upload system supporting CSV, Excel, and JSON
  - Added automated data cleaning capabilities: missing value imputation, outlier removal, duplicate detection, formatting standardization
  - Integrated Google AdSense with multiple ad placements for revenue generation
  - Implemented demo data system with real-world dirty datasets for testing
  - Applied mint green + white + gray theme with responsive design
  - Added Framer Motion animations and smooth transitions
  - Backend running on port 3001, Frontend on port 3000
  - Demo data API tested and working correctly

## User Preferences

Preferred communication style: Simple, everyday language.
Ad Revenue Focus: User specifically requested Google AdSense integration throughout the application.