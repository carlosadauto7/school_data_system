# School Data System  

The **School Data System** is a robust relational database designed for the administration of educational institutions. It enables the efficient management of student records, teachers, classes, subjects, and grades.

---

## Database Structure

The system utilizes SQL to define seven main interconnected tables:

1.  **students (alunos)**: Registration data for students.
2.  **teachers (professores)**: Information regarding the teaching staff.
3.  **subjects (disciplinas)**: Curriculum details and teacher assignments.
4.  **classes (turmas)**: Organization of groups by academic year and advisor.
5.  **class_subjects (turma_disciplinas)**: Links between classes and specific subjects.
6.  **class_students (turma_alunos)**: Student enrollment in specific classes.
7.  **grades (notas)**: Historical record of academic performance.

---

## Technologies Used

* **Language:** SQL (Compatible with PostgreSQL, MySQL, or SQLite).
* **Terminal Tool:** VS Code Terminal.
* **Concepts:** Primary Keys (PK), Foreign Keys (FK), Many-to-Many (N:N) Relationships.

---

## Query Examples

The project includes pre-written query scripts for common operations, such as:
* Alphabetical listing of students.
* Filtering subjects with a workload exceeding 40 hours.
* Performance reports for students with grades between 6 and 8.

---

## How to Run

1.  **Clone** this repository.
2.  **Copy** the SQL script available in the `escola.sql` file.
3.  **Execute** the script in your preferred database management tool (DBeaver, MySQL Workbench, etc.) or via the terminal.
