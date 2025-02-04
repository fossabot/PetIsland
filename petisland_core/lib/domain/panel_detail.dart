part of petisland_core.domain;

abstract class Item {
  Map<String, dynamic> toJson();
}

abstract class PostItem extends Item {}

class PanelDetail extends Item {
  String type;
  PostItem postItem;

  PanelDetail.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    final Map<String, dynamic> data = json['data'] ?? <String, dynamic>{};

    if (type == 'Post') {
      final PostItem post = Post.fromJson(data);
      postItem = post;
    } else if (type == 'Pet category') {
      final PostItem post = PetCategory.fromJson(data);
      postItem = post;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = <String, dynamic>{};
    _addValueToMap('type', type, map);
    _addValueToMap('data', postItem.toJson(), map);
    return map;
  }
}
