enum Emoji {
  thumbsUp, // 👍
  thumbsDown, // 👎
  happyFace, // 😃
  sadFace, // 😔
  star, // ⭐
  starryEyes, // 🌟
  handsRaised, // 🙌
  grimacingFace, // 😬
  thinkingFace, // 🤔
  heartEyes, // 😍
  clappingHands, // 👏
  fire, // 🔥
}

//TODO EDIT IT LATER
extension EmojiToImage on Emoji {
  String toImage() {
    switch (this) {
      case Emoji.thumbsUp:
        return 'https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4c4.png';
      case Emoji.thumbsDown:
        return 'https://assets.stickpng.com/thumbs/5a24140d6003f508dd5d5b3d.png';
      case Emoji.happyFace:
        return 'https://assets.stickpng.com/thumbs/5a24140d6003f508dd5d5b3d.png';
      case Emoji.sadFace:
        return 'https://assets.stickpng.com/thumbs/5a24140d6003f508dd5d5b3d.png';
      case Emoji.star:
        return 'https://assets.stickpng.com/thumbs/5a24140d6003f508dd5d5b3d.png';
      case Emoji.starryEyes:
        return 'https://assets.stickpng.com/thumbs/5a24140d6003f508dd5d5b3d.png';
      case Emoji.handsRaised:
        return 'https://assets.stickpng.com/thumbs/5a24140d6003f508dd5d5b3d.png';
      case Emoji.grimacingFace:
        return 'https://assets.stickpng.com/thumbs/5a24140d6003f508dd5d5b3d.png';
      case Emoji.thinkingFace:
        return 'https://assets.stickpng.com/thumbs/5a24140d6003f508dd5d5b3d.png';
      case Emoji.heartEyes:
        return 'https://assets.stickpng.com/thumbs/5a24140d6003f508dd5d5b3d.png';
      case Emoji.clappingHands:
        return 'https://assets.stickpng.com/thumbs/5a24140d6003f508dd5d5b3d.png';
      case Emoji.fire:
        return 'https://assets.stickpng.com/thumbs/5a24140d6003f508dd5d5b3d.png';
    }
  }
}
