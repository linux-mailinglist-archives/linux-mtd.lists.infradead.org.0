Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A6710957F
	for <lists+linux-mtd@lfdr.de>; Mon, 25 Nov 2019 23:28:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BR/WVU3H+RNr1n+e4XvciVej41Hv5uSDD/JWW3Dowbg=; b=Gv331Rr+b0j9F8
	enZ+OFMK6qLcavFGPRgbC/SAmRXFCNaRhzTOcysWaf7ck4CiyTFbifKtweNTnMG1y/7sQsqht7NPU
	tqAWVfByTa4DxUwGfVHKA+eZcyv/vAOfmQAoRSJjZyaVQrgriTzsnESEq/MKqmC+g4DD5AI+uxFi2
	u/gRIoNt0K8TqHg8+NOmig4vt/qLKGJT2Rir5LRd6cN+f7RI5gAsIdiUrTgeiaKRxFkt1r8E4vhda
	DYL+VnfSQQys4dsblbwK1578SsQgr+AMkgInbAzyaKBIaohDqWx8xtJjHHyvkRzeyFlc+NPrfBKak
	dedZZkWmr2En37nZ7aJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZMpe-0007Br-3N; Mon, 25 Nov 2019 22:27:46 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZMpY-0007Au-Eh
 for linux-mtd@lists.infradead.org; Mon, 25 Nov 2019 22:27:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 08E8760B3028;
 Mon, 25 Nov 2019 23:27:28 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 3cGlpr5vvqp5; Mon, 25 Nov 2019 23:27:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 63CDD60B302F;
 Mon, 25 Nov 2019 23:27:27 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id fLOEbJPVtlg8; Mon, 25 Nov 2019 23:27:27 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 3FEB260B3028;
 Mon, 25 Nov 2019 23:27:27 +0100 (CET)
Date: Mon, 25 Nov 2019 23:27:27 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Otto Blom <oblom586@gmail.com>
Message-ID: <1237458020.97684.1574720847193.JavaMail.zimbra@nod.at>
In-Reply-To: <CAOfSrV0ZuG5qz0aW1bU30iZ2RX2vi4Y5aYF128XjkRUd1h+EhA@mail.gmail.com>
References: <CAOfSrV1CNn6EpPkAkP8F2VQUrit_B-t89sSxW=08zyKVOdt9AA@mail.gmail.com>
 <CAFLxGvziLKNA0gcPo+EGwfpuv6Fe6=sNOfhEa1DR7sN0oOxzMg@mail.gmail.com>
 <CAOfSrV0ZuG5qz0aW1bU30iZ2RX2vi4Y5aYF128XjkRUd1h+EhA@mail.gmail.com>
Subject: Re: mtd-utils io_paral test fails on NAND
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: mtd-utils io_paral test fails on NAND
Thread-Index: BiZ7cb3fK5qlkI5D5/ShV0Kd2vMydw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_142740_638780_76620668 
X-CRM114-Status: UNSURE (   8.81  )
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T3R0bywKCi0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0KPiBWb246ICJPdHRvIEJsb20i
IDxvYmxvbTU4NkBnbWFpbC5jb20+Cj4gQW46ICJSaWNoYXJkIFdlaW5iZXJnZXIiIDxyaWNoYXJk
LndlaW5iZXJnZXJAZ21haWwuY29tPgo+IENDOiAibGludXgtbXRkIiA8bGludXgtbXRkQGxpc3Rz
LmluZnJhZGVhZC5vcmc+Cj4gR2VzZW5kZXQ6IE1vbnRhZywgMjUuIE5vdmVtYmVyIDIwMTkgMTg6
MjI6MTAKPiBCZXRyZWZmOiBSZTogbXRkLXV0aWxzIGlvX3BhcmFsIHRlc3QgZmFpbHMgb24gTkFO
RAoKPiBIaSBSaWNoYXJkICEKPiAKPiBJbnRlcmVzdGluZ2x5IEkgaGFkIGZsYXNoX3JlYWR0ZXN0
IHJ1bm5pbmcgaW4gYSBsb29wIHRoZSB3aG9sZSB3ZWVrZW5kCj4gd2l0aG91dCBhbnkgZXJyb3Jz
LiBBbHRob3VnaCB0aGlzIHRlc3QgZG9lcyBub3QgdmVyaWZ5IHRoZSBkYXRhIHJlYWQKPiBzbyBp
dCBjb3VsZCBwb2ludCB0b3dhcmRzIGEgY29udHJvbGxlciAvIGRyaXZlciBwcm9ibGVtLiBJJ20g
aW4gdGhlCj4gcHJvY2VzcyBvZiB1cGdyYWRpbmcgdGhlIFNESyBmcm9tIDIwMTcuMyB0byAyMDE5
LjIgdG8gc2VlIGlmIHRoYXQKPiBtYWtlcyBhbnkgZGlmZmVyZW5jZQoKcGFnZXRlc3Qgc2hvdWQg
YWxzbyB2ZXJpZnkgdGhlIGRhdGEuCgpJZiBpdCBmYWlscyBvbmx5IG9uIHRvcCBvZiBVQkkgYW5v
dGhlciBwb3NzaWJsZSBlcnJvciBzb3VyY2UgaXMKRE1BLiBCb3RoIFVCSSBhbmQgVUJJRlMgdXNl
IHZtYWxsb2NlZCgpIGJ1ZmZlcnMsIGEgZHJpdmVyIG11c3Qgbm90IERNQQpmcm9tL3RvIHRoZXNl
IGFuZCB1c2UgYm91bmNlIGJ1ZmZlcnMuIElmIHRoZSBkcml2ZXIgaXMgYnVnZ3kgaW4gdGhpcwph
cmVhIGV2ZXJ5dGhpbmcgbG9va3Mgc2hpbnkgdW50aWwgeW91IHN0YXJ0IHVzaW5nIFVCSS4uLgoK
SXMgdGhlIGJhZCBkYXRhIGFsd2F5cyB6ZXJvcz8gVGhpcyBhbHNvIGRvZXMgbm90IHNvdW5kIGxp
a2UgYW4gVUJJCkxFQi0+UEVCIG1pc21hdGNoLgoKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQg
ZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1tdGQvCg==
