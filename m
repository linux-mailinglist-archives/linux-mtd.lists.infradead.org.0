Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E63314D793
	for <lists+linux-mtd@lfdr.de>; Thu, 30 Jan 2020 09:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIUySA4CogbrNeYv0GdyIMkWeZ/33LaxVlNAOQatxXE=; b=KLWLPgHG1o6494
	DXORI+AY+pOBXf3uF+q51VMAQkW3A6BoYQNhvsZMTUdKWmIk6J3yjXKX45WXrIgWj1AFy2iGSmEeN
	avffwZD/Zj4AakklqNRQ9ETBN38y6NszTEmlfxDPovDX8OOFzjzTTdrxvch4AMdh4SKIwvS8McsJb
	Qtf6geFSnoMxbU5d61w5XfPKm8vLV7PxbsUZwhW838wtq2UgJ+LXDIGXI8jSAqXn/E3rbd6UVx+Nw
	Kg/jx9h3X+YgvcwwfHA1+oFuvE8rW2/pOxb3l74r8mqsv1bSXa0S1R6nUJ5MKgNWsk3LMyRW0YpNA
	4iSpPQaiuCgW+5AOzBew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix5Em-0007YG-PL; Thu, 30 Jan 2020 08:31:44 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix5Ef-0007Y6-Kh
 for linux-mtd@bombadil.infradead.org; Thu, 30 Jan 2020 08:31:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hAuWreGs+kasPP5BTfdBm89Kj2Wdfstwj18DXPVw514=; b=Wyh8KBcf/oipvLXvciQ1F/Bp79
 FVMotNkfnUatWgKN4E3CiCuDpPstkaRqAHh1/sr+qsWsK/Hx5Utd2fu7d3kHjrKQwSr9ye20WcWSy
 ddfzJwzJFNG0Wl2YTfRR80jyZ03RLZtchT8OQ2gO+UGy+HskVsVcggWLqz6UiAfSUbcuvHRfsj8DV
 VYh90P8UO/ku4psxYYJRwHm4MF8Uy+m6ENk3QcpX/M51JGxJAGOEKQDBE6NQrJWmVUZy55L6TReOJ
 orvuC2GH14oOz7GcWvxY3HJUx/WlzOt5Pbnxs7LM6T7pr4ATOq32Wb5yNXko7geRxZkIOIfcaGslS
 ARLrws9Q==;
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix5Ec-0008LT-CY
 for linux-mtd@lists.infradead.org; Thu, 30 Jan 2020 08:31:35 +0000
X-Originating-IP: 90.76.211.102
Received: from xps13 (lfbn-tou-1-1151-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 0C80B1BF219;
 Thu, 30 Jan 2020 08:30:48 +0000 (UTC)
Date: Thu, 30 Jan 2020 09:30:48 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: shiva.linuxworks@gmail.com
Subject: Re: [PATCH 1/4] mtd: spinand: Generalize the OOB layout structure
 and function names
Message-ID: <20200130093048.5f196495@xps13>
In-Reply-To: <20200119145432.10405-2-sshivamurthy@micron.com>
References: <20200119145432.10405-1-sshivamurthy@micron.com>
 <20200119145432.10405-2-sshivamurthy@micron.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.201 listed in wl.mailspike.net]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, Shivamurthy Shastri <sshivamurthy@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU2hpdmEsCgpzaGl2YS5saW51eHdvcmtzQGdtYWlsLmNvbSB3cm90ZSBvbiBTdW4sIDE5IEph
biAyMDIwIDE1OjU0OjI5ICswMTAwOgoKPiBGcm9tOiBTaGl2YW11cnRoeSBTaGFzdHJpIDxzc2hp
dmFtdXJ0aHlAbWljcm9uLmNvbT4KPiAKCkkgd291bGQgYWxzbyBwcmVmaXggdGhlIGNvbW1pdCB3
aXRoICJtdGQ6IHNwaW5hbmQ6IG1pY3JvbjoiLgoKPiBJbiBvcmRlciB0byBhZGQgbmV3IE1pY3Jv
biBTUEkgTkFORCBkZXZpY2VzLCB3ZSBnZW5lcmFsaXplZCB0aGUgT09CCj4gbGF5b3V0IHN0cnVj
dHVyZSBhbmQgZnVuY3Rpb24gbmFtZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogU2hpdmFtdXJ0aHkg
U2hhc3RyaSA8c3NoaXZhbXVydGh5QG1pY3Jvbi5jb20+CgpUaGFua3MsCk1pcXXDqGwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBN
VEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
