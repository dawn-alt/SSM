package YingzuiBean.pojo;

public class gene {
    private String SSR_ID;
    private String geneID;
    private String gene_start;
    private String gene_end;
    private String gene_orientation;
    private String genic_nongenic;
    private String entry_names;
    private String protein_names;
    private String organism;

    public String getSSR_ID() {
        return SSR_ID;
    }

    public String getGeneID() {
        return geneID;
    }

    public String getGene_start() {
        return gene_start;
    }

    public String getGene_end() {
        return gene_end;
    }

    public String getGene_orientation() {
        return gene_orientation;
    }

    public String getGenic_nongenic() {
        return genic_nongenic;
    }

    public String getEntry_names() {
        return entry_names;
    }

    public String getProtein_names() {
        return protein_names;
    }

    public String getOrganism() {
        return organism;
    }

    public void setSSR_ID(String SSR_ID) {
        this.SSR_ID = SSR_ID;
    }

    public void setGeneID(String geneID) {
        this.geneID = geneID;
    }

    public void setGene_start(String gene_start) {
        this.gene_start = gene_start;
    }

    public void setGene_end(String gene_end) {
        this.gene_end = gene_end;
    }

    public void setGene_orientation(String gene_orientation) {
        this.gene_orientation = gene_orientation;
    }

    public void setGene_Nongenic(String genic_nongenic) {
        this.genic_nongenic = genic_nongenic;
    }

    public void setEntry_names(String entry_names) {
        this.entry_names = entry_names;
    }

    public void setProtein_names(String protein_names) {
        this.protein_names = protein_names;
    }

    public void setOrganism(String organism) {
        this.organism = organism;
    }

    @Override
    public String toString() {
        return "gene{" +
                "SSR_ID='" + SSR_ID + '\'' +
                ", geneID='" + geneID + '\'' +
                ", gene_start='" + gene_start + '\'' +
                ", gene_end='" + gene_end + '\'' +
                ", gene_orientation='" + gene_orientation + '\'' +
                ", genic_nongenic='" + genic_nongenic + '\'' +
                ", entry_names='" + entry_names + '\'' +
                ", protein_names='" + protein_names + '\'' +
                ", organism='" + organism + '\'' +
                '}';
    }
}
