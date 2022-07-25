config() {
  NEW="$1"
  OLD="$(dirname $NEW)/$(basename $NEW .new)"
  # If there's no config file by that name, mv it over:
  if [ ! -r $OLD ]; then
    mv $NEW $OLD
  elif [ "$(cat $OLD | md5sum)" = "$(cat $NEW | md5sum)" ]; then
    # toss the redundant copy
    rm $NEW
  fi
  # Otherwise, we leave the .new copy for the admin to consider...
}

create_soft_links() {
   DOCBOOK_DIR="$1"
   ( cd $DOCBOOK_DIR/stylesheet; rm -rf docbook-xsl-ns )
   ( cd $DOCBOOK_DIR/stylesheet; ln -sf ../xsl-ns-stylesheets-1.79.2 docbook-xsl-ns )
   ( cd $DOCBOOK_DIR; rm -rf xsl-ns-stylesheets )
   ( cd $DOCBOOK_DIR; ln -sf xsl-ns-stylesheets-1.79.2 xsl-ns-stylesheets )
}

config etc/xml/docbook.new
create_soft_links /usr/share/xml/docbook
