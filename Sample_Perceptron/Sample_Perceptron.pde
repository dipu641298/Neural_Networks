perceptron pr;
Points[] point = new Points[400];
int trainingId = 0;

void setup()
{
   size(800,800);
   pr = new perceptron(3);
   // initialize all points
   for(int i=0; i<point.length; i++){
      point[i] = new Points(); 
   }
   
}

void draw()
{
   
   background(255);
   stroke(0);
   Points p1 = new Points(-1, getY(-1));
   Points p2 = new Points(1, getY(1));
   line(p1.pixelX(), p1.pixelY() , p2.pixelX(), p2.pixelY());
   
   Points p3 = new Points(-1, pr.guessY(-1));
   Points p4 = new Points(1, pr.guessY(1));
   line(p3.pixelX(), p3.pixelY() , p4.pixelX(), p4.pixelY());
   
   for(Points p : point){
      p.show();
   }
   
   for(Points p : point){
       float[] inputs = {p.x, p.y, p.bias};
       int target = p.lebel;
       int guess = pr.guess(inputs);
       if(guess == target){
           fill(0,255,0);
       }else{
          fill(255,0,0);
       }
       
       noStroke();
       ellipse(p.pixelX(),p.pixelY(),8,8);
   }
   
   Points training = point[trainingId];
   float[] inputs = {training.x, training.y, training.bias};
   int target = training.lebel;
   pr.train(inputs,target);
   trainingId = (trainingId+1)%point.length;
   
}

/*void mousePressed()
{
    for(Points p : point){
       float[] inputs = {p.x, p.y, p.bias};
       int target = p.lebel;
       pr.train(inputs, target);
   }
}*/
