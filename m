Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F391E039A
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 00:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rg4m4qnf1NLxn2X4NDFkt/V/1etiayiWU/HJssxVxg=; b=J9eF/whTNO+mux
	WqJtnHTr2A8ntnctRQrpxTm9HYOJ0eLykVNeG2MECqb4dEevsFWkxBz0ROtZc+IzAhbj9ueT6If9l
	cL+zl9t4MPrrZdltxpcnEf75iX4jO7hGt5Ag1c/SC5cNYV5mUlffPe0/4RYp+vC6604XoRBzBL/qM
	kKBgV4pBYFY5saBA7NS/I7vJPmomgcpYfbooYVlxoTOGVwwiXd8c75Y4u5KlswDNrD8eDGe0tW7bz
	+yj0H+ErH6ULgO8V8cR4/rBBt6exx4zEevhE5xJa8PeJsWYSWxhuWoDwF4cdNacdfB2xSpaxatkNl
	/NEAEBak6kuE/lwn1KQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcylp-0006NM-Gq; Sun, 24 May 2020 22:07:01 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcyld-0006Ma-Ee
 for linux-mtd@lists.infradead.org; Sun, 24 May 2020 22:06:50 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id A0AD8100004;
 Sun, 24 May 2020 22:06:44 +0000 (UTC)
Date: Mon, 25 May 2020 00:06:43 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH v4 4/5] dt: bindings: brcmnand: add v2.1 and v2.2 support
Message-ID: <20200525000643.4ed45a73@xps13>
In-Reply-To: <DB7PR03MB4604C2B50C013033D0CB95F8F5B20@DB7PR03MB4604.eurprd03.prod.outlook.com>
References: <20200522121524.4161539-5-noltari@gmail.com>
 <20200524192550.4559-1-miquel.raynal@bootlin.com>
 <20200524212740.08c2810f@xps13>
 <DB7PR03MB4604C2B50C013033D0CB95F8F5B20@DB7PR03MB4604.eurprd03.prod.outlook.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_150649_624808_A3EA5977 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.231 listed in wl.mailspike.net]
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
Cc: "vigneshr@ti.com" <vigneshr@ti.com>,
 "kdasu.kdev@gmail.com" <kdasu.kdev@gmail.com>,
 "richard@nod.at" <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

CsOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+IHdyb3RlIG9uIFN1
biwgMjQgTWF5IDIwMjAKMjE6MTM6NDEgKzAwMDA6Cgo+IFRoYW5rcyBmb3IgbWVyZ2luZyB0aGUg
cGF0Y2hlcyA6KS4KPiAKPiBCVFcsIGlzIHRoZXJlIHNvbWV0aGluZyB3cm9uZyB3aXRoIHBhdGNo
IDU/Cj4gSSBjYW4gc2VlIHBhdGNoZXMgMS00IGFwcGxpZWQgaW4gaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbXRkL2xpbnV4LmdpdC9sb2cvP2g9bmFuZC9u
ZXh0LCBidXQgSSBjYW7igJl0IHNlZSBwYXRjaCA1Lgo+IAoKRG9uZSA6KQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNj
dXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW10ZC8K
