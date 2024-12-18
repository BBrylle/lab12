CREATE TABLE questions (
    id SERIAL PRIMARY KEY,
    item_number INT NOT NULL,
    question TEXT NOT NULL,
    choices JSON NOT NULL,
    correct_answer CHAR(1) NOT NULL CHECK (correct_answer IN ('A', 'B', 'C', 'D'))
);

INSERT INTO questions (item_number, question, choices, correct_answer) VALUES
(1, 'What is the primary function of an operating system?',
 '[{"letter": "A", "choice": "Manage hardware resources"}, {"letter": "B", "choice": "Design software applications"}, {"letter": "C", "choice": "Protect against malware"}, {"letter": "D", "choice": "Facilitate internet access"}]',
 'A'),
(2, 'Which of the following is a common data structure used in computer science?',
 '[{"letter": "A", "choice": "Array"}, {"letter": "B", "choice": "Hash table"}, {"letter": "C", "choice": "Linked list"}, {"letter": "D", "choice": "All of the above"}]',
 'D'),
(3, 'What does CPU stand for?',
 '[{"letter": "A", "choice": "Central Processing Unit"}, {"letter": "B", "choice": "Computer Personal Unit"}, {"letter": "C", "choice": "Central Program Unit"}, {"letter": "D", "choice": "Computing Power Unit"}]',
 'A'),
(4, 'What is the purpose of a firewall in computer networks?',
 '[{"letter": "A", "choice": "To improve network speed"}, {"letter": "B", "choice": "To block unauthorized access"}, {"letter": "C", "choice": "To manage data storage"}, {"letter": "D", "choice": "To enhance user interface"}]',
 'B'),
(5, 'Which programming language is primarily used for web development?',
 '[{"letter": "A", "choice": "Python"}, {"letter": "B", "choice": "Java"}, {"letter": "C", "choice": "JavaScript"}, {"letter": "D", "choice": "C++"}]',
 'C');