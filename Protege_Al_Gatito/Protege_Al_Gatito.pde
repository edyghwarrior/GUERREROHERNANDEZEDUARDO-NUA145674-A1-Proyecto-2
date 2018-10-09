import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;
import processing.sound.*;

SoundFile song1;

int startingTime = 181000;
String prefix = "¡Aguanta ";

PImage cuchillo;
PImage gatito1;
PImage nube1;
PImage nube2;
PImage nube3;
PImage nube4;
PImage corazon;
PImage demo;
PImage signo;
PImage pa1;
PImage pa2;
PImage pa3;
PImage pw;
PImage pf;

PFont fuente2;


Box2DProcessing box2d;

Pantalla p1;

ArrayList<Boundary> boundaries;
ArrayList<Box> boxes;

float x1,y1,z1,z2,e1,e2,e3=3;
float c1,c2,c3,c4,dt=0,tx=1;
float dx=.00023;
int zx,m;
int vida=9;
boolean i1,i2,i3,i4,miedo=false;
float pa=0;


void setup() {
  size(800,800);
  
  song1 = new SoundFile(this, "fondo1.aiff");
  song1.amp(.15);
  song1.loop();

  gatito1 = loadImage("gatito1.png");
  nube1 = loadImage("nube1.png");
  nube2 = loadImage("nube2.png");
  nube3 = loadImage("nube3.png");
  nube4 = loadImage("nube4.png");
  corazon = loadImage("corazon.png");
  demo = loadImage("demo.png");
  signo =  loadImage("signo.png");
  pa1 = loadImage("p1.png");
  pa2 = loadImage("p2.png");
  pa3 = loadImage("p3.png");
  pw = loadImage("pw.png");
  pf = loadImage("pf.png");
  
  fuente2 = loadFont("BubbleGum-60.vlw");
  
  PFont font = loadFont("BubbleGum-24.vlw");
  textFont(font);
  
  smooth();

  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  
  box2d.listenForCollisions();

  box2d.setGravity(0, 0);

  boxes = new ArrayList<Box>();
  boundaries = new ArrayList<Boundary>();
  boundaries.add(new Boundary(400,400,30));

  
  p1 = new Pantalla();
  
  cuchillo = loadImage("a1.png");
}

void draw() {
  dt+=0.01;
  println(z1);
  
  calculo();
  box2d.step();  
  p1.fondo();
}
