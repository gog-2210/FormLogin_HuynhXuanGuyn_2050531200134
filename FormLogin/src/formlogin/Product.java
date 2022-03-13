package formlogin;

public class Product {
    private String mtl;
    private String ttg;
    private String tnsx;
    private int sbph;
    private int str;

    public Product(String mtl, String ttg, String tnsx, int sbph, int str) {
        this.mtl = mtl;
        this.ttg = ttg;
        this.tnsx = tnsx;
        this.sbph = sbph;
        this.str = str;
    }

    public String getMtl() {
        return mtl;
    }

    public String getTtg() {
        return ttg;
    }

    public String getTnsx() {
        return tnsx;
    }

    public int getSbph() {
        return sbph;
    }

    public int getStr() {
        return str;
    }

    public void setMtl(String mtl) {
        this.mtl = mtl;
    }

    public void setTtg(String ttg) {
        this.ttg = ttg;
    }

    public void setTnsx(String tnsx) {
        this.tnsx = tnsx;
    }

    public void setSbph(int sbph) {
        this.sbph = sbph;
    }

    public void setStr(int str) {
        this.str = str;
    }
    public Object [] toArray(){
        return new Object []{mtl,ttg,tnsx,sbph,str};
    }
}
