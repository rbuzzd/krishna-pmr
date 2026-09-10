# Krishna PMR — Hugo + Felmdrav

Сайт Общества сознания Кришны в Приднестровье на Hugo с темой Felmdrav.

## Стек

- Hugo
- Felmdrav — Bootstrap 5, MIT
- RU / EN
- GitHub Pages
- Decap CMS
- YouTube для видео

Felmdrav требует современную версию Hugo; текущая версия темы рассчитана на Hugo >= 0.146.0.

## Установка темы

```bash
chmod +x scripts/install-theme.sh
./scripts/install-theme.sh
```

Скрипт клонирует официальную тему:

https://github.com/geschke/hugo-felmdrav

После этого:

```bash
hugo server
```

Открыть http://localhost:1313/

## Структура

- Новости
- Лекции
- События
- Фестивали
- Учителя
- Видео / YouTube
- Галерея
- О нас

Главная страница уже подготовлена под Felmdrav: приветственный блок, ближайшие события, последние новости, лекции/видео и информация о сообществе.

## Decap CMS

Перед публикацией нужно заменить `YOUR_GITHUB_USERNAME/krishna-pmr` в `static/admin/config.yml` и настроить аутентификацию GitHub для Decap CMS.

## GitHub Pages

Workflow находится в `.github/workflows/hugo.yaml`. После публикации репозитория включите GitHub Pages с источником `GitHub Actions`.

## Главная страница

Главная построена на нативных Content Blocks Felmdrav: `hero-centered`, `features-cards` и `featured-posts`. Это позволяет сохранять внешний вид в теме, а контент — в отдельных Markdown-файлах. Felmdrav документирует такой подход как основной способ композиции главной страницы.

Структура:

1. Hero — приветствие и основные кнопки.
2. Три направления — программа, лекции, видео.
3. Ближайшие события.
4. Последние новости.
5. Новые лекции.
6. Фестивали, учителя и информация о сообществе.

Для RU и EN блоки хранятся отдельно в `content/ru/blocks` и `content/en/blocks`.

### Важно про Decap CMS

Decap CMS действительно может редактировать Hugo-контент, но GitHub backend требует корректно настроенной аутентификации. Простого `repo: owner/repo` недостаточно для production. Официальная документация Decap описывает GitHub OAuth proxy, Git Gateway и другие варианты.
