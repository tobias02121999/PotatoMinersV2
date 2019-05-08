// Enlarge the particle
size += growth;

// Fade the particle out
if (image_alpha >= fade)
	image_alpha -= fade;
else
	instance_destroy();
