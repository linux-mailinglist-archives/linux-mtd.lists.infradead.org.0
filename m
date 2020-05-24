Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737091E0276
	for <lists+linux-mtd@lfdr.de>; Sun, 24 May 2020 21:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AInJfrGawtZxEqy1ZQ0l59lEwTxGXaLvMKwTScKmH+w=; b=LKYIgCyUsgEuz8
	34DSnjBfvs2Zuzu8IEfkzwd0cOz2wLB1MN4qvgeu3CKgfuWk8IUd6ls5HEn+wzGNKkBkWsmTm4SHU
	5zN4nwhlJo63ZGYxAgrqc8FMQ+6oFY5eUQfMYmgB/1j2aRWaEhdOYyRUHY84NtrC8mZSJRZbO2i46
	XU9kOFE5O+JvLWqqLbGutkoK0e0Q2KvPhWURP1zp5eTBrbzO57VRYBiwA6GEN7MYrxY3Oa6bJ1I2G
	VfG2cS20nX5X1qydKWJj2lh+jRB2Y2pWSZE2PDlqXGNfpK6KD27vhM67fke2qlfS6k0kr7E01Qarm
	FngUh/zo58GMczFmqUUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwHE-0007Kv-N9; Sun, 24 May 2020 19:27:16 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcw7W-0002D2-9R
 for linux-mtd@lists.infradead.org; Sun, 24 May 2020 19:17:16 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id AA8A9FF803;
 Sun, 24 May 2020 19:17:10 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?utf-8?q?=C3=81lvaro_Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>,
 computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
Subject: Re: [PATCH v4 2/2] mtd: rawnand: brcmnand: improve hamming oob layout
Date: Sun, 24 May 2020 21:17:09 +0200
Message-Id: <20200524191709.29417-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200512075733.745374-3-noltari@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: d00358d7a1c50718232799e1ee10955bcd73795a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_121714_505757_0C53B8C9 
X-CRM114-Status: UNSURE (   5.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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

T24gVHVlLCAyMDIwLTA1LTEyIGF0IDA3OjU3OjMzIFVUQywgPT91dGYtOD9xPz1DMz04MWx2YXJv
X0Zlcm49QzM9QTFuZGV6X1JvamFzPz0gd3JvdGU6Cj4gVGhlIGN1cnJlbnQgY29kZSBnZW5lcmF0
ZXMgOCBvb2Igc2VjdGlvbnM6Cj4gUzEJMS01Cj4gRUNDCTYtOAo+IFMyCTktMTUKPiBTMwkxNi0y
MQo+IEVDQwkyMi0yNAo+IFM0CTI1LTMxCj4gUzUJMzItMzcKPiBFQ0MJMzgtNDAKPiBTNgk0MS00
Nwo+IFM3CTQ4LTUzCj4gRUNDCTU0LTU2Cj4gUzgJNTctNjMKPiAKPiBDaGFuZ2UgaXQgYnkgbWVy
Z2luZyBjb250aW51b3VzIHNlY3Rpb25zOgo+IFMxCTEtNQo+IEVDQwk2LTgKPiBTMgk5LTIxCj4g
RUNDCTIyLTI0Cj4gUzMJMjUtMzcKPiBFQ0MJMzgtNDAKPiBTNAk0MS01Mwo+IEVDQwk1NC01Ngo+
IFM1CTU3LTYzCj4gCj4gU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxu
b2x0YXJpQGdtYWlsLmNvbT4KCkFwcGxpZWQgdG8gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIv
c2NtL2xpbnV4L2tlcm5lbC9naXQvbXRkL2xpbnV4LmdpdCBuYW5kL25leHQsIHRoYW5rcy4KCk1p
cXVlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
