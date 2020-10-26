package backend;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class pointBean implements Serializable {
    private List<point> table;
    public pointBean(){
        table = new ArrayList<>();
    }
    public void addPoint(point point){
        table.add(point);
    }
    public List getTable(){
        return table;
    }
}
