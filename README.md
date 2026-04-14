# COPD Alveolar Macrophage Transcriptomics Meta-Analysis

> 300 million people worldwide have COPD. It's the third leading cause of death globally. Yet there's no cure, only symptom management. This project uses transcriptomics meta-analysis to find new drug targets in alveolar macrophages, the immune cells that live in your lungs and go haywire in COPD.

## The Biological Question

In healthy lungs, alveolar macrophages clear pathogens and debris. In COPD, they become dysfunctional: they produce excessive inflammatory cytokines, fail to clear dead cells (defective efferocytosis), and release proteases that destroy lung tissue. Understanding which genes drive this dysfunction across multiple cohorts is how you find reliable therapeutic targets.

## Why a Meta-Analysis

Any single study has limitations: small sample size, batch effects, population-specific findings. A meta-analysis combines multiple independent studies to find genes consistently dysregulated across cohorts. If a gene is differentially expressed in the same direction across four studies, that's a signal you can trust.

## The Workflow

1. **Gather evidence**: Pull COPD alveolar macrophage datasets from GEO
2. **Individual DEA**: Each dataset gets its own limma/DESeq2 analysis
3. **Meta-analysis with MetaVolcanoR**: Find genes consistently changed across all studies
4. **PPI network from STRING**: Genes don't work in isolation
5. **Hub gene identification**: Network centrality algorithms find the key nodes
6. **Drug repurposing**: Hub genes go through DGIdb to find existing drugs that target them

## Key Finding

CXCL9 emerges as a central hub gene in COPD macrophage dysfunction, and Nintedanib (already approved for IPF) was identified as a repurposing candidate via molecular docking.

## What Makes This Different

Most projects stop at "here are my DEGs." This goes further: from genes to networks, from networks to hub genes, from hub genes to drug candidates. The full translational pipeline from data to potential therapeutic intervention.

## Usage
```bash
Rscript 01_download_geo.R
Rscript 02_individual_dea.R
Rscript 03_meta_analysis.R
Rscript 04_network_analysis.R
```
