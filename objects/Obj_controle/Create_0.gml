//Codigo criar a classificação das magias.
//Toda vez que quiser criar uma nova magia comece adicionando ela aqui
//Mesmo caso, caso queria remover.

//Isso aqui abaixo é algo chamado structs, basicamente funciona
//na estrutura chave/valor, ou seja, o nome da chave e o valor dentro dela
//Coloque aqui a nova magia que você quer criar, ou remova a que não quer mais
global.SpellType = {
	FIRE: obj_shoot_fire,
	WIND: obj_shoot_wind,
	ICE: obj_shoot_ice,
	THUNDER: 3, //Nunca esqueça de deixar em letra maiscula, pois assim
	//você esta criando o tipo correto do objeto
	WATER: obj_shoot_water
};

//Após isso, vá para o objeto do grimorio(livro) e adicone na variavel
///magic spell a respectiva magia

//Enum para os tipos de ambiente
global.EnvironmentType = {
    FOREST: 0,
    WATER: 1,
    FIRE: 2,
    SNOW: 3
};

//Mapeamento de ambiente para transformação de sapo
global.FrogTransformation = {
    FOREST: {
        sprite: frog_forest, //substitua pelo nome real da sprite
        magicType: global.SpellType.WIND
    },
    WATER: {
        sprite: frog_water, //substitua pelo nome real da sprite
        magicType: global.SpellType.WATER
    },
    FIRE: {
        sprite: spr_shoot_fire, //substitua pelo nome real da sprite
        magicType: global.SpellType.FIRE
    },
    SNOW: {
        sprite: frog_snow, //substitua pelo nome real da sprite
        magicType: global.SpellType.ICE
    }
};

//Varável global para armazenar o ambiente atual
global.currentEnvironment = global.EnvironmentType.FOREST;

instance_create_layer(80,160, "Instances", obj_frogy);

