int team = 4; // Total # of images
int imageIndex = 0; // Initial image to be displayed is the first

// Declaring an array of images.
PImage[] images = new PImage[team]; 

int y = 0;



void setup()
{
  size(1500, 1500);
  
  

  for (int i = 0; i < images.length; i ++ ) {
    images[i] = loadImage("team"+i+".jpg");


    background(255);

    frameRate(5);
  }
}

void draw ()
{
  image(images[imageIndex], 0, 0);

  stroke(0);

  line(0, y, width, y);

  y += 10;


  if (y > height) {
    y = 0;
  }
}

void mousePressed()
{
  imageIndex = int(random(images.length));
}
