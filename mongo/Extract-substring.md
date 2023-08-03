```js
db.articles.aggregate(
  {
    $match: {
      _id: {
        $in: ['4480feaa6ac0af38fb61bd45', '3481e26f6ac0af38fb6373b8'],
      },
    },
  },
  {
    $project: {
      user: { name: 1 },
      text: 1,
      partFromText: {
        $substrCP: ['$text', { $indexOfCP: ['$text', 'I'm a needle'] }, 16],
      },
    },
  }
);
