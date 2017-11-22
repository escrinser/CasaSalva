function ImageGalleryOpenImage(src, title, width, height) {
	window.open(src, 'previewImage'+width+height,  'width=' + width + ', height=' + height);
}