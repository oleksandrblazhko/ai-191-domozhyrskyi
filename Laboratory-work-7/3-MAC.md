1. Створіть у БД структури даних, необхідні для роботи повноважного керування доступом.

[![Screenshot-2023-12-26-102633.png](https://i.postimg.cc/9FXQ4prs/Screenshot-2023-12-26-102633.png)](https://postimg.cc/nM5JgqK1)

[![Screenshot-2023-12-26-102734.png](https://i.postimg.cc/MKsK1QBH/Screenshot-2023-12-26-102734.png)](https://postimg.cc/nCDJJM0f)

[![Screenshot-2023-12-26-102756.png](https://i.postimg.cc/mgJL5W8G/Screenshot-2023-12-26-102756.png)](https://postimg.cc/VJ9PJTx7)

2. Додайте до таблиці з даними стовпчик, який буде зберігати мітки конфіденційності. Визначте для кожного рядка таблиці мітки конфіденційності, які будуть різнитися (для кожного рядка своя мітка).

[![Screenshot-2023-12-26-102823.png](https://i.postimg.cc/cJ3xqkbt/Screenshot-2023-12-26-102823.png)](https://postimg.cc/GBcwGKrb)

[![Screenshot-2023-12-26-102851.png](https://i.postimg.cc/PxzdJpht/Screenshot-2023-12-26-102851.png)](https://postimg.cc/N9M3P05V)

3. Визначте для користувача його рівень доступу.

[![image.png](https://i.postimg.cc/43XY5gdN/image.png)](https://postimg.cc/tsmRq8WL)

4. Створіть нову схему даних, назва якої співпадає з назвою користувача.

[![Screenshot-2023-12-26-102928.png](https://i.postimg.cc/tJqpxqCF/Screenshot-2023-12-26-102928.png)](https://postimg.cc/XGzRM05v)

5. Створіть віртуальну таблицю, назва якої співпадає з назвою реальної таблиці та яка забезпечує SELECT-правила повноважного керування доступом для користувача.

[![Screenshot-2023-12-26-103819.png](https://i.postimg.cc/h4sSqdps/Screenshot-2023-12-26-103819.png)](https://postimg.cc/V5Syqdy0)

6. Створіть INSERT/UPDATE/DELETE-правила повноважного керування доступом для користувача.

[![Screenshot-2023-12-26-104158.png](https://i.postimg.cc/3Nt7jsdV/Screenshot-2023-12-26-104158.png)](https://postimg.cc/y33wsrhy)

[![Screenshot-2023-12-26-104803.png](https://i.postimg.cc/HkVWzk02/Screenshot-2023-12-26-104803.png)](https://postimg.cc/YvBwqksG)

[![Screenshot-2023-12-26-104855.png](https://i.postimg.cc/RV0vCZYB/Screenshot-2023-12-26-104855.png)](https://postimg.cc/8sx2tNDK)

[![Screenshot-2023-12-26-105208.png](https://i.postimg.cc/3JbYkHMD/Screenshot-2023-12-26-105208.png)](https://postimg.cc/w7JSrZj6)

7. Встановіть з’єднання з СКБД від імені нового користувача.
8. Від імені нового користувача перевірте роботу механізму повноважного керування, виконавши операції SELECT, INSERT, UPDATE, DELETE

[![Screenshot-2023-12-26-105601.png](https://i.postimg.cc/mgv4SNgL/Screenshot-2023-12-26-105601.png)](https://postimg.cc/75njHzzd)

[![Screenshot-2023-12-26-105804.png](https://i.postimg.cc/3x47pb7f/Screenshot-2023-12-26-105804.png)](https://postimg.cc/mPs0WjP7)

[![Screenshot-2023-12-26-110008.png](https://i.postimg.cc/3w2Tf4kg/Screenshot-2023-12-26-110008.png)](https://postimg.cc/GB3VHpJ2)

[![Screenshot-2023-12-26-110056.png](https://i.postimg.cc/d1vKbsCg/Screenshot-2023-12-26-110056.png)](https://postimg.cc/f3HFXhBv)

[![Screenshot-2023-12-26-110122.png](https://i.postimg.cc/Px4khgzJ/Screenshot-2023-12-26-110122.png)](https://postimg.cc/1nfdrYd1)