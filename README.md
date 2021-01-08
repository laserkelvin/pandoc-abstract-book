
# pandoc-abstract-book

The point of this repository is to provide a pandoc workflow for generating conference abstract books using Markdown and YAML. The idea is to use the same content to generate both HTML (styled with CSS) and PDF (typeset with XeLaTeX) for web and print without doing any extra work.

## Instructions

The content is modified in `abstracts.yaml`, with the majority of data contained in the front matter. The abstraction is fairly straightforward and the keys are pretty self-explanatory: essentially organizers and abstracts are specified using nested lists.

For organizers, a name and affiliation are required.

For abstracts, the title, author list, and abstract body are required. Optionally, you can also provide values for an arXiv link (`arxiv`), a session identifier (`session`) (i.e. which stream the talk will be featured in), a time for the talk (`time`), an email contact (`email`), and a DOI (`doi`). These are left as optional because it may not be applicable to every conference.

Once you have populated `abstracts.yaml` with the data relevant to your conference, the provided `Makefile` can be used to control generation.

## HTML output

The YAML content is used by pandoc to fill in `template.html`. Styling is controlled by `base.css`, which includes some classes for `abstract-entry` and `abstract-data`, among others, which correspond to styling and layout of each abstract and associated extra information (e.g. email, session, etc.).