package YingzuiBean.pojo;

public class primer {
    private String SSR_ID;
    private String forward_primer;
    private String reverse_primer;
    private float tm;
    private int amplicon_len;

    public void setSSR_ID(String SSR_ID) {
        this.SSR_ID = SSR_ID;
    }

    public void setForward_primer(String forward_primer) {
        this.forward_primer = forward_primer;
    }

    public void setReverse_primer(String reverse_primer) {
        this.reverse_primer = reverse_primer;
    }

    public void setTm(float tm) {
        this.tm = tm;
    }

    public void setAmplicon_len(int amplicon_len) {
        this.amplicon_len = amplicon_len;
    }

    public String getSSR_ID() {
        return SSR_ID;
    }

    public String getForward_primer() {
        return forward_primer;
    }

    public String getReverse_primer() {
        return reverse_primer;
    }

    public float getTm() {
        return tm;
    }

    public int getAmplicon_len() {
        return amplicon_len;
    }

    @Override
    public String toString() {
        return "primer{" +
                "SSR_ID='" + SSR_ID + '\'' +
                ", forward_primer='" + forward_primer + '\'' +
                ", reverse_primer='" + reverse_primer + '\'' +
                ", tm=" + tm +
                ", amplicon_len=" + amplicon_len +
                '}';
    }
}
