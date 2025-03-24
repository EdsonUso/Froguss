/// @description Ambiente de água
// Define o tipo de ambiente
environment_type = global.EnvironmentType.WATER;

// Propriedades visuais
image_speed = 0.2; // Animação lenta para simular água

// Propriedades de física
depth = 100; // Acima do fundo

// Efeito de partículas de água (opcional)
alarm[0] = irandom_range(10, 60); // Timer para criar bolhas 