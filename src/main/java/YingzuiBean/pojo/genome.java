package YingzuiBean.pojo;

public class genome {
    private String SSR_ID;
    private String chromosome;
    private String SSR_start;
    private String SSR_end;

    public String getSSR_ID() {
        return SSR_ID;
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

    public void setChromosome(String chromosome) {
        this.chromosome = chromosome;
    }

    public void setSSR_start(String SSR_start) {
        this.SSR_start = SSR_start;
    }

    public void setSSR_end(String SSR_end) {
        this.SSR_end = SSR_end;
    }

    @Override
    public String toString() {
        return "genome{" +
                "SSR_ID='" + SSR_ID + '\'' +
                ", chromosome='" + chromosome + '\'' +
                ", SSR_start='" + SSR_start + '\'' +
                ", SSR_end='" + SSR_end + '\'' +
                '}';
    }
}
