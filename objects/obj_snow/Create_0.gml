/// @description Ambiente de neve
// Define o tipo de ambiente
environment_type = global.EnvironmentType.SNOW;

// Propriedades visuais
image_speed = 0.1; // Animação lenta para simular neve

// Propriedades de física
depth = 100; // Acima do fundo

// Efeito de partículas de neve (opcional)
alarm[0] = irandom_range(10, 30); // Timer para criar neve 