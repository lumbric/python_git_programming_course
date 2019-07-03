.. |mybinder| image:: https://mybinder.org/badge_logo.svg
   :target: https://mybinder.org/v2/gh/lumbric/python_git_programming_course/master
   :alt: open in mybinder
   
.. |license| image:: https://img.shields.io/github/license/lumbric/python_git_programming_course.svg
   :target: https://choosealicense.com/licenses/mit
   :alt: MIT License

|license|  |mybinder| 
 
Programming using Python, GIT and others in science
===================================================

Slides and notes for a  `workshop <abstract_and_sessions.rst>`_ about programming for scientists.

- Session 1: Organizing code and data: Advanced Git, Github and more
- Session 2: How to make code beautiful: Python beyond basics
- Session 3: The Python Scientific Ecosystem


Overview of interesting content
-------------------------------

If you want to run the Jupyter notebooks, you can either clone the repository
and a local Jupyter server or click the `mybinder link <https://mybinder.org/v2/gh/lumbric/python_git_programming_course/master>`_ above or Google colab links below.

The most interesting files in this repository:

.. parsed-literal::

  ├── `abstract_and_sessions.rst <abstract_and_sessions.rst>`_             more information about the workshop
  ├── `README.rst <README.rst>`_                            `this <README.rst>`_ file
  ├── session1_git_and_workflow
  │   ├── `git_commands <session1_git_and_workflow/git_commands>`_                      a list of interesting GIT commands, sorted by importance
  │   ├── git-games                         `GIT repository <https://github.com/lumbric/git-games/>`_ to try GIT commands while playing board games
  │   ├── `git.txt <session1_git_and_workflow/git.txt>`_                           see https://m.xkcd.com/1597/
  │   ├── `links.rst <session1_git_and_workflow/links.rst>`_                         helpful links about GIT
  │   ├── `notes.rst <session1_git_and_workflow/notes.rst>`_                         personal presenter notes, not sure if helpful for others, but this session was mostly presented on the white board, so this is the only available material
  │   ├── `slides.pdf <session1_git_and_workflow/slides.pdf>`_                        slides as PDF
  │   ├── `slides-expanded.pdf <session1_git_and_workflow/slides-expanded.pdf>`_               slides with interactive items as separate page
  │   └── `terminology.rst <session1_git_and_workflow/terminology.rst>`_                   GIT terms covered in the workshop and those not covered
  ├── session2_python_and_programming
  │   ├── `slides_session2.html <session2_python_and_programming/slides_session2.html>`_              slides exported to HTML, unfortunately SVG files broken, `view HTML <https://htmlpreview.github.io/?https://github.com/lumbric/python_git_programming_course/blob/master/session2_python_and_programming/slides_session2.html>`_
  │   ├── `slides_session2.ipynb <session2_python_and_programming/slides_session2.ipynb>`_             slides as Jupyter Notebok, `run it in Google colab <https://colab.research.google.com/github/lumbric/python_git_programming_course/blob/master/session2_python_and_programming/slides_session2.ipynb>`_
  │   ├── `slides_session2.slides.html <session2_python_and_programming/slides_session2.slides.html>`_       slides exported to HTML, unfortunately SVG files broken (slightly different format, same thing as slides_session2.html), `view HTML <https://htmlpreview.github.io/?https://github.com/lumbric/python_git_programming_course/blob/master/session2_python_and_programming/slides_session2.slides.html>`_
  │   └── `slides_session2.slides.pdf <session2_python_and_programming/slides_session2.slides.pdf>`_        slides as PDF
  └── session3_scientific_ecosystem
      ├── code-samples
      │   └── `slow_average.py <session3_scientific_ecosystem/code-samples/slow_average.py>`_               Exercise: Find out why this code is terribly slow!
      ├── `example-notebook.ipynb <session3_scientific_ecosystem/example-notebook.ipynb>`_            Example Jupyter notebook with some nice features, `run it in Google colab <https://colab.research.google.com/github/lumbric/python_git_programming_course/blob/master/session3_scientific_ecosystem/example-notebook.ipynb>`_
      ├── `links.rst <session3_scientific_ecosystem/links.rst>`_                         helpful links about scientific Python
      └── `slides_session3.ipynb <session3_scientific_ecosystem/slides_session3.ipynb>`_             Slides for Session 3 as Jupyter Notebook, `run it in Google colab <https://colab.research.google.com/github/lumbric/python_git_programming_course/blob/master/session3_scientific_ecosystem/slides_session3.ipynb>`_


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
