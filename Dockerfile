# Start from latest official salesforce dx image
FROM salesforce/salesforcedx

# Clone a sample plugin repository & link 
RUN git clone https://github.com/pnestvogel/sfdxplugin-baseproject-generator.git \
  && cd sfdxplugin-baseproject-generator \
  && sfdx plugins:link .

# Alternatively install it using npm or yarn (if public plugin)