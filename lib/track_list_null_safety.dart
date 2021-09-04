/// message : {"header":{"status_code":200,"execute_time":0.027354001998901},"body":{"track_list":[{"track":{"track_id":215209212,"track_name":"Fancy Like","track_name_translation_list":[],"track_rating":100,"commontrack_id":126911332,"instrumental":0,"explicit":0,"has_lyrics":1,"has_subtitles":1,"has_richsync":1,"num_favourite":76,"album_id":44162802,"album_name":"Country Stuff","artist_id":13865343,"artist_name":"Walker Hayes","track_share_url":"https://www.musixmatch.com/lyrics/Walker-Hayes/Fancy-Like?utm_source=application&utm_campaign=api&utm_medium=n%2Fa%3A1409620463618","track_edit_url":"https://www.musixmatch.com/lyrics/Walker-Hayes/Fancy-Like/edit?utm_source=application&utm_campaign=api&utm_medium=n%2Fa%3A1409620463618","restricted":0,"updated_time":"2021-07-21T08:25:42Z","primary_genres":{"music_genre_list":[{"music_genre":{"music_genre_id":34,"music_genre_parent_id":0,"music_genre_name":"Music","music_genre_name_extended":"Music","music_genre_vanity":"Music"}}]}}}]}}

class Track_list_null_safety {
  Message? _message;

  Message? get message => _message;

  Track_list_null_safety({
      Message? message}){
    _message = message;
}

  Track_list_null_safety.fromJson(dynamic json) {
    _message = json['message'] != null ? Message.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_message != null) {
      map['message'] = _message?.toJson();
    }
    return map;
  }

}

/// header : {"status_code":200,"execute_time":0.027354001998901}
/// body : {"track_list":[{"track":{"track_id":215209212,"track_name":"Fancy Like","track_name_translation_list":[],"track_rating":100,"commontrack_id":126911332,"instrumental":0,"explicit":0,"has_lyrics":1,"has_subtitles":1,"has_richsync":1,"num_favourite":76,"album_id":44162802,"album_name":"Country Stuff","artist_id":13865343,"artist_name":"Walker Hayes","track_share_url":"https://www.musixmatch.com/lyrics/Walker-Hayes/Fancy-Like?utm_source=application&utm_campaign=api&utm_medium=n%2Fa%3A1409620463618","track_edit_url":"https://www.musixmatch.com/lyrics/Walker-Hayes/Fancy-Like/edit?utm_source=application&utm_campaign=api&utm_medium=n%2Fa%3A1409620463618","restricted":0,"updated_time":"2021-07-21T08:25:42Z","primary_genres":{"music_genre_list":[{"music_genre":{"music_genre_id":34,"music_genre_parent_id":0,"music_genre_name":"Music","music_genre_name_extended":"Music","music_genre_vanity":"Music"}}]}}}]}

class Message {
  Header? _header;
  Body? _body;

  Header? get header => _header;
  Body? get body => _body;

  Message({
      Header? header, 
      Body? body}){
    _header = header;
    _body = body;
}

  Message.fromJson(dynamic json) {
    _header = json['header'] != null ? Header.fromJson(json['header']) : null;
    _body = json['body'] != null ? Body.fromJson(json['body']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_header != null) {
      map['header'] = _header?.toJson();
    }
    if (_body != null) {
      map['body'] = _body?.toJson();
    }
    return map;
  }

}

/// track_list : [{"track":{"track_id":215209212,"track_name":"Fancy Like","track_name_translation_list":[],"track_rating":100,"commontrack_id":126911332,"instrumental":0,"explicit":0,"has_lyrics":1,"has_subtitles":1,"has_richsync":1,"num_favourite":76,"album_id":44162802,"album_name":"Country Stuff","artist_id":13865343,"artist_name":"Walker Hayes","track_share_url":"https://www.musixmatch.com/lyrics/Walker-Hayes/Fancy-Like?utm_source=application&utm_campaign=api&utm_medium=n%2Fa%3A1409620463618","track_edit_url":"https://www.musixmatch.com/lyrics/Walker-Hayes/Fancy-Like/edit?utm_source=application&utm_campaign=api&utm_medium=n%2Fa%3A1409620463618","restricted":0,"updated_time":"2021-07-21T08:25:42Z","primary_genres":{"music_genre_list":[{"music_genre":{"music_genre_id":34,"music_genre_parent_id":0,"music_genre_name":"Music","music_genre_name_extended":"Music","music_genre_vanity":"Music"}}]}}}]

class Body {
  List<Track_list>? _trackList;

  List<Track_list>? get trackList => _trackList;

  Body({
      List<Track_list>? trackList}){
    _trackList = trackList;
}

  Body.fromJson(dynamic json) {
    if (json['track_list'] != null) {
      _trackList = [];
      json['track_list'].forEach((v) {
        _trackList?.add(Track_list.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_trackList != null) {
      map['track_list'] = _trackList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// track : {"track_id":215209212,"track_name":"Fancy Like","track_name_translation_list":[],"track_rating":100,"commontrack_id":126911332,"instrumental":0,"explicit":0,"has_lyrics":1,"has_subtitles":1,"has_richsync":1,"num_favourite":76,"album_id":44162802,"album_name":"Country Stuff","artist_id":13865343,"artist_name":"Walker Hayes","track_share_url":"https://www.musixmatch.com/lyrics/Walker-Hayes/Fancy-Like?utm_source=application&utm_campaign=api&utm_medium=n%2Fa%3A1409620463618","track_edit_url":"https://www.musixmatch.com/lyrics/Walker-Hayes/Fancy-Like/edit?utm_source=application&utm_campaign=api&utm_medium=n%2Fa%3A1409620463618","restricted":0,"updated_time":"2021-07-21T08:25:42Z","primary_genres":{"music_genre_list":[{"music_genre":{"music_genre_id":34,"music_genre_parent_id":0,"music_genre_name":"Music","music_genre_name_extended":"Music","music_genre_vanity":"Music"}}]}}

class Track_list {
  Track? _track;

  Track? get track => _track;

  Track_list({
      Track? track}){
    _track = track;
}

  Track_list.fromJson(dynamic json) {
    _track = json['track'] != null ? Track.fromJson(json['track']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_track != null) {
      map['track'] = _track?.toJson();
    }
    return map;
  }

}

/// track_id : 215209212
/// track_name : "Fancy Like"
/// track_name_translation_list : []
/// track_rating : 100
/// commontrack_id : 126911332
/// instrumental : 0
/// explicit : 0
/// has_lyrics : 1
/// has_subtitles : 1
/// has_richsync : 1
/// num_favourite : 76
/// album_id : 44162802
/// album_name : "Country Stuff"
/// artist_id : 13865343
/// artist_name : "Walker Hayes"
/// track_share_url : "https://www.musixmatch.com/lyrics/Walker-Hayes/Fancy-Like?utm_source=application&utm_campaign=api&utm_medium=n%2Fa%3A1409620463618"
/// track_edit_url : "https://www.musixmatch.com/lyrics/Walker-Hayes/Fancy-Like/edit?utm_source=application&utm_campaign=api&utm_medium=n%2Fa%3A1409620463618"
/// restricted : 0
/// updated_time : "2021-07-21T08:25:42Z"
/// primary_genres : {"music_genre_list":[{"music_genre":{"music_genre_id":34,"music_genre_parent_id":0,"music_genre_name":"Music","music_genre_name_extended":"Music","music_genre_vanity":"Music"}}]}

class Track {
  int? _trackId;
  String? _trackName;
  List<dynamic>? _trackNameTranslationList;
  int? _trackRating;
  int? _commontrackId;
  int? _instrumental;
  int? _explicit;
  int? _hasLyrics;
  int? _hasSubtitles;
  int? _hasRichsync;
  int? _numFavourite;
  int? _albumId;
  String? _albumName;
  int? _artistId;
  String? _artistName;
  String? _trackShareUrl;
  String? _trackEditUrl;
  int? _restricted;
  String? _updatedTime;
  Primary_genres? _primaryGenres;

  int? get trackId => _trackId;
  String? get trackName => _trackName;
  List<dynamic>? get trackNameTranslationList => _trackNameTranslationList;
  int? get trackRating => _trackRating;
  int? get commontrackId => _commontrackId;
  int? get instrumental => _instrumental;
  int? get explicit => _explicit;
  int? get hasLyrics => _hasLyrics;
  int? get hasSubtitles => _hasSubtitles;
  int? get hasRichsync => _hasRichsync;
  int? get numFavourite => _numFavourite;
  int? get albumId => _albumId;
  String? get albumName => _albumName;
  int? get artistId => _artistId;
  String? get artistName => _artistName;
  String? get trackShareUrl => _trackShareUrl;
  String? get trackEditUrl => _trackEditUrl;
  int? get restricted => _restricted;
  String? get updatedTime => _updatedTime;
  Primary_genres? get primaryGenres => _primaryGenres;

  Track({
      int? trackId, 
      String? trackName, 
      List<dynamic>? trackNameTranslationList, 
      int? trackRating, 
      int? commontrackId, 
      int? instrumental, 
      int? explicit, 
      int? hasLyrics, 
      int? hasSubtitles, 
      int? hasRichsync, 
      int? numFavourite, 
      int? albumId, 
      String? albumName, 
      int? artistId, 
      String? artistName, 
      String? trackShareUrl, 
      String? trackEditUrl, 
      int? restricted, 
      String? updatedTime, 
      Primary_genres? primaryGenres}){
    _trackId = trackId;
    _trackName = trackName;
    _trackNameTranslationList = trackNameTranslationList;
    _trackRating = trackRating;
    _commontrackId = commontrackId;
    _instrumental = instrumental;
    _explicit = explicit;
    _hasLyrics = hasLyrics;
    _hasSubtitles = hasSubtitles;
    _hasRichsync = hasRichsync;
    _numFavourite = numFavourite;
    _albumId = albumId;
    _albumName = albumName;
    _artistId = artistId;
    _artistName = artistName;
    _trackShareUrl = trackShareUrl;
    _trackEditUrl = trackEditUrl;
    _restricted = restricted;
    _updatedTime = updatedTime;
    _primaryGenres = primaryGenres;
}

  Track.fromJson(dynamic json) {
    _trackId = json['track_id'];
    _trackName = json['track_name'];
    if (json['track_name_translation_list'] != null) {
      _trackNameTranslationList = [];
      json['track_name_translation_list'].forEach((v) {
        _trackNameTranslationList?.add(json.fromJson(v));
      });
    }
    _trackRating = json['track_rating'];
    _commontrackId = json['commontrack_id'];
    _instrumental = json['instrumental'];
    _explicit = json['explicit'];
    _hasLyrics = json['has_lyrics'];
    _hasSubtitles = json['has_subtitles'];
    _hasRichsync = json['has_richsync'];
    _numFavourite = json['num_favourite'];
    _albumId = json['album_id'];
    _albumName = json['album_name'];
    _artistId = json['artist_id'];
    _artistName = json['artist_name'];
    _trackShareUrl = json['track_share_url'];
    _trackEditUrl = json['track_edit_url'];
    _restricted = json['restricted'];
    _updatedTime = json['updated_time'];
    _primaryGenres = json['primary_genres'] != null ? Primary_genres.fromJson(json['primary_genres']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['track_id'] = _trackId;
    map['track_name'] = _trackName;
    if (_trackNameTranslationList != null) {
      map['track_name_translation_list'] = _trackNameTranslationList?.map((v) => v.toJson()).toList();
    }
    map['track_rating'] = _trackRating;
    map['commontrack_id'] = _commontrackId;
    map['instrumental'] = _instrumental;
    map['explicit'] = _explicit;
    map['has_lyrics'] = _hasLyrics;
    map['has_subtitles'] = _hasSubtitles;
    map['has_richsync'] = _hasRichsync;
    map['num_favourite'] = _numFavourite;
    map['album_id'] = _albumId;
    map['album_name'] = _albumName;
    map['artist_id'] = _artistId;
    map['artist_name'] = _artistName;
    map['track_share_url'] = _trackShareUrl;
    map['track_edit_url'] = _trackEditUrl;
    map['restricted'] = _restricted;
    map['updated_time'] = _updatedTime;
    if (_primaryGenres != null) {
      map['primary_genres'] = _primaryGenres?.toJson();
    }
    return map;
  }

}

/// music_genre_list : [{"music_genre":{"music_genre_id":34,"music_genre_parent_id":0,"music_genre_name":"Music","music_genre_name_extended":"Music","music_genre_vanity":"Music"}}]

class Primary_genres {
  List<Music_genre_list>? _musicGenreList;

  List<Music_genre_list>? get musicGenreList => _musicGenreList;

  Primary_genres({
      List<Music_genre_list>? musicGenreList}){
    _musicGenreList = musicGenreList;
}

  Primary_genres.fromJson(dynamic json) {
    if (json['music_genre_list'] != null) {
      _musicGenreList = [];
      json['music_genre_list'].forEach((v) {
        _musicGenreList?.add(Music_genre_list.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_musicGenreList != null) {
      map['music_genre_list'] = _musicGenreList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// music_genre : {"music_genre_id":34,"music_genre_parent_id":0,"music_genre_name":"Music","music_genre_name_extended":"Music","music_genre_vanity":"Music"}

class Music_genre_list {
  Music_genre? _musicGenre;

  Music_genre? get musicGenre => _musicGenre;

  Music_genre_list({
      Music_genre? musicGenre}){
    _musicGenre = musicGenre;
}

  Music_genre_list.fromJson(dynamic json) {
    _musicGenre = json['music_genre'] != null ? Music_genre.fromJson(json['music_genre']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_musicGenre != null) {
      map['music_genre'] = _musicGenre?.toJson();
    }
    return map;
  }

}

/// music_genre_id : 34
/// music_genre_parent_id : 0
/// music_genre_name : "Music"
/// music_genre_name_extended : "Music"
/// music_genre_vanity : "Music"

class Music_genre {
  int? _musicGenreId;
  int? _musicGenreParentId;
  String? _musicGenreName;
  String? _musicGenreNameExtended;
  String? _musicGenreVanity;

  int? get musicGenreId => _musicGenreId;
  int? get musicGenreParentId => _musicGenreParentId;
  String? get musicGenreName => _musicGenreName;
  String? get musicGenreNameExtended => _musicGenreNameExtended;
  String? get musicGenreVanity => _musicGenreVanity;

  Music_genre({
      int? musicGenreId, 
      int? musicGenreParentId, 
      String? musicGenreName, 
      String? musicGenreNameExtended, 
      String? musicGenreVanity}){
    _musicGenreId = musicGenreId;
    _musicGenreParentId = musicGenreParentId;
    _musicGenreName = musicGenreName;
    _musicGenreNameExtended = musicGenreNameExtended;
    _musicGenreVanity = musicGenreVanity;
}

  Music_genre.fromJson(dynamic json) {
    _musicGenreId = json['music_genre_id'];
    _musicGenreParentId = json['music_genre_parent_id'];
    _musicGenreName = json['music_genre_name'];
    _musicGenreNameExtended = json['music_genre_name_extended'];
    _musicGenreVanity = json['music_genre_vanity'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['music_genre_id'] = _musicGenreId;
    map['music_genre_parent_id'] = _musicGenreParentId;
    map['music_genre_name'] = _musicGenreName;
    map['music_genre_name_extended'] = _musicGenreNameExtended;
    map['music_genre_vanity'] = _musicGenreVanity;
    return map;
  }

}

/// status_code : 200
/// execute_time : 0.027354001998901

class Header {
  int? _statusCode;
  double? _executeTime;

  int? get statusCode => _statusCode;
  double? get executeTime => _executeTime;

  Header({
      int? statusCode, 
      double? executeTime}){
    _statusCode = statusCode;
    _executeTime = executeTime;
}

  Header.fromJson(dynamic json) {
    _statusCode = json['status_code'];
    _executeTime = json['execute_time'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['status_code'] = _statusCode;
    map['execute_time'] = _executeTime;
    return map;
  }

}