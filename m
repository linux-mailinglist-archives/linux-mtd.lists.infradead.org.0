Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090684EF7E
	for <lists+linux-mtd@lfdr.de>; Fri, 21 Jun 2019 21:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxnuDLglGapbo4gOc5UkfquDoIinBkouUDlmo+nwbxg=; b=VbjfcTTyQ4+sWy
	d5iPuGsK6Rma2SGDpL9hGeZwNNrYsH0yFhcnOlhcuty+KTtqFi8vRuPWg1brhsPu8Al/mYb6+ZfTJ
	auoeBpFETn/Y4WqPYJuGZWo8bRVnQ+Sv6jeg2Ci6Nl885hnaotltirHpITG2yV/dapAzPR7bGIt2k
	PWmRCuDzRBDcpeQHIhG5CLUwcrLYuJFXadLDMzYFLT1SWq9qYS4cuo6WBXnvtI6iK0Hw6fObBaUCl
	ea157huIjvaTTMThoHO0zlUVuMaBt62LBEsxBGKeFT/4qt1xaLqzg34EC7AdIrV201YSHklJY6Lb9
	Mywi6lVdZaJ4/biN2gYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hePHd-00052l-N4; Fri, 21 Jun 2019 19:33:13 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hePHT-00052G-I1
 for linux-mtd@lists.infradead.org; Fri, 21 Jun 2019 19:33:05 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id EA0C76088966;
 Fri, 21 Jun 2019 21:33:01 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Z7fjMjkS9Ekr; Fri, 21 Jun 2019 21:33:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id A5A1A6088963;
 Fri, 21 Jun 2019 21:33:01 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id DMDkQ9ePd1Kq; Fri, 21 Jun 2019 21:33:01 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 7F00E608893E;
 Fri, 21 Jun 2019 21:33:01 +0200 (CEST)
Date: Fri, 21 Jun 2019 21:33:01 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Mikhail Kshevetskiy <mikhail.kshevetskiy@gmail.com>
Message-ID: <1524034294.13675.1561145581382.JavaMail.zimbra@nod.at>
In-Reply-To: <20190621221623.0db81a14@laska.lan>
References: <20190620132753.19538-1-mikhail.kshevetskiy@gmail.com>
 <CAFLxGvyvFL6iHOgQzw2wqpTYOTY8eW57ORuVQnkjn+Gmub=cbQ@mail.gmail.com>
 <20190621213914.5b0023fd@laska.lan>
 <561004432.13649.1561142870072.JavaMail.zimbra@nod.at>
 <20190621221623.0db81a14@laska.lan>
Subject: Re: [PATCH] mtd/ubi: fix initialization order of ubi subsystems
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: mtd/ubi: fix initialization order of ubi subsystems
Thread-Index: uZdPBe7WdNpY9GJ8z2JMxNUGK1efMg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_123303_752521_A5CCAEE9 
X-CRM114-Status: UNSURE (   4.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiA+IFBTIHdlIHNlbmQgdGhlIHNhbWUg
cGF0Y2ggdG8gdS1ib290Lgo+PiAKPj4gSW4gdS1ib290IHRoZSBzdG9yeSBpcyBhIGxpdHRsZSBk
aWZmZXJlbnQgYmVjYXVzZSBpdCBoYXMgbm8gY29uY2VwdCBvZgo+PiB0aHJlYWRzIGFuZCBleGVj
dXRlcyB3b3JrIGltbWVkaWF0ZWx5Lgo+PiAKPj4gRG8geW91IHNlZSB0aGlzIG9uIGEgcmVjZW50
IHUtYm9vdD8KPj4gV2l0aCB0aGlzIGNvbW1pdCBpbiB1LWJvb3QgdGhpcyBwcm9ibGVtIHNob3Vs
ZCBub3QgaGFwcGVuOgo+PiBmODIyOTBhZmM4NDcgKCJtdGQ6IHViaTogRml4IHdvcmtlciBoYW5k
bGluZyIpCj4gCj4gbm8gd2UgdXNlIDIwMS4wNyBiYXNlZCBib290bG9hZGVyLiBJJ2xsIGxvb2sg
b24gaXQuIFRoYW5rcy4KClBsZWFzZSBiYWNrcG9ydCB0aGUgc2FpZCBmaXggYW5kIGNvbW11bmlj
YXRlIHRoaXMgb24gdGhlCnUtYm9vdCBtYWlsaW5nbGlzdC4KCllvdXIgcGF0Y2ggZml4ZXMgdGhl
IGlzc3VlIG9ubHkgcGFydGlhbGx5LCB5b3Ugd2lsbCBzdGlsbCBmYWNlCmlzc3VlcyBpZiB1Ymkg
c2VlcyBiaXRmbGlwcyBhdCBhdHRhY2ggdGltZS4KClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVRE
IGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbXRkLwo=
