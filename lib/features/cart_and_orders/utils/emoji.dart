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

extension EmojiToImage on Emoji {
  String toImage() {
    switch (this) {
      case Emoji.thumbsUp:
        return 'https://i.ibb.co/5RYSMnv/pngwing-com-10.png';
      case Emoji.thumbsDown:
        return 'https://i.ibb.co/BqdKDjG/pngwing-com-9.png';
      case Emoji.happyFace:
        return 'https://i.ibb.co/SKcHZvR/pngwing-com-5.png';
      case Emoji.sadFace:
        return 'https://i.ibb.co/f1mLF77/pngwing-com-4.png';
      case Emoji.star:
        return 'https://i.ibb.co/txqZNXV/pngwing-com-6.png';
      case Emoji.starryEyes:
        return 'https://i.ibb.co/YPv41XP/pngwing-com-1.png';
      case Emoji.handsRaised:
        return 'https://assets.stickpng.com/thumbs/5a24140d6003f508dd5d5b3d.png';
      case Emoji.grimacingFace:
        return 'https://i.ibb.co/qsSQ25s/pngwing-com-11.png';
      case Emoji.thinkingFace:
        return 'https://i.ibb.co/64KZpVq/pngwing-com.png';
      case Emoji.heartEyes:
        return 'https://i.ibb.co/ypdZM5Z/pngwing-com-2.png';
      case Emoji.clappingHands:
        return 'https://i.ibb.co/F70QFDc/pngwing-com-7.png';
      case Emoji.fire:
        return 'https://i.ibb.co/0hxjn2b/pngwing-com-8.png';
    }
  }
}
