Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D6711266A
	for <lists+linux-mtd@lfdr.de>; Wed,  4 Dec 2019 10:05:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKlS8VIIPQGx4TYVSFQvhDsJW4qX+21GbjDzazqQnAE=; b=EgbbtwOBIdjzCZ
	QMI/0ndlipuYIxsClGpTxBYkW0VZ+yiJ/kTDyGKVrBfTD75OosBCtkqjC1ph1aKyrF6OOixb+jkHO
	hCSTOWKSDtJw2E005GX3K8NQXXkawFRHVvgksyiSAvrASYThg0+iDLrJKj6L80Ocmq6zSYckHb11Z
	uWsMl5KKEbpMQzZAgLWHoqnrMkiYcvaPb6gbKHdUyB8cZVJAl+nYCU+DuQ0uAzkvQ+ULSu1xbQVg1
	oU/a3jgEtm6GOQtWK/mSGlrb25Qumy9ho0yF8VYzHSWNRvsvqndcY4DoCEJPtHX8apyQb0OaDkn2m
	dgXduXrIPQCrCxelCKVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQbB-00071M-4x; Wed, 04 Dec 2019 09:05:29 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQb0-00070l-0M
 for linux-mtd@lists.infradead.org; Wed, 04 Dec 2019 09:05:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id B2B2E60B302D;
 Wed,  4 Dec 2019 10:05:16 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id wBeuTBKAYkpa; Wed,  4 Dec 2019 10:05:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 32AED6126B4B;
 Wed,  4 Dec 2019 10:05:15 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Cz8CAp_kOJsR; Wed,  4 Dec 2019 10:05:15 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id B283B60B302D;
 Wed,  4 Dec 2019 10:05:14 +0100 (CET)
Date: Wed, 4 Dec 2019 10:05:14 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <944646339.106336.1575450314655.JavaMail.zimbra@nod.at>
In-Reply-To: <20191204071746.kfdflui4ziladmjg@pengutronix.de>
References: <MN2PR02MB5727000CBE70BAF31F60FEE4AF420@MN2PR02MB5727.namprd02.prod.outlook.com>
 <20191203084134.tgzir4mtekpm5xbs@pengutronix.de>
 <MN2PR02MB57272E3343CA62ADBA0F97E5AF420@MN2PR02MB5727.namprd02.prod.outlook.com>
 <614898763.105471.1575364223372.JavaMail.zimbra@nod.at>
 <CALgLF9KPAk_AsecnTMmbdF5qbgqXe7HNOrNariNVbhSr6FVN2g@mail.gmail.com>
 <20191203104558.vpqav3oxsydoe4aw@pengutronix.de>
 <CAFLxGvywFxSrDLLGnLDW6+rMLVUA9Yoi=3sn7wdxqWMydy-w0g@mail.gmail.com>
 <20191204071746.kfdflui4ziladmjg@pengutronix.de>
Subject: Re: ubifs mount failure
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: ubifs mount failure
Thread-Index: 9APKbxAFaVpw2zMCYjv1IuV9dZ0ZGw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_010518_206724_9F2DBDD0 
X-CRM114-Status: UNSURE (   3.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Richard Weinberger <richard.weinberger@gmail.com>,
 siva durga paladugu <siva.durga.paladugu@xililnx.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Michal Simek <michals@xilinx.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 naga suresh kumar <nagasureshkumarrelli@gmail.com>,
 linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIlNhc2NoYSBIYXVlciIgPHMu
aGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4+IE9oLCBsb29rcyBnb29kISBUaGFua3MgZm9yIGZpeGlu
ZywgU2FzY2hhIQo+IAo+IFdpbGwgeW91IGFwcGx5IHRoaXMgb25lPyBPdGhlcndpc2UgSSByZXNl
bmQgd2l0aCB0aGUgcHJvcGVyIHRhZ3MgYWRkZWQuCgpKdXN0IGNoZWNrZWQgaW4gcGF0Y2h3b3Jr
LiBJdCBpcyB1bmFibGUgdG8gZGV0ZWN0IHRoZSBwYXRjaCwgcGxlYXNlIHJlc2VuZC4gOi0pCgpU
aGFua3MsCi8vcmljaGFyZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
