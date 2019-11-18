Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 800111005DE
	for <lists+linux-mtd@lfdr.de>; Mon, 18 Nov 2019 13:48:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBKep19ZNZnZYySAxpTLeWnBAAprAoItmOuBt3Eyh+E=; b=BUgYV9t+3bSNFz
	BwLmXVRtHHTfTkAiRXLZt2XPhYUbqKwjqHllzk3nePgPji6J3tadTKwJRMWEhZQ+jUiNcOvnlu705
	Gk6Ep0an4tuRhlNU7apH16vrBna9uqCVVsnURTmc+C5oyUZFpVmA5aCM75qE982UAfRTlP1hAm2wk
	Lr+8RB98ynlF1quaaIQbvtirhTB9ZktIeAJKZQEZtWhoF11r7oolH8xIZl8rPVe3YKDmxBcEW7HPv
	L2YKrcA7Ch+EL2iOAfB7bOgpX4PK1JBgarSJKj6i4ZGMO+nQQwf39/lzNbx2m0GgLaZXXDyxrCugG
	kecS1fn2tgKGk/EDJNKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWgRn-0000Ti-KP; Mon, 18 Nov 2019 12:48:03 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWgRe-0000S0-Tu
 for linux-mtd@lists.infradead.org; Mon, 18 Nov 2019 12:47:56 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 1B738608325B;
 Mon, 18 Nov 2019 13:47:51 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 9twFQkO4XXdp; Mon, 18 Nov 2019 13:47:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id A6CE260632CE;
 Mon, 18 Nov 2019 13:47:50 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id UsjnQgIzNO_j; Mon, 18 Nov 2019 13:47:50 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 72DCD605AD4C;
 Mon, 18 Nov 2019 13:47:50 +0100 (CET)
Date: Mon, 18 Nov 2019 13:47:50 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <1505628642.90849.1574081270290.JavaMail.zimbra@nod.at>
In-Reply-To: <20191118114657.GA228826@kroah.com>
References: <20191117202435.28127-1-sudipm.mukherjee@gmail.com>
 <20191118114657.GA228826@kroah.com>
Subject: Re: [PATCH v2] {tty: serial, nand: onenand}: samsung: rename to fix
 build warning
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: {tty: serial,
 nand: onenand}: samsung: rename to fix build warning
Thread-Index: e5heYAEPAAm1QXkAbCz7WpzWPdhATg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_044755_108499_1C878643 
X-CRM114-Status: UNSURE (   7.96  )
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 linux-mtd <linux-mtd@lists.infradead.org>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBJIHdhcyBub3Qgc3VyZSBpZiB0aGlz
IHNob3VsZCBoYXZlIGJlZW4gdHdvIGRpZmZlcmVudCBwYXRjaCwgYnV0IHNpbmNlCj4+IHRoaXMg
d2lsbCBiZSBmaXhpbmcgdGhlIHNhbWUgcHJvYmxlbSBzbyBpdCBzZWVtcyBpdHMgYmV0dGVyIHRv
IGhhdmUgdGhlbQo+PiBpbiBhIHNpbmdsZSBwYXRjaC4KPj4gCj4+ICBkcml2ZXJzL210ZC9uYW5k
L29uZW5hbmQvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICB8IDIgKy0KPj4gIGRyaXZlcnMv
bXRkL25hbmQvb25lbmFuZC97c2Ftc3VuZy5jID0+IHNhbXN1bmdfbXRkLmN9IHwgMAo+PiAgZHJp
dmVycy90dHkvc2VyaWFsL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAyICst
Cj4+ICBkcml2ZXJzL3R0eS9zZXJpYWwve3NhbXN1bmcuYyA9PiBzYW1zdW5nX3R0eS5jfSAgICAg
ICB8IDAKPj4gIDQgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+PiAgcmVuYW1lIGRyaXZlcnMvbXRkL25hbmQvb25lbmFuZC97c2Ftc3VuZy5jID0+IHNhbXN1
bmdfbXRkLmN9ICgxMDAlKQo+PiAgcmVuYW1lIGRyaXZlcnMvdHR5L3NlcmlhbC97c2Ftc3VuZy5j
ID0+IHNhbXN1bmdfdHR5LmN9ICgxMDAlKQo+IAo+IEkgY2FuIHRha2UgdGhpcyBpbiB0aGUgdHR5
IHRyZWUgaWYgdGhlIG10ZCBtYWludGFpbmVyIGdpdmVzIGFuIGFjayBmb3IKPiBpdC4uLgoKQWNr
ZWQtYnk6IFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2QuYXQ+CgpUaGFua3MsCi8vcmlj
aGFyZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
