Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC5117E0ED
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Mar 2020 14:16:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVRm7d0A9Zlw0Vt/j1u3lFQX043XD4LDPCyg6FuVfpI=; b=YANBsPy8Tbx26Z
	W8lWYUafH2U0ftmlFX27Q9Ot0pGxkS3zS6BVXWKHq47kdcbbKc//Un1zyspaeIhAMP2ov2mKetU8F
	Fzurqg6UZH4HHkw1954X9zJfp/bAfb7sKVp6sJFV7VAzo+MmML/ki6Sb76u/VwLu/DlgkNTyzReVz
	gjljq1pKx/T5ORKNJPlzyWYyuyTgQ/NnPIocxVP9PBhXiLZQt/+ThnRHJuOgKSgDWgrVTQzDtx1Ft
	VuPugrkz3uPO2wnakQbqEcUkXB+047Z+oOu9oP4bEPJpoWLub6HRwY82M4/vdiknRcRtSJpHWuKuX
	c5z9n2z7OTcV72L3x0bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBIGE-00010k-8n; Mon, 09 Mar 2020 13:15:58 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBIG9-00010X-QX
 for linux-mtd@bombadil.infradead.org; Mon, 09 Mar 2020 13:15:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=0uNVZQSKN/Z+keWc/UiKBJaE7wunZBwgGha5D2Q0oyI=; b=gLotY6Q5q/6lSux//qHvEhAzmb
 6PV5i51+KYMeAKlu98MBkblW8orrAv9h9uKa+7VasiN7enha46nspeMV/hyV6x2lUQx171h9vnkx6
 GTGzoILvR41fOVM5grQMQ+QgS7jlIyIlz0m/jh8B+rPPelZfpm99X0KkEziPE4yn8KXOfJWpMkidI
 aWmExPKOQ4qapmruSa5LK+2t4yet0C8Tfp6xFV2Ru1Hai/jWMDqGcgKCstcZmEFvsFUI9O7SQpR6r
 scxt/n4REW/B5XhY7v1tWO+yvK8RLDCml+YvWizPQyEBXJEYWjtsrtFSB00Hgj6DDQ9RkU6pZg44c
 y6tgZ4oQ==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBIFG-0005Gx-7G
 for linux-mtd@lists.infradead.org; Mon, 09 Mar 2020 13:15:51 +0000
Received: from xps13 (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 0C204100007;
 Mon,  9 Mar 2020 13:14:04 +0000 (UTC)
Date: Mon, 9 Mar 2020 14:14:03 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mason Yang <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v3 0/4] mtd: rawnand: Add support Macronix Block
 Portection & Deep Power Down mode
Message-ID: <20200309141403.241e773e@xps13>
In-Reply-To: <1583220084-10890-1-git-send-email-masonccyang@mxic.com.tw>
References: <1583220084-10890-1-git-send-email-masonccyang@mxic.com.tw>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: vigneshr@ti.com, bbrezillon@kernel.org, juliensu@mxic.com.tw,
 richard@nod.at, s.hauer@pengutronix.de, yuehaibing@huawei.com,
 linux-kernel@vger.kernel.org, stefan@agner.ch, rfontana@redhat.com,
 linux-mtd@lists.infradead.org, frieder.schrempf@kontron.de, tglx@linutronix.de,
 allison@lohutok.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFzb24sCgpNYXNvbiBZYW5nIDxtYXNvbmNjeWFuZ0BteGljLmNvbS50dz4gd3JvdGUgb24g
VHVlLCAgMyBNYXIgMjAyMCAxNToyMToyMAorMDgwMDoKCj4gSGksCj4gCj4gQ2hhbmdlbG9nCj4g
Cj4gdjM6Cj4gcGF0Y2ggbmFuZF9sb2NrX2FyZWEvbmFuZF91bmxvY2tfYXJlYS4KPiBmaXhlZCBr
YnVpZHRlc3Qgcm9ib3Qgd2FybmluZ3MgYW5kIHJldmlld2VyJ3MgY29tbWVudHMuCgpJIGtub3cg
aXQgaXMgcGFpbmZ1bCBmb3IgdGhlIGNvbnRyaWJ1dG9yIGJ1dCBJIHJlYWxseSBuZWVkIG1vcmUg
ZGV0YWlscwppbiB0aGUgY2hhbmdlbG9nLiBUaGlzIGlzIHNvbWV0aGluZyBJIGNhcmUgYWJvdXQg
YmVjYXVzZSBJIGNhbiBzcGVlZC11cApteSByZXZpZXdzIHdoZW4gSSBrbm93IHdoYXQgSSBhbHJl
YWR5IGFja2VkIG9yIG5vdC4gImZpeGluZyByZXZpZXdlcidzCmNvbW1lbnRzIiBpcyB3YXkgdG9v
IHZhZ3VlLCBJIGhhdmUgYWJzb2x1dGVseSBubyBpZGVhIG9mIHdoYXQgSSB0b2xkCnlvdSBsYXN0
IHRpbWUgOikgU28gcGxlYXNlLCBmb3IgdGhlIG5leHQgaXRlcmF0aW9ucywgYmUgbW9yZSB2ZXJi
b3NlIGluCnRoZXNlIGNoYW5nZWxvZ3MhICh0aGF0J3MgZmluZSBmb3IgdGhpcyBvbmUsIEknbGwg
Y2hlY2sgbXlzZWxmKS4KCkNoZWVycywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxp
bmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW10ZC8K
