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
   ln -s $DOCBOOK_DIR/xsl-ns-stylesheets-1.79.2 $DOCBOOK_DIR/stylesheet/docbook-xsl-ns
   ln -s $DOCBOOK_DIR/xsl-ns-stylesheets-1.79.2 $DOCBOOK_DIR/xsl-ns-stylesheets
}

config etc/xml/docbook.new
create_soft_links /usr/share/xml/docbook
