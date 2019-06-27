Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9794F57D48
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Jun 2019 09:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIPFXdfBTQgjZ4UBVKjtRkRp+Ncj1XRUdMt+p3DauxY=; b=A/xKpTXFwts2CJ
	qpiGmuIrRa/TxPYkJokoVOUMVYgtVBT1azmNq7q5YeeBfj73QHoAFWL1hJZpdhggTVrtYTDsDYUZj
	SvwTnXQiL1mSfw4LmVTxyKN7D5bJLehNiXAyd9yO1bMoZZ8g8tE6m0tyCb6p6uCk5O8fRLA0s9P7b
	Jde1bkONAjCAe2Twus5f7SL0P+rJioUL2eMYrnmGAc1BSn9EsXeqtMgiHq5L0xUQz8n4CiJeLLRqp
	XLMbQRRSwpQmdSQZkdIj3xTage0LzaVOPMkDH4xiPuFDH/5/rFaHQ3g/Ne0LS2hEuuclToXzAzcad
	ZeJfdGwMi0hhB4hLF8PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgP0A-0004Dr-Ue; Thu, 27 Jun 2019 07:39:26 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgP00-0004BL-8p
 for linux-mtd@lists.infradead.org; Thu, 27 Jun 2019 07:39:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 94EBF608933C;
 Thu, 27 Jun 2019 09:39:05 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Ivp6XWU4T35t; Thu, 27 Jun 2019 09:39:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id D96256058370;
 Thu, 27 Jun 2019 09:39:03 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id egR4gjt9nay2; Thu, 27 Jun 2019 09:39:03 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 97FE5608F445;
 Thu, 27 Jun 2019 09:39:03 +0200 (CEST)
Date: Thu, 27 Jun 2019 09:39:03 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Message-ID: <957967732.18164.1561621143523.JavaMail.zimbra@nod.at>
In-Reply-To: <CAK7LNARA62uqi8rkDeJ=zjA6vnruTAH2VGOBd4=sQMhF+FHMLA@mail.gmail.com>
References: <20190618030926.30616-1-yamada.masahiro@socionext.com>
 <1318390798.95477.1560838785550.JavaMail.zimbra@nod.at>
 <CAK7LNARA62uqi8rkDeJ=zjA6vnruTAH2VGOBd4=sQMhF+FHMLA@mail.gmail.com>
Subject: Re: [PATCH v2] jffs2: remove C++ style comments from uapi header
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: jffs2: remove C++ style comments from uapi header
Thread-Index: mLkG8opj4qiXCqlqmfdzmCV5mc5Zxg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_003916_608999_2745ED5A 
X-CRM114-Status: UNSURE (   9.15  )
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

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIk1hc2FoaXJvIFlhbWFkYSIg
PHlhbWFkYS5tYXNhaGlyb0Bzb2Npb25leHQuY29tPgo+IEFuOiAicmljaGFyZCIgPHJpY2hhcmRA
bm9kLmF0Pgo+IENDOiAiVmlnbmVzaCBSYWdoYXZlbmRyYSIgPHZpZ25lc2hyQHRpLmNvbT4sICJC
b3JpcyBCcmV6aWxsb24iIDxiYnJlemlsbG9uQGtlcm5lbC5vcmc+LCAibGludXgta2VybmVsIgo+
IDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPiwgIk1hcmVrIFZhc3V0IiA8bWFyZWsudmFz
dXRAZ21haWwuY29tPiwgImxpbnV4LW10ZCIgPGxpbnV4LW10ZEBsaXN0cy5pbmZyYWRlYWQub3Jn
PiwKPiAiTWlxdWVsIFJheW5hbCIgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+LCAiQnJpYW4g
Tm9ycmlzIiA8Y29tcHV0ZXJzZm9ycGVhY2VAZ21haWwuY29tPiwgIkRhdmlkIFdvb2Rob3VzZSIK
PiA8ZHdtdzJAaW5mcmFkZWFkLm9yZz4KPiBHZXNlbmRldDogRG9ubmVyc3RhZywgMjcuIEp1bmkg
MjAxOSAwOTowNjozMQo+IEJldHJlZmY6IFJlOiBbUEFUQ0ggdjJdIGpmZnMyOiByZW1vdmUgQysr
IHN0eWxlIGNvbW1lbnRzIGZyb20gdWFwaSBoZWFkZXIKCj4gT24gVHVlLCBKdW4gMTgsIDIwMTkg
YXQgMzoyMCBQTSBSaWNoYXJkIFdlaW5iZXJnZXIgPHJpY2hhcmRAbm9kLmF0PiB3cm90ZToKPj4K
Pj4gLS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiA+IFZvbjogIk1hc2FoaXJvIFlh
bWFkYSIgPHlhbWFkYS5tYXNhaGlyb0Bzb2Npb25leHQuY29tPgo+PiA+IEFuOiAibGludXgtbXRk
IiA8bGludXgtbXRkQGxpc3RzLmluZnJhZGVhZC5vcmc+Cj4+ID4gQ0M6ICJCb3JpcyBCcmV6aWxs
b24iIDxiYnJlemlsbG9uQGtlcm5lbC5vcmc+LCAiTWlxdWVsIFJheW5hbCIKPj4gPiA8bWlxdWVs
LnJheW5hbEBib290bGluLmNvbT4sICJCcmlhbiBOb3JyaXMiCj4+ID4gPGNvbXB1dGVyc2ZvcnBl
YWNlQGdtYWlsLmNvbT4sICJWaWduZXNoIFJhZ2hhdmVuZHJhIiA8dmlnbmVzaHJAdGkuY29tPiwg
Ik1hcmVrCj4+ID4gVmFzdXQiIDxtYXJlay52YXN1dEBnbWFpbC5jb20+LAo+PiA+ICJNYXNhaGly
byBZYW1hZGEiIDx5YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4sICJyaWNoYXJkIiA8cmlj
aGFyZEBub2QuYXQ+LAo+PiA+ICJEYXZpZCBXb29kaG91c2UiIDxkd213MkBpbmZyYWRlYWQub3Jn
PiwKPj4gPiAibGludXgta2VybmVsIiA8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz4KPj4g
PiBHZXNlbmRldDogRGllbnN0YWcsIDE4LiBKdW5pIDIwMTkgMDU6MDk6MjYKPj4gPiBCZXRyZWZm
OiBbUEFUQ0ggdjJdIGpmZnMyOiByZW1vdmUgQysrIHN0eWxlIGNvbW1lbnRzIGZyb20gdWFwaSBo
ZWFkZXIKPj4KPj4gPiBMaW51eCBrZXJuZWwgdG9sZXJhdGVzIEMrKyBzdHlsZSBjb21tZW50cyB0
aGVzZSBkYXlzLiBBY3R1YWxseSwgdGhlCj4+ID4gU1BEWCBMaWNlbnNlIHRhZ3MgZm9yIC5jIGZp
bGVzIHN0YXJ0IHdpdGggLy8uCj4+ID4KPj4gPiBPbiB0aGUgb3RoZXIgaGFuZCwgdWFwaSBoZWFk
ZXJzIGFyZSB3cml0dGVuIGluIG1vcmUgc3RyaWN0IEMsIHdoZXJlCj4+ID4gdGhlIEMrKyBjb21t
ZW50IHN0eWxlIGlzIGZvcmJpZGRlbi4KPj4gPgo+PiA+IEkgc2ltcGx5IGRyb3BwZWQgdGhlc2Ug
bGluZXMgaW5zdGVhZCBvZiBmaXhpbmcgdGhlIGNvbW1lbnQgc3R5bGUuCj4+ID4KPj4gPiBUaGlz
IGNvZGUgaGFzIGJlZW4gYWx3YXlzIGNvbW1lbnRlZCBvdXQgc2luY2UgaXQgd2FzIGFkZGVkIGFy
b3VuZAo+PiA+IExpbnV4IDIuNC45IChpLmUuIGNvbW1lbnRlZCBvdXQgZm9yIG1vcmUgdGhhbiAx
NyB5ZWFycykuCj4+ID4KPj4gPiAnTWF5YmUgbGF0ZXIuLi4nIHdpbGwgbmV2ZXIgaGFwcGVuLgo+
Pgo+PiA6LSkKPj4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXNhaGlybyBZYW1hZGEgPHlhbWFkYS5t
YXNhaGlyb0Bzb2Npb25leHQuY29tPgo+Pgo+PiBBY2tlZC1ieTogUmljaGFyZCBXZWluYmVyZ2Vy
IDxyaWNoYXJkQG5vZC5hdD4KPj4KPj4gVGhhbmtzLAo+PiAvL3JpY2hhcmQKPiAKPiAKPiBXaWxs
IHRoaXMgYmUgcGlja2VkIHVwIGZvciB2NS4zLXJjMSA/CgpZZXMuCgpUaGFua3MsCi8vcmljaGFy
ZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
