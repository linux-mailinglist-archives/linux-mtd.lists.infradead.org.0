Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B8B91BBB
	for <lists+linux-mtd@lfdr.de>; Mon, 19 Aug 2019 06:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SdUuQlWZisHbx8Ps/1PWjQihAY6qw7kcZ89xQOmo/u8=; b=A9VkDdulvaRC23
	jkidfNkvBGhNc6uQAUKiqMnACzaAO/nqlnkeHGvEEwl2ojnH3tn4jqv7gM1e2QXM6bvA61eBC43jf
	LP87+sSBLXDRJYd6Kjw5uWLnoFEHeRYuLCSAy2tyqZyV4QmJLmOioJslDrh6aD44bZsWdjjJyp92U
	2jVig3B+nsCmvDtpa2W/xupBE26EML4gwzssETfQeFwerVuJrmgIn29LSwwrCHGAJt+H/xcCRa7nX
	vrSnVUlyHf7NU5IwHeXvebTitTeyONtV/wgvKiY3YyfkrzHxY9NROK90sJQkDNhTTrXraWZaPP+0P
	6+FXs2CIetXTuGdoFUsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzZ21-0001td-Ig; Mon, 19 Aug 2019 04:12:33 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzZ1m-0001s8-Mu
 for linux-mtd@lists.infradead.org; Mon, 19 Aug 2019 04:12:20 +0000
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com
 [209.85.221.178]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x7J4Bxlg001607
 for <linux-mtd@lists.infradead.org>; Mon, 19 Aug 2019 13:11:59 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x7J4Bxlg001607
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566187920;
 bh=QrreVsZ01rsR4mFyhdi/pB0zBKcJfRD9LLGKPXbjbkw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vscWVlL9L/ARVdIAmKnqKO/8/NhbMC2S0ZBFbGyNygvLj7iePTGcYBPY+Dfb0wxm6
 CI9ddD9OoBlrpABUhgcZad3PDf+oeolAcLqkJpX4uuwBEUiKfrV1OfMM4w6NnKx3S2
 HtAR26+ak12H5vHGad0MSsYLCVB9aMd5N6IgUTRvvLBe+2drdiu1eEWRoU+CXwlgEP
 cxxrfvovdVrp54gUzRjPOLILcZuRoUm1ofIMb0azJldgYDT0Dz2cECTjTqmjCEKP8X
 oUvcArvsLa0A0T0RBmI0cIJji+rL88t+Ia//HN+wPurxZCIwCMKUgi1fr7TcDTCSNf
 4Qa5Iw5uGiN0A==
X-Nifty-SrcIP: [209.85.221.178]
Received: by mail-vk1-f178.google.com with SMTP id r13so114591vke.12
 for <linux-mtd@lists.infradead.org>; Sun, 18 Aug 2019 21:11:59 -0700 (PDT)
X-Gm-Message-State: APjAAAULk3RH8Je606DVx1GyMCId+v04Dh/x0wq4jcUcFg26kiTL3Gv4
 CQGYo5ztuCedUFTH2t1elXWe68a0mB36/8Vfz44=
X-Google-Smtp-Source: APXvYqyPhRFZBOxMlEiYwrFBqfucp8uDz/KObQOE8Oz67guaLP2XFQN+J5QM+ikR7mMGkw29dmD03ZtfPn9A90CXfAY=
X-Received: by 2002:a1f:7c0e:: with SMTP id x14mr7641286vkc.0.1566187918601;
 Sun, 18 Aug 2019 21:11:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190618030926.30616-1-yamada.masahiro@socionext.com>
 <1318390798.95477.1560838785550.JavaMail.zimbra@nod.at>
 <CAK7LNARA62uqi8rkDeJ=zjA6vnruTAH2VGOBd4=sQMhF+FHMLA@mail.gmail.com>
 <957967732.18164.1561621143523.JavaMail.zimbra@nod.at>
 <CAK7LNAQLheA3E0UrjirNHzpS2x+xmjc2YCupCBMNoHOwviz6GQ@mail.gmail.com>
 <1574230514.38485.1563091693340.JavaMail.zimbra@nod.at>
In-Reply-To: <1574230514.38485.1563091693340.JavaMail.zimbra@nod.at>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 19 Aug 2019 13:11:22 +0900
X-Gmail-Original-Message-ID: <CAK7LNATAmk1AxV0kmn6yTsJzSpqTivWHOZy9GjH7J-NL-oBmhQ@mail.gmail.com>
Message-ID: <CAK7LNATAmk1AxV0kmn6yTsJzSpqTivWHOZy9GjH7J-NL-oBmhQ@mail.gmail.com>
Subject: Re: [PATCH v2] jffs2: remove C++ style comments from uapi header
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_211218_976548_5C7F2BE8 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

T24gU3VuLCBKdWwgMTQsIDIwMTkgYXQgNTowOCBQTSBSaWNoYXJkIFdlaW5iZXJnZXIgPHJpY2hh
cmRAbm9kLmF0PiB3cm90ZToKPgo+IC0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0KPiA+
IExvb2tzIGxpa2UgdGhpcyB0cml2aWFsIHBhdGNoIG1pc3NlZCB0aGUgcHVsbCByZXF1ZXN0Lgo+
ID4KPiA+Cj4gPiBNeSBtb3RpdmF0aW9uIGlzIHRvIG1ha2Ugc3VyZSBVQVBJIGhlYWRlcnMKPiA+
IGFyZSByZWFsbHkgY29tcGlsYWJsZSBpbiB1c2VyLXNwYWNlLAo+ID4gYW5kIG5vdyBjaGVja2Vk
IGJ5IHRoZSBmb2xsb3dpbmcgY29tbWl0Ogo+ID4KPiA+IGNvbW1pdCBkNmZjOWZjYmFhNjU1Y2Zm
MmQyYmUwNWUxNjg2N2QxOTE4Zjc4Yjg1Cj4gPiBBdXRob3I6IE1hc2FoaXJvIFlhbWFkYSA8eWFt
YWRhLm1hc2FoaXJvQHNvY2lvbmV4dC5jb20+Cj4gPiBEYXRlOiAgIE1vbiBKdWwgMSAwOTo1ODo0
MCAyMDE5ICswOTAwCj4gPgo+ID4gICAga2J1aWxkOiBjb21waWxlLXRlc3QgZXhwb3J0ZWQgaGVh
ZGVycyB0byBlbnN1cmUgdGhleSBhcmUgc2VsZi1jb250YWluZWQKPiA+Cj4gPgo+ID4KPiA+IElz
IHRoZXJlIGEgY2hhbmNlIGZvciBpdCBiZWluZyBtZXJnZWQsCj4KPiBTdXJlLiBJIHRoaW5rIGl0
IGlzIG9rYXkgdG8gc2VuZCBpdCBmb3IgLXJjMi4KPgo+IFRoYW5rcywKPiAvL3JpY2hhcmQKCgpU
aGlzIHBhdGNoIG1pc3NlZCB0aGUgZml4ZXMgcHVsbCByZXF1ZXN0cy4KV2hpY2ggdmVyc2lvbiBp
cyB0aGlzIHRhcmdldGluZyBmb3I/ICAgdjUuNC1yYzEgPwoKCgotLSAKQmVzdCBSZWdhcmRzCk1h
c2FoaXJvIFlhbWFkYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
