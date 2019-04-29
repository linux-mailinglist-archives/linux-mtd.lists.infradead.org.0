Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2807FDD66
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Apr 2019 10:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=udVbYMR5SyEjpCshdV8eRGBWE0N5FVvqYwGO9aLdFHk=; b=PVBumO5fyFSdQK
	qLPZCOt+KmjaPIX9v3t8/+uwDcx14ZBx0OXZQxQuwSKIIV8QlSfvutuYIVhPXlJyK/6LmKSD+7g/6
	9mdCbGRFloAc00qdCE6EuYhNcunI8CmIi4eSuS/v9ltbI856Dl/9EKTAHUdF6r2yi6KxZcFeqM5rt
	tHWLfc/5rM5aFCdzWCk1x5ODeGSOeAg7sQ+wsBbWSQED2qt5zNnrAaFpm+gzMjWmJAiXLXSxy5xMI
	lu09jPYotbvVpN27S61qmXf/5GRVWhsNFOI0KqOx3h/Gt880p6t8SuXz405FhGiXP635SIIdQTJqX
	OfVD0IpLvdWeRl0bViYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1Lg-0004aW-LP; Mon, 29 Apr 2019 08:09:16 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1LZ-0004aE-8E
 for linux-mtd@lists.infradead.org; Mon, 29 Apr 2019 08:09:10 +0000
X-Originating-IP: 90.88.147.33
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 421F71C0003;
 Mon, 29 Apr 2019 08:08:54 +0000 (UTC)
Date: Mon, 29 Apr 2019 10:08:53 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Helmut Grohne <helmut.grohne@intenta.de>
Subject: Re: [LINUX PATCH v14] mtd: rawnand: pl353: Add basic driver for arm
 pl353 smc nand interface
Message-ID: <20190429100853.028815d6@xps13>
In-Reply-To: <20190425112338.dipgmqqfuj45gx6s@laureti-dev>
References: <1555326613-26739-1-git-send-email-naga.sureshkumar.relli@xilinx.com>
 <20190425112338.dipgmqqfuj45gx6s@laureti-dev>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_010909_446034_83FD551E 
X-CRM114-Status: UNSURE (   5.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>,
 bbrezillon@kernel.org, richard@nod.at, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 nagasureshkumarrelli@gmail.com, michals@xilinx.com,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgSGVsbXV0LAoKSGVsbXV0IEdyb2huZSA8aGVsbXV0Lmdyb2huZUBpbnRlbnRhLmRlPiB3cm90
ZSBvbiBUaHUsIDI1IEFwciAyMDE5CjEzOjIzOjM5ICswMjAwOgoKPiBXaXRob3V0IG11Y2gga25v
d2xlZGdlIG9mIHRoZSBuYW5kIGZyYW1ld29yaywgSSBhdHRlbXB0ZWQgcmV2aWV3aW5nIHRoZQo+
IGNvZGUuIEhvcGUgdGhpcyBoZWxwcy4KCkl0IGRvZXMgaGVscCBhIGxvdCwgdGhhbmtzIGZvciB5
b3VyIHRpbWUhCgpNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
