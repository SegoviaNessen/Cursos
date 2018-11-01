//Arreglos

int[] nums = new int [7];

void setup() {
  size(200,200);
  nums[0] = 100;
  nums[1] = 150;
}

void draw() {
  ellipse(mouseX, mouseY, nums[0],nums[1]);
}