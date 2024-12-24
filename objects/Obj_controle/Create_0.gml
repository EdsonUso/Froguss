//Codigo criar a classificação das magias.
//Toda vez que quiser criar uma nova magia comece adicionando ela aqui
//Mesmo caso, caso queria remover.

//Isso aqui abaixo é algo chamado structs, basicamente funciona
//na estrutura chave/valor, ou seja, o nome da chave e o valor dentro dela
//Coloque aqui a nova magia que você quer criar, ou remova a que não quer mais
global.SpellType = {
	FIRE: obj_shoot_fire,
	WIND: 1,
	ICE: 2,
	THUNDER: 3 //Nunca esqueça de deixar em letra maiscula, pois assim
	//você estpa criando o tipo correto do objeto
};

//Após isso, vá para o objeto do grimorio(livro) e adicone na variavel
///magic spell a respectiva magia