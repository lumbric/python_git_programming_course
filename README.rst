.. image:: https://mybinder.org/badge_logo.svg
 :target: https://mybinder.org/v2/gh/lumbric/python_git_programming_course/master

Programming using Python, GIT and others in science
===================================================

Slides and notes for a  _`workshop abstract_and_sessions.rst`_ about programming for scientists.

- Session 1: Organizing code and data: Advanced Git, Github and more
- Session 2: How to make code beautiful: Python beyond basics
- Session 3: The Python Scientific Ecosystem


Overview of interesting content
-------------------------------

If you want to run the Jupyter notebooks, you can either clone the repository
and a local Jupyter server or click the mybinder link above.

The most interesting files in this repository:

.. parsed-literal::

  ├── abstract_and_sessions.rst             more information about the workshop
  ├── README.rst                            this file
  ├── session1_git_and_workflow
  │   ├── git_commands                      a list of interesting GIT commands, sorted by importance
  │   ├── git-games                         `GIT repository <https://github.com/lumbric/git-games/>`_ to try GIT commands while playing board games
  │   ├── git.txt                           see https://m.xkcd.com/1597/
  │   ├── links.rst                         helpful links about GIT
  │   ├── notes.rst                         personal presenter notes, not sure if helpful for others, but this session was mostly presented on the white board, so this is the only available material
  │   ├── slides.pdf                        slides as PDF
  │   ├── slides-expanded.pdf               slides with interactive items as separate page
  │   └── terminology.rst                   GIT terms covered in the workshop and those not covered
  ├── session2_python_and_programming
  │   ├── slides_session2.html              slides exported to HTML, unfortunately SVG files broken
  │   ├── slides_session2.ipynb             slides as Jupyter Notebok
  │   ├── slides_session2.slides.html       slides exported to HTML, unfortunately SVG files broken (slightly different format, same thing as slides_session2.html)
  │   └── slides_session2.slides.pdf        slides as PDF
  └── session3_scientific_ecosystem
      ├── code-samples
      │   └── slow_average.py               Exercise: Find out why this code is terribly slow!
      ├── example-notebook.ipynb            Example Jupyter notebook with some nice features
      ├── links.rst                         helpful links about scientific Python
      └── slides_session3.ipynb             Slides for Session 3 as Jupyter Notebook


More interesting topics
-----------------------

Not covered in this workshop, but maybe worth looking into:

- f-strings
- decorators
- context managers
- iterators
- generators
- data scraping
- packaging and package managers
- virtualenv, conda env, pipenv, ...
- `from __future__ import braces`

Prepared in notes and slides, bot not really coverd:

- GIT
    - more advanced commands, see terminology.rst
    - workflow
    - large files
    - piplines and workflow for data science
    - GIT interals
- testing
- logging
