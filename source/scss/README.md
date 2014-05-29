# Sass Architecture

Our Sass architecture is pretty rudimentary. Site-wide styles should be placed in `_base.scss`, anything that needs browser prefixes or can easily be reused should be set up as a mixin in `_mixins.scss`, and any page that has specific styles should get it's own `_pageName.scss`.