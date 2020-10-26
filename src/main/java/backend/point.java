package backend;

import javafx.scene.input.DataFormat;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class point implements Serializable {
    float x;
    float y;
    float r;
    String time;
    boolean aim;
    Double execTime;
    public point(float x, float y, float r){
        this.x = x;
        this.y = y;
        this.r = r;
        this.time = DateTimeFormatter.ofPattern("HH:mm:ss").format(LocalDateTime.now());
        long startTime = System.nanoTime();
        this.aim = checkArea(x,y,r);
        long endingTime = System.nanoTime();
        this.execTime = ((double) (endingTime-startTime)/10000000);
    }

    public float getX() {
        return x;
    }

    public float getY() {
        return y;
    }

    public float getR() {
        return r;
    }

    public String getTime(){
        return  time;
    }

    public Double getExecTime() {
        return execTime;
    }

    public boolean getAim(){
        return aim;
    }

    private boolean checkArea(float x, float y, float r){
        if (x>=0 && y<=0 && x<=r && y>=-r/2){
            return true;
        } else if (x>=0 && y>=0 && y<=-x+r){
            return true;
        } else if (x<=0 && y>=0 && x*x + y*y <= r*r/4){
            return true;
        } else {
            return false;
        }
    }
}
