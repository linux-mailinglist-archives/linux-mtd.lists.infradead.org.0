Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EF391D42
	for <lists+linux-mtd@lfdr.de>; Mon, 19 Aug 2019 08:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k55+sZac8MZ4dsZDsCsU5G2EXSKTs9yD8bW8RJhURkA=; b=EOji8CAelRwYj6
	7lMh0SNRsMoXZW+Yy4ntVDVS/oUWj+eyd1xmYHMUomFSPlRrilhzRhvRmjIStvC/ELpAHIZWwdpna
	GoXYBNRcFzbCjsNPVsjzwwTzNRhcXyt6hiK3Xo9y9vY3wybuIy0zXIQuBNaLo4qOIlrAW+RvDKDbd
	3AwGPDG/Tu2r6/xHeNRKs3Pw8ogTJgLkSp1SabBaMJtXI3rOHeFUeolF5qUQ/1kojwR+NB3ZsYGiU
	K0+bEmcgV9QFLyy8PUw/eEuEJXxnATtWvUT6OF0wpjvCvBHwXtOcw3woOKfj7wjUunL74BlHn6erF
	0B+NSZ97hPVYleZJmRlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzbMH-0005PD-Md; Mon, 19 Aug 2019 06:41:38 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzbM5-0005OF-WC
 for linux-mtd@lists.infradead.org; Mon, 19 Aug 2019 06:41:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 9412E608311C;
 Mon, 19 Aug 2019 08:41:11 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id PCfFbQ7R1CaL; Mon, 19 Aug 2019 08:41:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 19C92621FCDC;
 Mon, 19 Aug 2019 08:41:11 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id dy3h6pf6zvpv; Mon, 19 Aug 2019 08:41:11 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id C63FC6083139;
 Mon, 19 Aug 2019 08:41:10 +0200 (CEST)
Date: Mon, 19 Aug 2019 08:41:10 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Message-ID: <1815240753.69632.1566196870672.JavaMail.zimbra@nod.at>
In-Reply-To: <CAK7LNATAmk1AxV0kmn6yTsJzSpqTivWHOZy9GjH7J-NL-oBmhQ@mail.gmail.com>
References: <20190618030926.30616-1-yamada.masahiro@socionext.com>
 <1318390798.95477.1560838785550.JavaMail.zimbra@nod.at>
 <CAK7LNARA62uqi8rkDeJ=zjA6vnruTAH2VGOBd4=sQMhF+FHMLA@mail.gmail.com>
 <957967732.18164.1561621143523.JavaMail.zimbra@nod.at>
 <CAK7LNAQLheA3E0UrjirNHzpS2x+xmjc2YCupCBMNoHOwviz6GQ@mail.gmail.com>
 <1574230514.38485.1563091693340.JavaMail.zimbra@nod.at>
 <CAK7LNATAmk1AxV0kmn6yTsJzSpqTivWHOZy9GjH7J-NL-oBmhQ@mail.gmail.com>
Subject: Re: [PATCH v2] jffs2: remove C++ style comments from uapi header
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: jffs2: remove C++ style comments from uapi header
Thread-Index: KGVI1X2kBlsaMBZdQrgIoGl0S7gG5g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_234126_185059_D8C5F9CE 
X-CRM114-Status: UNSURE (   5.80  )
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
 Boris Brezillon <bbrezillon@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFRoaXMgcGF0Y2ggbWlzc2VkIHRoZSBm
aXhlcyBwdWxsIHJlcXVlc3RzLgo+IFdoaWNoIHZlcnNpb24gaXMgdGhpcyB0YXJnZXRpbmcgZm9y
PyAgIHY1LjQtcmMxID8KCkRhbW4sIEkgZm9yZ290IGFib3V0IHRoaXMgb25lLgpJJ2xsIGRvIGFu
b3RoZXIgZml4ZXMgUFIgdGhpcyB3ZWVrIGZvciBVQkkvVUJJRlMsIHNvIGl0IHdpbGwgYmUKaW4g
dHJlZSBiZWZvcmUgdGhlIG5leHQgbWVyZ2Ugd2luZG93IG9wZW5zLgoKU29ycnkgZm9yIHRoZSBk
ZWxheSEKClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
