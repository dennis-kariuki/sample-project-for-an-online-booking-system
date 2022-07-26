  public void nextStep()
  {
     if (stepsCount % 2 == 0)  
        leftFoot.moveForward (2 *  stepLength);
     else  
        rightFoot.moveForward (2 * stepLength);

     stepsCount++;
  }
