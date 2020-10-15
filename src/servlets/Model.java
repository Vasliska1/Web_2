package servlets;

import java.time.LocalDateTime;
import java.time.LocalTime;

public class Model {

    private String runTime;
    private double x;
    private double y;
    private double r;
    private Boolean result;
    private LocalTime currentDate;

    public Model(double x, double y, double r, String runTime, LocalTime currentDate, Boolean result) {
        this.currentDate = currentDate ;
        this.x = x;
        this.y = y;
        this.r = r;
        this.result = result;
        this.runTime = runTime;

    }

    public String getRunTime() {
        return runTime;
    }

    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }

    public double getR() {
        return r;
    }

    public Boolean getResult() {
        return result;
    }

    public LocalTime getCurrentDate() {
        return currentDate;
    }
}
