Table Aluno {
  id_Aluno int [pk]
  Nome_completo text
  Data_de_Nascimento varchar (10)
  RG varchar (20)
  CPF varchar (14)
  Telefone varchar (11)
  Email varchar
  CEP varchar
  Endereço varchar
  Cidade varchar
  Estado varchar
}

Table Matricula {
  id_Matricula int [pk]
  id_Aluno int
  id_Curso int
  Mês_matricula month
  Ano_matricula year
}

Table Curso {
  id_Curso int [pk]
  Nome text
  Carga_horaria int
  Previsão_de_Conclusão int
  id_Unidade int
}

Table Faculdade {
  id_Unidade int [pk]
  Nome int
  CNPJ varchar
  Endereço varchar
  Cidade varchar
  Estado varchar
}

Table Materias {
  id_materia int [pk]
  Nome text
  Sala int
  id_professor int
  id_Curso int
  id_Matricula int
}

Table Professores {
  id_Professor int [pk]
  Nome_completo text
  Data_de_Nascimento varchar (10)
  Telefone varchar (11)
  Email varchar
  RG varchar (20)
  CPF varchar (14)
  Tipo_de_Aula int
  Formação int
  CEP varchar
  Endereço varchar
  Cidade varchar
  Estado varchar
}

Table Nota {
  id_materia int
  id_Professor int
  id_Matricula int
  Nota decimal (10)
}

Ref {
  Aluno.id_Aluno > Matricula.id_Aluno
}

Ref {
  Curso.id_Curso > Matricula.id_Curso
}

Ref {
  Faculdade.id_Unidade > Curso.id_Unidade
}

Ref {
  Matricula.id_Matricula > Materias.id_Matricula
}

Ref {
  Curso.id_Curso > Materias.id_Curso
}

Ref {
  Professores.id_Professor > Materias.id_professor
}

Ref {
  Materias.id_materia > Nota.id_materia
}

Ref {
  Professores.id_Professor > Nota.id_Professor
}

Ref {
  Matricula.id_Matricula > Nota.id_Matricula
}
