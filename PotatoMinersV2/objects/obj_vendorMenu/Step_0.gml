// Scroll through the menu
var size = array_length_1d(vendor.vendorScript) - 1;

if (vendor.player.iVendorLeft)
{
	if (image_index >= 1)
		image_index -= 1;
	else
		image_index = size;
}

if (vendor.player.iVendorRight)
{
	if (image_index + 1 <= size)
		image_index += 1;
	else
		image_index = 0;
}
