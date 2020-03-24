Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9164191C5A
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Mar 2020 22:58:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uw4u6qrv4eX8NF1ZPN5x4/jDPMS8A8Ol65hTYiPttCs=; b=h+YGPTbjT6PV+Q
	dQ8qIL/UNlSHqGrQK+VOcofxK9f2yVIzXGXOPmEu0uhAh4z7a6kCHWH8jXeecjSwpcBKFlJcv2U18
	Zq6IsA5Obr/872xtj/5agmOaGfA4D2srThokUyWuGCK/LhlUN8WFFtb1WQ7BcbzcBhMFoojtnW4Pq
	WUNoCMPP9D6o737XiuNjgGGuO6DJF1DfqGARg/CsE9bkrH4JiCZlFKa0ZRCMqmi1aS48JwhuthUfY
	obnuLqM4BHUna+EjEpCQrRYsQF65pHmkzsoepswaD5a03iAXSlTXKD8Shis3TIULpq7fNu2Cyyo8T
	CM2Ozz94/NmUejCKBalQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGrYg-0001lq-DB; Tue, 24 Mar 2020 21:58:02 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGrYV-0001ku-Fu
 for linux-mtd@lists.infradead.org; Tue, 24 Mar 2020 21:57:52 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 34630240006;
 Tue, 24 Mar 2020 21:57:40 +0000 (UTC)
Date: Tue, 24 Mar 2020 22:57:39 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mason Yang <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v4 2/2] mtd: rawnand: macronix: Add support for deep
 power down mode
Message-ID: <20200324225739.11538d08@xps13>
In-Reply-To: <1584517348-14486-3-git-send-email-masonccyang@mxic.com.tw>
References: <1584517348-14486-1-git-send-email-masonccyang@mxic.com.tw>
 <1584517348-14486-3-git-send-email-masonccyang@mxic.com.tw>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_145751_668704_3E32F999 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: vigneshr@ti.com, bbrezillon@kernel.org, juliensu@mxic.com.tw,
 richard@nod.at, s.hauer@pengutronix.de, yuehaibing@huawei.com,
 linux-kernel@vger.kernel.org, stefan@agner.ch, linux-mtd@lists.infradead.org,
 frieder.schrempf@kontron.de, tglx@linutronix.de, allison@lohutok.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFzb24sCgpNYXNvbiBZYW5nIDxtYXNvbmNjeWFuZ0BteGljLmNvbS50dz4gd3JvdGUgb24g
V2VkLCAxOCBNYXIgMjAyMCAxNTo0MjoyOAorMDgwMDoKCj4gTWFjcm9uaXggQUQgc2VyaWVzIHN1
cHBvcnQgZGVlcCBwb3dlciBkb3duIG1vZGUgZm9yIGEgbWluaW11bQo+IHBvd2VyIGNvbnN1bXB0
aW9uIHN0YXRlLgo+IAo+IE92ZXJsb2FkIG5hbmRfc3VzcGVuZCgpICYgbmFuZF9yZXN1bWUoKSBp
biBNYWNyb25peCBzcGVjaWZpYyBjb2RlIHRvCj4gc3VwcG9ydCBkZWVwIHBvd2VyIGRvd24gbW9k
ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXNvbiBZYW5nIDxtYXNvbmNjeWFuZ0BteGljLmNvbS50
dz4KClRoaXMgd2FzIG5vdCBiYXNlZCBvbiBuYW5kL25leHQgc28gYXMgSSBhcHBsaWVkIGNoYW5n
ZXMgaW4gdGhpcyBmaWxlcwoocGF0Y2hlcyAxIGFuZCAyIG9mIHRoZSBvcmlnaW5hbCBzZXJpZXMp
IHRoaXMgcGF0Y2ggZGlkIG5vdCBhcHBseS4gSQptYW51YWxseSBtZXJnZWQgaXQuCgoKVGhhbmtz
LApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
