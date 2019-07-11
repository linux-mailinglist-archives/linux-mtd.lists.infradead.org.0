Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E57660C6
	for <lists+linux-mtd@lfdr.de>; Thu, 11 Jul 2019 22:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53s7vN6WtuwXiR/h/ppybFApysghHso0qR4BviU7Zg8=; b=XdSLi2HJUCyrzC
	yyurn+w2DB9fQChtYPYCaD52U+voub7rUucmgzg6V+Pi7sssFvDG9+F+Q24tEMOJF+31gG1aGlY1G
	a/HhpPAknkP0M0uTRl7ootldBpVUd7qxaT0gjnN+lpFbEKczPOu2XFyvkCvJZJHnVPOPBQKj3kVa9
	xqA2XBX8yhWAJCYoLw4r3dRBjHdIeUbElQH0SEZyDUXp6vTDzy9Ej2Est+XLyZOvqRRpswdbO1obn
	nW3uQCuGxoXRPTtpl8UZxVwTnjD8//5VjGfq5L7doNuknsJ71W8DrB9x2vZtWe92wI78cKiVIHeMj
	gPxyIFTfdL6prm98u1fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlftU-0006UB-6o; Thu, 11 Jul 2019 20:42:20 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlftI-0006TI-Rp
 for linux-mtd@lists.infradead.org; Thu, 11 Jul 2019 20:42:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 67FE8608933B;
 Thu, 11 Jul 2019 22:41:57 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id kOH2FEbz08Lp; Thu, 11 Jul 2019 22:41:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id E44BD608933A;
 Thu, 11 Jul 2019 22:41:56 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id XOBdV8G7pgd9; Thu, 11 Jul 2019 22:41:56 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id C1454608898B;
 Thu, 11 Jul 2019 22:41:56 +0200 (CEST)
Date: Thu, 11 Jul 2019 22:41:56 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Ben Schroeder <klowd92@gmail.com>
Message-ID: <978087654.37118.1562877716708.JavaMail.zimbra@nod.at>
In-Reply-To: <CAMk-x8PdwHryEmot4drePgx9cRfL6mO2FoURm5HSWdJjN97yhQ@mail.gmail.com>
References: <CAMk-x8NpDDjqtJQ0WqqRcggQxBp3uu7QbQET0m019LoG9OSkvA@mail.gmail.com>
 <CAFLxGvy=iwwUbS8O1xMAtMZYibzQ+vbft1ZVpg9erR=S1c8s2g@mail.gmail.com>
 <CAMk-x8NfGfXZ6c0QV9kVO677PSo4gmHCgPKV=7_iz7HYX6wYEQ@mail.gmail.com>
 <CAFLxGvwSKVxi=nqnrniDpZaK_5C900traLW46OZEC5ZUw+dEGQ@mail.gmail.com>
 <CAMk-x8PdwHryEmot4drePgx9cRfL6mO2FoURm5HSWdJjN97yhQ@mail.gmail.com>
Subject: Re: Available space loss due to fragmentation?
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: Available space loss due to fragmentation?
Thread-Index: ytdrgTcJkj48IDj0te79FpcXi7pXfw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_134209_051069_21206863 
X-CRM114-Status: UNSURE (   7.08  )
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

QmVuLAoKLS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkJlbiBTY2hyb2Vk
ZXIiIDxrbG93ZDkyQGdtYWlsLmNvbT4KPiBBbjogIlJpY2hhcmQgV2VpbmJlcmdlciIgPHJpY2hh
cmQud2VpbmJlcmdlckBnbWFpbC5jb20+Cj4gQ0M6ICJsaW51eC1tdGQiIDxsaW51eC1tdGRAbGlz
dHMuaW5mcmFkZWFkLm9yZz4KPiBHZXNlbmRldDogRG9ubmVyc3RhZywgMTEuIEp1bGkgMjAxOSAx
Nzo1Mzo1Mwo+IEJldHJlZmY6IFJlOiBBdmFpbGFibGUgc3BhY2UgbG9zcyBkdWUgdG8gZnJhZ21l
bnRhdGlvbj8KCj4gT24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMToxNiBQTSBSaWNoYXJkIFdlaW5i
ZXJnZXIKPiA8cmljaGFyZC53ZWluYmVyZ2VyQGdtYWlsLmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIFdl
ZCwgSnVsIDEwLCAyMDE5IGF0IDU6MTggUE0gQmVuIFNjaHJvZWRlciA8a2xvd2Q5MkBnbWFpbC5j
b20+IHdyb3RlOgo+PiA+IFRoYW5rcyBmb3IgdGhlIHJlcGx5IFJpY2hhcmQuCj4+ID4gSSBqdXN0
IHdhbnRlZCB0byByZWl0ZXJhdGUgdGhhdCBpIGFtIHVzaW5nIFNQSSBOT1IgRmxhc2gsIHBhcnRp
dGlvbmVkCj4+ID4gaW4gYW4gQS9CIHNjaGVtZSBhcyBzbzoKPj4KPj4gSG1tbS4KPj4gRGlkIHlv
dSBjcmVhdGUgdGhlIHJvb3RmcyB1c2luZyBta2ZzLnViaWZzIHdpdGggYSBkaWZmZXJlbnQKPj4g
Y29tcHJlc3Npb24gdGhhbiB1c2VkCj4+IGJ5IHRoZSBrZXJuZWw/Cj4gbWtmcy51YmlmcyAtciAv
dG1wL3Jvb3RmcyAtbSAxIC1lIDB4RkY4MCAtYyAxMDI0IC1vIGRhdGEudWJpZnMKPiAoSSBiZWxp
ZXZlIHN0YW5kYXJkIGNvbXByZXNzaW9uIGlzIHVzZWQsIGx6bz8pCgpUbyBiZSBob25lc3QsIEkn
bSBub3QgZW50aXJlbHkgc3VyZSB3aGF0IHByb2JsZW0geW91IGFyZSBmYWNpbmcuCgpDYW4geW91
IHBsZWFzZSBnaXZlIHRoZXNlIHR3byBhcHByb2FjaGVzIGEgdHJ5PwoxLiBDcmVhdGUgdGhlIGZp
bGVzeXN0ZW0gd2l0aCBubyBjb21wcmVzc2lvbiBhbmQgbW91bnQgdWJpZnMgd2l0aG91dCBjb21w
cmVzc2lvbiwKdG8gcnVsZSBvdXQgY29tcHJlc3Npb24gcmVsYXRlZCBpc3N1ZXMuCjIuIFRyeSBh
IChtdWNoKSBsYXJnZXIgbG9nIHNpemUsIHlvdSBjYW4gc3BlY2lmeSBpdCBhdCBta2ZzLnViaWZz
IHRpbWUuCgpUaGFua3MsCi8vcmljaGFyZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlz
dApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
