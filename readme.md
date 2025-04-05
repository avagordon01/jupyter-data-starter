# python data science starter repo

ibis, postgres, parquet, plotly, etc

## vscode extensions

```
charliermarsh.ruff
ms-python.debugpy
ms-python.python
ms-python.vscode-pylance
ms-toolsai.jupyter
ms-toolsai.jupyter-renderers
```

## adding a dependency

```
uv add plotly
uv sync
```
and restart ipynb kernel in vscode
(make sure `.venv/bin/python` is the selected kernel in vscode)

## alternatives evaluated

- [data wrangler](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.datawrangler) + pandas
    - GUI based rather than code based
    - not as good as ibis + jupyter
- [database client](https://marketplace.visualstudio.com/items?itemName=cweijan.vscode-database-client2) + database
    - best completion for everything (just by using SQL)
    - not as good as ibis + jupyter
    - freemium
- [supabase postgres LSP](https://marketplace.visualstudio.com/items?itemName=Supabase.postgrestools)
    - just good SQL completion
- [ibis](https://ibis-project.org/) + [jupyter (in vscode)](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
    - ibis . dot notation has better completion than sql syntax
    - but no completion for field / table names?
    - supports all underlying db features / functions with UDF? https://ibis-project.org/how-to/extending/builtin
    - also has support for interactive plots with plotly https://ibis-project.org/how-to/visualization/plotly
    - also supports window functions / streaming https://ibis-project.org/how-to/extending/streaming
    - also supports (pandas, polars, postgresql, duckdb, clickhouse, parquet, s3, gcs, etc)
