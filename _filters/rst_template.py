import docutils.core
import re

config = {
    'name': "reStructuredText",
    'description': "Renders reStructuredText formatted text to HTML",
    'aliases': ['rst']
    }


def drop_int(matchobj):
    var = matchobj.group(0)
    return str(int(var) + 2)


def drop_level_heading(matchobj):
    var = matchobj.group(0)
    return re.sub('\d', drop_int, var)


def run(content):
    return re.sub(
        '</?h\d>',
        drop_level_heading,
        docutils.core.publish_parts(
            content, writer_name='html'
        )['html_body']
    )
