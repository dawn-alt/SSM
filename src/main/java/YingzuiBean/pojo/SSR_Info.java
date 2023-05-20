package YingzuiBean.pojo;

public class SSR_Info {
    private String SSR_ID;
    private String SSRType;
    private int lenSSR;
    private String SSR_motif;


    public void setSSR_ID(String ssrId) {
        this.SSR_ID = ssrId;
    }

    public void setLenSSR(int lenSSR) {
        this.lenSSR = lenSSR;
    }

    public void setSSRType(String SSRType) {
        this.SSRType = SSRType;
    }

    public void setSSR_motif(String SSR_motif) {
        this.SSR_motif = SSR_motif;
    }

    public String getSSR_ID() {
        return SSR_ID;
    }

    public int getLenSSR() {
        return lenSSR;
    }

    public String getSSRType() {
        return SSRType;
    }

    public String getSSR_motif() {
        return SSR_motif;
    }

    @Override
    public String toString() {
        return "SSR_Info{" +
                "SSR_ID=" + SSR_ID + '\'' +
                ", SSRType=" + SSRType + '\'' +
                ", SSR_motif=" + SSR_motif + '\'' +
                ", lenSSR=" + lenSSR +
                '}';
    }
}
