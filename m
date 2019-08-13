Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEC98C18F
	for <lists+linux-mtd@lfdr.de>; Tue, 13 Aug 2019 21:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gkkMUUUxRYEWyFEYGKKIIXxqFW6uWVWx6rZxK4dCKQs=; b=kGGljWj94CRl98
	iP49bDVhMngVQ8bUum1eSbGPypKJVaarAU0izAWvNMDGQiGz3ZTDA2vx/MvaTbrx0gguaIxVmnxLA
	gVZLL57QxFaNVR/13hzItMIq/PDREyc/lrzY8yiQzwVmt9WStCLlD/OkDyExZiY6FApcvBuRXsoye
	264NjIjrE5oGyG1LGluqEtEkSi7Zu+EgL0rU1OjjrYUWdsMZe4OvaxDXg5H/DeZmC1Wge/P5gR/2B
	I4KDidMXwWYWU8vJNxOiMDgmp/nYnh+17DpD7dhS8uKcF1rgwa5vP5i5qYWiVP4PVKLUC+5GcBkBT
	0VhKxJqwEigY8WTFgFbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxcY8-0004YR-Mu; Tue, 13 Aug 2019 19:33:40 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxcY0-0004Y4-Mm
 for linux-mtd@lists.infradead.org; Tue, 13 Aug 2019 19:33:34 +0000
Received: by mail-ot1-x32e.google.com with SMTP id w4so1714882ote.11
 for <linux-mtd@lists.infradead.org>; Tue, 13 Aug 2019 12:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=78VvhYPjyRkvhPhQ303L6m3ATGhYIdR67XF/htXeMks=;
 b=I+kyKo60vpCM3EoFdppeDrOTI/D3DG+Q4Jgzbrjge2Pu9Qnhp5OnNWNbKmoXNgjYKY
 36PJf/8k5AjcXb1Q7Tr8DCvU2rPq1OIWlobb3tRVzJGCd+96wXNVh9A8Fbtl2RrmhPMp
 CwaCuia40sTct1kSffC5FQHeasXz/zI1ToYsIO4IewlgyDT0RV0/Yg8n7xE5xJ5PeS68
 x6gejwcwDM+qSXzqMqRiPdFWeGAIiFfbi95zZv8SRe4bOd/VI2+OTSfPY7odqYjXMb7q
 ZXIVxzGUPXZ5ZDxFEX8ylmhI46SlU8eV0BeZNNsmhrFXlWw/4NgFGnC0iRIM9wPpeSbG
 EXZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=78VvhYPjyRkvhPhQ303L6m3ATGhYIdR67XF/htXeMks=;
 b=umlAZSvM+yZzsJFrurfIQo4NUwc9ZWiHWxyrNT2+aTAZGDPSHoMXB9LcYx8gW0G7rQ
 ubdwiE0rrs9//aj97S+72KtEE8zz6uTOT9svEdkpPsxMGFqo6yyTFj6tDaRKyivnfBF3
 fTxD1L3mJ6FVXCinkqYrfXixLkNA4v4hjMHEPglcKs+6RUx1sLGEY33gyQBXye4aYSjA
 UCc0FUjz+C/9sQF4rorige0IXW2GfKWajvEeAYwSNb7a44P1/Bb5ASbw+JLzXbywzqWR
 RS1tQeS06JbJeEHjR8GN7NeZq398U+2xB/6JGDmH9UwCAfZzDkU7sYOqTa8ZazkXufEt
 kY6Q==
X-Gm-Message-State: APjAAAWHFwkZHBb9+0r7n9h1DCbGqZeXLLRFT3sCWxHfCcnsbAexEmDz
 sdCL1ZG3NOAwKsCnVThjNbm6uioThdVzmFftX3JFHiYjJLc=
X-Google-Smtp-Source: APXvYqzddyI/fRdagOOc7AutouaryteRWLKzMk/EfiWJtfbC/4FTMwQO5drDIEPT/EP7XiGfeDP22xm/DmWskt6ia9M=
X-Received: by 2002:a5d:8249:: with SMTP id n9mr40494819ioo.14.1565724811797; 
 Tue, 13 Aug 2019 12:33:31 -0700 (PDT)
MIME-Version: 1.0
References: <AM6PR04MB496741DA4839DC07450F3E3997150@AM6PR04MB4967.eurprd04.prod.outlook.com>
 <CAFLxGvwZ_85eR5Qkjka4CyDOAP_jw-hpk7WwttbAzjLFS4MavQ@mail.gmail.com>
 <CA+EcR23V1nP9d6iYysT6vR+n8-BRnU-vursaxvcGB1LdBy+8NQ@mail.gmail.com>
 <411166061.63863.1565639737497.JavaMail.zimbra@nod.at>
In-Reply-To: <411166061.63863.1565639737497.JavaMail.zimbra@nod.at>
From: Han Xu <xhnjupt@gmail.com>
Date: Tue, 13 Aug 2019 14:33:20 -0500
Message-ID: <CA+EcR23WqQGJQ2AD1daTnw7vR5+bfhEokDwEX1UyumoJfTt74Q@mail.gmail.com>
Subject: Re: 5.2.0-rc1 UBIFS bad unlock balance
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_123332_748302_021E3230 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xhnjupt[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Han Xu <han.xu@nxp.com>, linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgMjo1NSBQTSBSaWNoYXJkIFdlaW5iZXJnZXIgPHJpY2hh
cmRAbm9kLmF0PiB3cm90ZToKPgo+IC0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0KPiA+
PiBJIHNlZSB0aGUgYnVnLCB0aGFua3MgYSBsb3QgZm9yIHJlcG9ydGluZyEKPiA+PiBCdXQgaXQg
aXMgbm90IGluIDUuMi1yYzEsIHRoZSBiYWQgY29tbWl0IGlzIHNvIGZhciBvbmx5IGluIGxpbnV4
LW5leHQuCj4gPgo+ID4gUGluZywgYW55IGZpeGluZyBwbGFucz8KPgo+IEh1aD8gVGhlIGJhZCBj
b21taXQgd2FzIGRyb3BwZWQuIEFyZSB5b3Ugc3RpbGwgc2VlaW5nIHRoaXMgb24gTGludXMnIHRy
ZWU/Cj4gTWF5YmUgc29tZXRoaW5nIGVsc2UgaXMgYmFkLgo+CgpTaG91bGQgYmUgcmVsYXRlZCB0
byB0aGlzIGNvbW1pdC4gU2VlbXMgd29ya2luZyBmaW5lIGFmdGVyIHJldmVydGluZyB0aGUgcGF0
Y2guCgpjb21taXQgODAwOWNlOTU2YzNkMjgwMjJhZjZiMTIyZTUwMjEzYWQ4MzBmYzkwMgpBdXRo
b3I6IFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2QuYXQ+CkRhdGU6ICAgV2VkIE1heSAx
NSAyMTo1MjozNCAyMDE5ICswMjAwCgogICAgdWJpZnM6IERvbid0IGxlYWsgb3JwaGFucyBvbiBt
ZW1vcnkgZHVyaW5nIGNvbW1pdAoKPiBUaGFua3MsCj4gLy9yaWNoYXJkCgoKCi0tIApTaW5jZXJl
bHksCgpIYW4gWFUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
