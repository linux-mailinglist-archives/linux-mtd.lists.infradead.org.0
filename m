Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D935396C6
	for <lists+linux-mtd@lfdr.de>; Fri,  7 Jun 2019 22:24:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTreOOEPlnXUCtVygxZfHAilqmLfrPHE6uWwVZExpjI=; b=PcD03HOfa/uw0I
	b/eW/VD2Bv8mHmPYVW0xIeX6A3wYrcwWcy0DHqrUQcVwhtTXoC66lJ82aUGqeuhedhbToz6Wq7kSP
	2GRP9Zt+zKmt+NHkY+x6TTJCjcYRzMXrErdBAQmYcwq++EoZy9ZoxSwPu8eF6/KFodL+lsqxk7TP0
	3eAYPwK0SO2vViRFWl/0fXUKt4fWtkgYUOXzJg6A5paLitEqISD715vTc4p02p+oSGc2F+xuI/Sxv
	J2jemahSndQM9dtZFUAiwUgVQJx//FuCyhRyUAgTESkpHfZjTNsl6OZvC2Lly6JevOxDcE/lmN/yl
	V6dZgwIlawNzjVoSfWVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZLPX-0006j9-HA; Fri, 07 Jun 2019 20:24:27 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZLPK-0006gd-Fr
 for linux-mtd@lists.infradead.org; Fri, 07 Jun 2019 20:24:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id C17631802121F;
 Fri,  7 Jun 2019 22:24:10 +0200 (CEST)
Received: from lilium.sigma-star.at (lilium.sigma-star.at [109.75.188.150])
 by lilium.sigma-star.at (Postfix) with ESMTP id 332C21802121F;
 Fri,  7 Jun 2019 22:24:09 +0200 (CEST)
Date: Fri, 7 Jun 2019 22:24:09 +0200 (CEST)
From: Richard Weinberger <richard@sigma-star.at>
To: Emil Lenngren <emil.lenngren@gmail.com>
Message-ID: <1380627689.233779.1559939049026.JavaMail.zimbra@sigma-star.at>
In-Reply-To: <CAO1O6sdeY6ZY_PhoZrVuqCg20F0Dt3Y_mXXr-OYUMD4HZMihvg@mail.gmail.com>
References: <20190601104322.57inoggnek3crg55@flow>
 <CAO1O6sdeY6ZY_PhoZrVuqCg20F0Dt3Y_mXXr-OYUMD4HZMihvg@mail.gmail.com>
Subject: Re: [PATCH v2] mkfs.ubifs: Add ZSTD compression
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.8_GA_3025 (ZimbraWebClient - FF60 (Linux)/8.8.8_GA_1703)
Thread-Topic: mkfs.ubifs: Add ZSTD compression
Thread-Index: 1P2F9D/jYj7IEGZylVNzmtac9wFq2g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_132414_702021_F3B5C605 
X-CRM114-Status: UNSURE (   8.45  )
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
Cc: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 linux-mtd@lists.infradead.org,
 David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

RW1pbCwKCi0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0KPiBUaGUgbmV3IG10ZC11dGls
cyB3aXRoIHRoaXMgcGF0Y2ggZG9lc24ndCBjb21waWxlIG9uIFVidW50dSAxOC4wNCBMVFMKPiBz
aW5jZSBpdCB1c2VzIGEgc2xpZ2h0bHkgb2xkZXIgdmVyc2lvbiBvZiB6c3RkICgxLjMuMykgdGhh
dCBkaWRuJ3QKPiBoYXZlIHRoZSBtYWNybyBaU1REX0NMRVZFTF9ERUZBVUxUIGRlZmluZWQsIHdo
aWNoIHdhcyBpbnRyb2R1Y2VkIGluCj4gdmVyc2lvbiAxLjMuNS4gQ291bGQgeW91IG1heWJlIGNv
bnNpZGVyIGFkZGluZyB0aGUgZm9sbG93aW5nIGxpbmVzIGluCj4gY29tcHIuYzoKPiAKPiAjaWZu
ZGVmIFpTVERfQ0xFVkVMX0RFRkFVTFQKPiAjZGVmaW5lIFpTVERfQ0xFVkVMX0RFRkFVTFQgMwo+
ICNlbmRpZgo+IAo+IG9yIHNpbWlsYXIsIHdoaWNoIG1ha2UgaXQgY29tcGlsZSBvbiBzbGlnaHRs
eSBvbGRlciBkaXN0cmlidXRpb25zPwoKSWYgSSByZWFkIHRoZSBkb2NzIGNvcnJlY3RseSwgd2Ug
Y2FuIGp1c3QgcGFzcyAwIGFzIGNvbXByZXNzaW9uIGxldmVsLAp3aGljaCB3aWxsIGRlZmF1bHQg
dG8gWlNURF9DTEVWRUxfREVGQVVMVC4KaHR0cHM6Ly9naXRodWIuY29tL2ZhY2Vib29rL3pzdGQv
cHVsbC8xMTc0L2NvbW1pdHMvZTM0YzAwMGU0NDQ0NGI5ZjhiZDYyZTVhZjBhMzU1ZWUxODZlYjIx
ZgoKVGhpcyBzaG91bGQgd29yayBvbiBhbGwgenN0ZCB2ZXJzaW9ucy4KClRoYW5rcywKLy9yaWNo
YXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
