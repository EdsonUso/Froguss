/// @description Ambiente de fogo/lava
// Define o tipo de ambiente
environment_type = global.EnvironmentType.FIRE;

// Propriedades visuais
image_speed = 0.3; // Animação mais rápida para simular lava

// Propriedades de física
depth = 100; // Acima do fundo

// Efeito de partículas de fogo (opcional)
alarm[0] = irandom_range(5, 20); // Timer para criar fogo 