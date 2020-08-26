#!
#target='featured_image: "/images/linux-manuals.jpg"'
#newword ='featured_image: "/images/generic.jpg"'
sed -i 's+featured_image: "/images/linux-manuals.jpg"+featured_image: "/images/generic.jpg"'/g' sedtest.md
