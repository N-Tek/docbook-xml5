cd etc/xml/
cp --archive docbook docbook.docbook5.0.0_orig
sed_appended_text='\
  <!-- Added when "docbook-5.0.0" package is installed --> \
  <nextCatalog catalog="file:///usr/share/xml/docbook/5.0/catalog_docbook-5.0.0.xml" />'
sed -i "\$i \ $sed_appended_text" docbook
