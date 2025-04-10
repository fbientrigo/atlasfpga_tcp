# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'ChargeMonitoringSystem_TCPIP'
copyright = '2025, T'
author = 'T'
release = '1'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration


templates_path = ['_templates']
exclude_patterns = []

language = 'es'

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'alabaster'
html_static_path = ['_static']

extensions = [
    'breathe',
    'sphinxcontrib.mermaid',
    'myst_parser',  # Opcional, si usas Markdown
]

# Configuración Breathe
breathe_projects = {
    "ChargeMonitoringSystem_TCPIP": "./doc/xml"
}
breathe_default_project = "ChargeMonitoringSystem_TCPIP"
