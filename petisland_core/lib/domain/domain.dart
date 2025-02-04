library petisland_core.domain;

import 'package:meta/meta.dart';
import 'package:petisland_core/util/log.dart';
import 'package:flutter/foundation.dart';
import 'package:petisland_core/util/petisland_constants.dart';

part 'account.dart';
part 'base_model.dart';
part 'comment.dart';
part 'image.dart';
part 'login_data.dart';
part 'pet.dart';
part 'post.dart';
part 'review.dart';
part 'tag.dart';
part 'user.dart';
part 'post_modal.dart';
part 'pet_category.dart';
part 'post_image.dart';
part 'post_tag.dart';
part 'panel.dart';
part 'panel_detail.dart';

void _addValueToMap(String key, dynamic value, Map<String, dynamic> map) {
  if (value != null) map[key] = value;
}

List<Map<String, dynamic>> _imagesToJson(List<PetImage> images) {
  if (images != null) {
    return images.map((PetImage item) => item.toJson()).toList();
  } else {
    return null;
  }
}

List<Map<String, dynamic>> _tagsToJson(List<Tag> tags) {
  if (tags != null) {
    return tags.map((Tag item) => item.toJson()).toList();
  } else {
    return null;
  }
}

List<PetImage> parseImages(List<Map<String, dynamic>> images) {
  images ??= <Map<String, dynamic>>[];
  return images.map((Map<String, dynamic> item) => PetImage.fromJson(item)).toList();
}

DateTime _parseDateTime(String time) {
  try {
    if (time is String)
      return DateTime.parse(time);
    else
      return null;
  } catch (ex) {
    Log.debug(ex);
    return null;
  }
}
