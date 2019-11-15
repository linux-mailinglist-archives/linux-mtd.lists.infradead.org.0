Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 721FEFE1FC
	for <lists+linux-mtd@lfdr.de>; Fri, 15 Nov 2019 16:50:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V4xOTOHJkQpIfDhBLUKxJWR0NHqOTz3CdeAFxJXeOJk=; b=YSSUGb5l5H4/J3
	hKAbzFzNFRxdTHPKWR6Q8fBP1Df5FnKFyf0hfGKXawkrrEPWu+poh1yqT0izROU10qxj3fOYPuqeS
	H9bfFe5rTzlllemRhtABuNtCyrePS9TTm7XTwIuoqcPxOSV/KWuT89eU2qtcxv5+HkMLX5SenQYk8
	kAuOEa5wdSzpmkDtk2JmRnZLfATnZ9pqUFnzv3tQt8jn9aXSNqMP5TCuuYV+r66xr5OofBKocYUVp
	UI7vzkdWFmJMe7iOfMSLT+xRYtwZ6OG7TQoSSBl0Knv9bVIzQllJk1jG5B5jCDS3jKl063iL1EmnA
	EQximg8K8EuwdK5cIxdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVdrE-0007fp-55; Fri, 15 Nov 2019 15:50:00 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVdqy-0007av-4h
 for linux-mtd@lists.infradead.org; Fri, 15 Nov 2019 15:49:47 +0000
Received: by mail-io1-xd42.google.com with SMTP id r144so10883085iod.8
 for <linux-mtd@lists.infradead.org>; Fri, 15 Nov 2019 07:49:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=X5NAAOrJ3bS32ihsXavVCESX6DNfXdWEE7aVqtLVIHM=;
 b=T96mBsWswYjsm0w7ecYkWpV509ib/ulk9bHbI0Xwo0rzkePegh7rSfOcmzGbyf8vTc
 lns/HOXyf4/6jOYDVIgZ/CZyIfN2m2y88qVdmXSABhNsP0MXDIRsHGSOOd7wWkwuGiQx
 ehcoBpFXp6INIFq3jwmveina1L3fsWjpzHRhMvlhwo8OJ8Dy4xuFXwCrYZiL/Ja/dmiU
 sEvBblBcC09ww5H/W1Li3rJXBc1TYjMn46kjeboNwYGUiqFeNnjz46iJxarBlBzUTpau
 7EU4w1MkRxjhgPFrJ2/ipVqnuE4IawmENFYcW1JVUg9OFLrEKZvfb77T8+3XayPV4Zd+
 KrHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=X5NAAOrJ3bS32ihsXavVCESX6DNfXdWEE7aVqtLVIHM=;
 b=Rz6UBnodvvtG4JmEZgAcPORnEcA75H2aUTXEa4zOGRv5E5Z5YHJm05V/kLPIhaQufX
 e8k74pG1smkLdisZxwBjlRXtZOdhfmwJS01MjltHzdqm4en+zk9nH106sjqBcxWDCgu+
 lcp3Sn1dQtIvtC5IRMUZfPHH0wnTP7Wbj6Kgpg9ezEeTVmFTQufES0mSzznx9NpMKg4Q
 JjeeK21amWtwIq9zBcSggpSl/dP2pKJQIwTDg926Dr65WpF0N+nA9yyiDfB33W3SP/yi
 aLFanEaGGmHsWS/0GP7exNXKiEUY80RRMrZ8dvfXsCkKsDYYX4Ue0F7RKsROTXxPhbab
 fi0g==
X-Gm-Message-State: APjAAAX81H6mfncdtNSp+JV+Vk7RzRBpeIW4k1UQug0XO13v9qiSvECP
 0xK2hvkg4K34dduh0xH6tk8gHez410EwDUh7nw==
X-Google-Smtp-Source: APXvYqxEj1beLI6zhjihT/lmX2Dk324PGcIr8veC5c+0F/PFQKT7AeNYgljOGh72OwNqCMMZvqGkvMbSAqCkDjgGkjg=
X-Received: by 2002:a5e:8e02:: with SMTP id a2mr1343031ion.269.1573832982053; 
 Fri, 15 Nov 2019 07:49:42 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a02:7749:0:0:0:0:0 with HTTP; Fri, 15 Nov 2019 07:49:41
 -0800 (PST)
From: "Ms.Mary Coster" <info.zennitbankplcnigerian@gmail.com>
Date: Fri, 15 Nov 2019 16:49:41 +0100
Message-ID: <CABHzvrkUQbbmg0Gr7foD3OjAJiY7Fd37=SW3mU=fnOPOcOyNdQ@mail.gmail.com>
Subject: Goodnews, I have deposited your transfer total amount US$4.8million
 Dollars with Money Gram this morning. we agreed you will be receiving it
 $5000.00 daily.
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_074944_225115_131EB2A8 
X-CRM114-Status: UNSURE (  -2.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (moneygram.1820[at]outlook.fr)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (info.zennitbankplcnigerian[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 FILL_THIS_FORM         Fill in a form with personal information
 2.0 FILL_THIS_FORM_LONG    Fill in a form with personal information
 0.3 MONEY_FORM             Lots of money if you fill out a form
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Reply-To: moneygram.1820@outlook.fr
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Attn, Dear
Goodnews, I have deposited your transfer total amount US$4.8million
Dollars with Money Gram this morning. we agreed you will be receiving
it $5000.00 daily.
Contact Mr. John Dave Director, Money Gram to pick up your first Money
Gram payment $5000.00 today.
Contact Person; Mr. John Dave Director, Money Gram,International
Remittance-Benin
Email; moneygram.1820@outlook.fr
Telephone; +229 62619517
Please re-confirm your address to him once again such as listed below.
1.Your Full Name..............................
2.Address.........................
3.Country....................
4.Sex.........................................
5.Your telephone numbers..........................
6. Copy of your ID...........................
This is to avoid sending your funds to wrong person, He is waiting to
hear from you urgent today.
Let me know once you pick up your transfer $5000.00 today.
Finally, Note I have paid for the service fees, but only money will
send to him is $90.00 transfer fee before you can pick up the transfer
today.
Ask, Mr. John Dave Director, Money Gram to give you direction where to
send your transfer fee $90.00 only to Him Immediately so that you can
pick up $5000.00 us dollars today.
Thanks for undrstanding.
Mary Coster
m.coster@aol.com

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
