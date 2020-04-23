Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 959CD1B5692
	for <lists+linux-mtd@lfdr.de>; Thu, 23 Apr 2020 09:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7kqRqqdVssoPty2pLFWFhjFvdksncxG5MoXSMOFjW0s=; b=jRBEv42BlBJlI6
	g1RvNrs2ZB6HZbz4Q3hSD4jgarhO7NkwrKe+ZAycT/DqQhb8xRw5COPa0rHnX+7aJd3yWwp/EW4Nh
	Jnst1ZWap7EZU5p1K2rQIOkKPrIG2qzDeQ7i4Zl/XqdkH7X+/49dogKhDZ3eaCDeLfkCCE0dGt2QN
	QHj5plfvmYlhXvNixJ3rzKe7cxYMoeNU24dHkeYdbhD89TY0m75bs0jd8RYDSzjSBqClXnCGjBjGs
	LyXCBKcceRDI59MRcs71DX3KgEQLHBd61dYBqnkQu7UGGpmNUCZcJ+8Gp3P3NEYjxxZYp4sUJ1K1c
	Sk1g+Ie36bvMDmdzCTAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRWeD-0000QG-Mk; Thu, 23 Apr 2020 07:51:49 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRWe5-0000MO-IC
 for linux-mtd@lists.infradead.org; Thu, 23 Apr 2020 07:51:43 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id E9E6920006;
 Thu, 23 Apr 2020 07:51:32 +0000 (UTC)
Date: Thu, 23 Apr 2020 09:51:31 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH] mtd: rawnand: Take check_only into account
Message-ID: <20200423095131.4e3de8b3@xps13>
In-Reply-To: <20200418194217.1016060-1-boris.brezillon@collabora.com>
References: <20200418194217.1016060-1-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_005141_735883_E49FB7A0 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lucas Stach <dev@lynxeye.de>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 Stefan Agner <stefan@agner.ch>, Marek Vasut <marek.vasut@gmail.com>,
 Liang Yang <liang.yang@amlogic.com>, linux-mtd@lists.infradead.org,
 Han Xu <han.xu@nxp.com>, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBTYXQsIDE4IEFwcgoyMDIwIDIxOjQyOjE3ICswMjAwOgoKPiAtPmV4ZWNfb3Ao
KSBpcyBwYXNzZWQgYSBjaGVja19vbmx5IGFyZ3VtZW50IHRoYXQgZW5jb2RlcyB3aGVuIHRoZSAg
Cj4gY29udHJvbGxlciBzaG91bGQganVzdCBjaGVjayB3aGV0aGVyIHRoZSBvcGVyYXRpb24gaXMg
c3VwcG9ydGVkIG9yIG5vdAo+IHdpdGhvdXQgZXhlY3V0aW5nIGl0LiBTb21lIGNvbnRyb2xsZXJz
IHNpbXBseSBpZ25vcmUgdGhpcyBhcmd1bWVudHMsCj4gb3RoZXJzIGRvbid0IGJ1dCBrZWVwIG1v
ZGlmeWluZyBzb21lIG9mIHRoZSByZWdpc3RlcnMgYmVmb3JlIHJldHVybmluZy4KPiBMZXQncyBm
aXggYWxsIHRob3NlIGRyaXZlcnMuCgpQZXJmZWN0LCBJIG5lZWRlZCB0aGlzIG9uZSwgdGhhbmtz
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNv
bGxhYm9yYS5jb20+Cj4gLS0tCgpNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBs
aXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRk
Lwo=
