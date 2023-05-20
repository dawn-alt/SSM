package YingzuiBean.pojo;

public class All_Info {
    private String SSR_ID;
    private String SSRType;
    private int lenSSR;
    private String SSR_motif;
    private String chromosome;
    private String SSR_start;
    private String SSR_end;
    private String forward_primer;
    private String reverse_primer;
    private float tm;
    private int amplicon_len;
    private String simpleType;

    public String getSSR_ID() { return SSR_ID; }

    public String getSSRType() {
        return SSRType;
    }

    public int getLenSSR() {
        return lenSSR;
    }

    public String getSSR_motif() {
        return SSR_motif;
    }

    public String getChromosome() {
        return chromosome;
    }

    public String getSSR_start() {
        return SSR_start;
    }

    public String getSSR_end() {
        return SSR_end;
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

    public String getSimpleType() {
        return simpleType;
    }

    public void setSSR_ID(String SSR_ID) {
        this.SSR_ID = SSR_ID;
    }

    public void setSSRType(String SSRType) {
        this.SSRType = SSRType;
    }

    public void setLenSSR(int lenSSR) {
        this.lenSSR = lenSSR;
    }

    public void setSSR_motif(String SSR_motif) {
        this.SSR_motif = SSR_motif;
    }

    public void setChromosome(String chromosome) {
        this.chromosome = chromosome;
    }

    public void setSSR_start(String SSR_start) {
        this.SSR_start = SSR_start;
    }

    public void setSSR_end(String SSR_end) {
        this.SSR_end = SSR_end;
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

    public void setSimpleType(String simpleType) {
        this.simpleType = simpleType;
    }

    @Override
    public String toString() {
        return "All_Info{" +
                "SSR_ID='" + SSR_ID + '\'' +
                ", SSRType='" + SSRType + '\'' +
                ", lenSSR=" + lenSSR +
                ", SSR_motif='" + SSR_motif + '\'' +
                ", chromosome='" + chromosome + '\'' +
                ", SSR_start='" + SSR_start + '\'' +
                ", SSR_end='" + SSR_end + '\'' +
                ", forward_primer='" + forward_primer + '\'' +
                ", reverse_primer='" + reverse_primer + '\'' +
                ", tm=" + tm +
                ", amplicon_len=" + amplicon_len +
                '}';
    }
}
