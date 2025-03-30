-- Questão 1: criando uma relação de união entre as tabelas takes e student

select * from student s 
full outer join takes t ON s.ID = t.ID; 


-- Questão 2. Contar a quantidade de cursos realizados pelos alunos do departamento de Civil Eng. 
Ordenar de maneira descendente a quantidade de cursos associada aos alunos.


SELECT s.id, s.name, count(distinct t.course_id) as quantidadecursos from student s 
join takes t on s.id = t.id where s.dept_name = 'Civil Eng.'
group by s.id, s.name order by quantidadecursos desc;

 
-- Criando uma view a partir da questão 2, view não suporta o uso de order by.

CREATE VIEW  civil_eng_students (ID, name, quantidadecursos) AS SELECT s.id, s.name, count(distinct t.course_id) as quantidadecursos from student s 
join takes t on s.id = t.id where s.dept_name = 'Civil Eng.'
group by s.id, s.name 

-- Consultando a view criada anteriormente

select * from civil_eng_students

