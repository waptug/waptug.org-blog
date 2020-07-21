---
title: "All you need to know about RSS"
date: 2021-08-31T06:19:43-08:00
description: "10 rss articles Tips for Web Success"
featured_image: "/images/10 rss articles.jpg"
tags: ["10 rss articles"]
---

All you need to know about RSS

What does RSS mean?

RSS may mean three different things. The original RSS (RDF Site Summary RSS 0.9) was developed by Dan Libby for Netscape. After a couple of months, they produced a simpler and easier-to-use version called Rich Site Summary or RSS 0.91. But they later lost interest, leaving it without an owner. As more and more users were using RSS, Winer made an adapted version of RSS 0.91 for Userland, claiming it as his own. Later in 2005, Microsoft developed Really Simple Syndication in relation to its Simple Sharing Extensions.

What is RSS?

RSS is a XML file format for syndicating content and news in the web. It is usually used by websites that constantly need to update their content regularly such as news websites (CNN, BBC and Reuters) and weblogs. Since it essentially gives one’s webpage more traffic, it is now more widely used in marketing, web publications and virus reports. Today, large and small websites alike are usually RSS-enabled.

For example, you’re an avid fan of baseball and you want to share something recent about one of the players. Other than content, you can also attach multimedia files, like videos or pictures. By using RSS feeds, other Internet users subscribed to RSS-enabled sites can read your “headline” for free. They can also track for changes and updates using news aggregators, which will be discussed later on.

How does RSS work?

To be able to use RSS, you first have to download a software (content management system), by which XML format can be read. The title and, excerpt of the article, and a link to the full article are shown. Other than just text, you can also insert multimedia files in RSS feeds like pictures, videos, mp3s and others. Broadcatching, picturecasting, photocasting, and podcasting are some features you can incorporate into your feed, but will not be discussed in this article.

For users to access a RSS feed, they need to use an aggregator or a feed reader. An aggregator searches for updates on RSS-enabled webpages then displays it. It can either be a standalone program or a web browser extension, depending on your operating system. Search engines for web content broadcasted over RSS feed are also available such as Plazoo and Feedster.

How can I make an RSS feed?

It is definitely easier to make an RSS feed if you know HTML. If not, you could sign up for a blog (there are hundreds out there), some of which automatically creates RSS. If you’re using a personal webpage building system, you need to understand more about RSS. Making an RSS feed from scratch is relatively easy. 

A RSS feed should always contain an “item”, whichever version of RSS you might use. If you wrote about a recent event in your city or a book review, the contents of this article can form an item. An item is essentially composed of three things: a title, its description, and link (where they can find your webpage). In choosing a title and description, use something that will describe the web content best. Although it will be easier for you, it doesn’t follow that the title tag of your webpage and the item title are the same. 

An item will look like HTML tags. First, you need to put an opening channel tag that defines it as an XML file. Then, label the tag as an item by putting <item> after the channel tag. After this, you can now insert the three essentials of your item: <title>, <description>, and <link>. Just like HTML, we need to close the tag by writing </channel> and </rss> at the bottom. 

An RSS feed that contains multiple tags looks like this:

<?xml version="1.0"?> 
<rss version="2.0">

<channel>

<item>
<title>Anne Rice’s Belinda: A Book Review</title>
<description> If you haven’t read any Anne Rice books yet, you will be greeted with shocking romantic relationships forming between unlikely characters… </description>
<link> http://allaboutbookreviews.com/belinda </link>

<item>
<title>Harry Potter IV: Darker with More Deaths</title>
<description> The recently released Harry Potter installation has proved dark for its younger readers…</description>
<link> http://allaboutbookreviews.com/harrypotterandthehalfbloodprince </link>

</channel>

</rss>


Now, if you’re still having a hard time understanding these tags, look for HTML tags tutorial to further grasp the concept. Have fun!

