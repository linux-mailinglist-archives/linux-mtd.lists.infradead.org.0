Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5941E020D
	for <lists+linux-mtd@lfdr.de>; Sun, 24 May 2020 21:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDBPheH71JleG74cPVRLlMDY1IZuelX7mGizX2eqMJ4=; b=axC6vgAIl0/PoT
	orNihBotkqNP2BpCOIpqfV0jvRUjAtJDKwEU4647OODbscJlAQw4QU917icSNWSgQYTKZJbw/gUGp
	GZDR748lvYnpmA2l1lS5fCrFBk7/WE9tQmcKASVedOxqcIdY9MYMmtL1+Fhiw2v8jim5uukDap/B/
	8nAJyJOVO+KQjs772jEWriygnGLGDBUKCz6X9ZCaneSr6YKJWSWx6NWkDI+DBk60c2XVqzkfm6n0y
	GhttHAH4+wNfZDJvXsdZvChOowH+MoMHhuHZS/0ijJGep/M8iVXeTeEs9DLQAn+CqgvTaEqQX6xaY
	DojWjt7FjhaPDpABLbxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwBq-0008Br-Qn; Sun, 24 May 2020 19:21:42 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcvzd-0006un-D7
 for linux-mtd@lists.infradead.org; Sun, 24 May 2020 19:09:07 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 0C57A240003;
 Sun, 24 May 2020 19:09:01 +0000 (UTC)
Date: Sun, 24 May 2020 21:08:59 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Dinghao Liu <dinghao.liu@zju.edu.cn>, kjlu@umn.edu
Subject: Re: [PATCH] mtd: rawnand: Fix runtime PM imbalance on error
Message-ID: <20200524210859.6c8e81dd@xps13>
In-Reply-To: <20200524190259.3429-1-miquel.raynal@bootlin.com>
References: <20200522104008.28340-1-dinghao.liu@zju.edu.cn>
 <20200524190259.3429-1-miquel.raynal@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_120905_575635_4B5BFFC0 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Ck1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+IHdyb3RlIG9uIFN1biwg
MjQgTWF5IDIwMjAKMjE6MDI6NTkgKzAyMDA6Cgo+IE9uIEZyaSwgMjAyMC0wNS0yMiBhdCAxMDo0
MDowNiBVVEMsIERpbmdoYW8gTGl1IHdyb3RlOgo+ID4gcG1fcnVudGltZV9nZXRfc3luYygpIGlu
Y3JlbWVudHMgdGhlIHJ1bnRpbWUgUE0gdXNhZ2UgY291bnRlciBldmVuCj4gPiB3aGVuIGl0IHJl
dHVybnMgYW4gZXJyb3IgY29kZS4gVGh1cyBhIHBhaXJpbmcgZGVjcmVtZW50IGlzIG5lZWRlZCBv
bgo+ID4gdGhlIGVycm9yIGhhbmRsaW5nIHBhdGggdG8ga2VlcCB0aGUgY291bnRlciBiYWxhbmNl
ZC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRGluZ2hhbyBMaXUgPGRpbmdoYW8ubGl1QHpqdS5l
ZHUuY24+ICAKPiAKPiBBcHBsaWVkIHRvIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9s
aW51eC9rZXJuZWwvZ2l0L210ZC9saW51eC5naXQgbmFuZC9uZXh0LCB0aGFua3MuCj4gCj4gTWlx
dWVsCgpGWUkgSSBjaGFuZ2VkIHRoZSB0aXRsZSB0byBpbnRlZ3JhdGUgdGhlIGRyaXZlcidzIG5h
bWUuCgpNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
