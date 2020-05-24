Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A424B1E0292
	for <lists+linux-mtd@lfdr.de>; Sun, 24 May 2020 21:32:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OK/sODVV80XER6sZqO+ONt+y8WdGl8mDjksqPlfeB0=; b=uR4zj5Is60CIbh
	hhBSULIJl/qufiGjGZPQzfGWnSYCelB0M7UBvgyl4tZWxREF9DA1IOEq8DzGQehzNvZJ/puaywNy3
	iQjCrlyVeKyAJoyf/auBAYYnEXU8MayftGMa1UpahtA2vE1/RWDhWl5NGr38Ij5qj1IHqOlVCZ+yZ
	/PC2ZvXXioCb6tpqvO7tOOHWoKkAxlUcll0AU2EdQwKHjutbIxlrwhDQKwvijO5L80EwFYZWDjfYG
	Tuc6J4XjW5usv6c//iQKfAHZH85rKIdxp5wU/X24eJDI3jIRue7sQWPtqzjxghyejElZh1zlPW91o
	r5l/6nsSFlPBAORbrR2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwLm-0005AY-EH; Sun, 24 May 2020 19:31:58 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcwG0-0006WR-Pl
 for linux-mtd@lists.infradead.org; Sun, 24 May 2020 19:26:03 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id F4107240002;
 Sun, 24 May 2020 19:25:56 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?utf-8?q?=C3=81lvaro_Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>,
 computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
Subject: Re: [PATCH v4 4/5] dt: bindings: brcmnand: add v2.1 and v2.2 support
Date: Sun, 24 May 2020 21:25:50 +0200
Message-Id: <20200524192550.4559-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522121524.4161539-5-noltari@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 191dd7b0d8899e3fc0c4c6627a244a5fad8f2cfb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_122601_002246_42FA9361 
X-CRM114-Status: UNSURE (   5.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDIwLTA1LTIyIGF0IDEyOjE1OjIzIFVUQywgPT91dGYtOD9xPz1DMz04MWx2YXJv
X0Zlcm49QzM9QTFuZGV6X1JvamFzPz0gd3JvdGU6Cj4gQWRkZWQgYnJjbSxicmNtbmFuZC12Mi4x
IGFuZCBicmNtLGJyY21uYW5kLXYyLjIgYXMgcG9zc2libGUgY29tcGF0aWJsZQo+IHN0cmluZ3Mg
dG8gc3VwcG9ydCBicmNtbmFuZCBjb250cm9sbGVycyB2Mi4xIGFuZCB2Mi4yLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Cj4g
QWNrZWQtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPgoKQXBwbGll
ZCB0byBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9tdGQv
bGludXguZ2l0IG5hbmQvbmV4dCwgdGhhbmtzLgoKTWlxdWVsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24g
bWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbXRkLwo=
