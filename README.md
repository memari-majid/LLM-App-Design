# AI Application Architecture Design

A comprehensive guide for AI Architects and technical leaders on designing production-ready AI applications.

## 🌐 Website

**Live Documentation:** [https://memari-majid.github.io/LLM-App-Design/](https://memari-majid.github.io/LLM-App-Design/)

This site is built with [MkDocs](https://www.mkdocs.org/) and the [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) theme.

## 🚀 Quick Links

- **Home/Introduction:** [Start Reading](https://memari-majid.github.io/LLM-App-Design/chapters/00-introduction/)

## 🛠️ Local Development

To run the site locally:

1.  **Install Python**: Ensure you have Python 3.8+ installed.
2.  **Install Dependencies**:
    ```bash
    pip install mkdocs mkdocs-material
    ```
3.  **Serve Locally**:
    ```bash
    mkdocs serve
    ```
4.  Open [http://127.0.0.1:8000](http://127.0.0.1:8000) in your browser.

## ✍️ Adding New Chapters

1.  Create a new Markdown file (e.g., `05-new-topic.md`) in the `docs/chapters/` directory.
2.  Add it to the `nav` section in the `mkdocs.yml` file:
    ```yaml
    nav:
      - Introduction: chapters/00-introduction.md
      # ... other chapters ...
      - New Topic Title: chapters/05-new-topic.md # <-- Add new chapter here
    ```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request for:

-   New chapters or sections
-   Corrections or clarifications
-   Design patterns and case studies
-   Visual diagrams or implementation examples

## 📜 License

Creative Commons BY-SA-4.0

---

*Note: Full content is available on the website. Original content backed up in README.md.bak* 