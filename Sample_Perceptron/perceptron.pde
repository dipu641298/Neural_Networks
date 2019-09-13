class perceptron
{
  float[] weights;
  float lr = 0.002;
  //constructor
  perceptron(int n){
    weights = new float[n];
    for(int i=0; i<weights.length; i++){
       weights[i] = random(-1,1);
    }
  }
  
  // function to guess output
  int guess(float[] inputs){
     float sum = 0.0;
     for(int i=0; i<inputs.length; i++){
        sum += weights[i]*inputs[i]; 
     }
     if(sum > 0.0) return 1;
     else return -1;
  }
  
  void train(float[] inputs, int target)
  {
     int guess = pr.guess(inputs);
     int error =  target-guess;
     
     for(int i=0; i<weights.length; i++){
        weights[i] += error * inputs[i] * lr;
     }
  }
  
  float guessY(float x){
     return  -(weights[2]/weights[1]) - (weights[0]/weights[1]) * x;
  }
}
