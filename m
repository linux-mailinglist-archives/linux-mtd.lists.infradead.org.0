Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72ED91BAD1F
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 20:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJvzDVZSKulgqTdAD6tpFaiEfk0KFpR2kt0UV1WUPlE=; b=B4EPkT18AkYGo4
	7H9slRZK4EkgJlXCI3blpUKgPEj+aPXKhQMmKhUnMg83zfgKHyFh17NP1Au9/ArVbCnAdCAvdxM1+
	Ozi71hnnyNpWAYbxYtfrDNZI9eFXI/RjPD22/PEn5l4rKzAE+z/Zl8bv4GogTeBbmN35DbWII4amZ
	hSOjTEAWibYxMfEvCULQ3Djrt0C2iC3ontD9yytpU3j4r5crTvDVvbitonAfWiy3qneKM9ZMddJfz
	8O5vbV5NK43OHP/u5u6eKrYfOTom24lCKmOQGAKijezpn1mSVLnrwP6ZQ+GlVvQp09KIR+2iMm8/M
	8tUp3xgDYq29sHiI3whA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8oK-0000W8-Fs; Mon, 27 Apr 2020 18:48:56 +0000
Received: from mail-oo1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8oC-0000VE-39
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 18:48:49 +0000
Received: by mail-oo1-xc43.google.com with SMTP id t3so4101841oou.8
 for <linux-mtd@lists.infradead.org>; Mon, 27 Apr 2020 11:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=De27ZR983AV2r2+JZRsaf7PoOA9AHtp7nTYqXQ0xxpU=;
 b=Q0IN6yHYBBkVLGcL1Jw3WZ/24PgOS0LaiON4gmFlC0Ftnsg+fMcAVK23pvphiTOKo6
 X9w5iOL7mI8vBYrs493WYLjJMY31229c0MnbRPIZZ+35zODBUurpdNh3kGpwvrUVdsam
 9ese7smH8hqaDhEDDfo7+qSM3whEaAxS8TdQRHMcwEi1Wxh2f30mvUJjh0ZWMZKpHIru
 eAtbp1zcS2Ma304ZWCDnxXaCkIuic1F6290XHgwrXTdTdacLK0LFw0HY/cbZmcQuaui4
 FQj/ARtwiSyVmIGQbCtp0zKRsLrO1rR3XyDWiVxH1y6Wjh9ltYYa8inBiUwicUn19gfs
 uPng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=De27ZR983AV2r2+JZRsaf7PoOA9AHtp7nTYqXQ0xxpU=;
 b=bF7WsREFPdy+XIy1XNAcMgwQojwV0wkkeVropQq9gqDrfrkd1PKZuwDCF9oaeHft3z
 qnCYIxSE2fh+E8V4xwYELy3MfCCzaHNOzysVg2JJY6Hv3Q5lwQD03axvIXt4TtdVFmrL
 zsUk7TU4vrC0d0/64SJRFbLMlFXoENybnVg92AlLjDHokjW/CIPjN7jRs5KGvK91Ir8R
 4qlsmKpTekarjOCGDqwtTXkwV3Uq4mgdcxm5naSwb6CtATW4bvCCsxxFnKEGHLCcIbUH
 YMrlN4OJ/iNOrFq3Xuf8m3jzExhXkJ4asKrvzudB6bHAHOJQMS8tYN7vS2yPaiqDwloq
 5/TA==
X-Gm-Message-State: AGi0PuZAt3kWv4qojeW67O1usB4/mRQYmCYz1ug/M3yTyegq7bz2OT0K
 f4I3dggjYJffIlyAijDCkps6m6/Ydj3MDY6dq10=
X-Google-Smtp-Source: APiQypKIphI5XvkvafplnD4rpGH+GglpZfFp+Nypu4W51Erm//PFFRXdzQyAmkYwXUmZ1B9GyUDZrlKOo+lSBVmnpgo=
X-Received: by 2002:a4a:e1d2:: with SMTP id n18mr19987301oot.36.1588013326908; 
 Mon, 27 Apr 2020 11:48:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAP6exY+LQ4Cz3Wq3P=MP78HhHCovMYDfwhpVuASp17h3s2sgMw@mail.gmail.com>
 <CAP6exYJ_jzrB0D=RLXMNeegu4BwQq8raXVOMugkqzX2ZP_JSqw@mail.gmail.com>
 <20200327155608.GM2564@lahna.fi.intel.com> <20200327171907.7a7ffc73@xps13>
 <20200327164802.GN2564@lahna.fi.intel.com> <20200327175238.784cf47c@xps13>
 <CAP6exYJ4-pBBZKA0z8TKPqh_0tKzJadjXEBZk9dc9ij8BJ9Xew@mail.gmail.com>
 <20200327171619.GO2564@lahna.fi.intel.com>
 <CAP6exYJWWT2SFLjPCdjAEEjmZYwqYuTxd_aRaf=xEELmXqfMpA@mail.gmail.com>
 <CAP6exY+p-Chi2R4Y1H8UvcbE6rvEpMiK3UaX2OyBq=ZO6uULpg@mail.gmail.com>
 <20200330060859.GR2564@lahna.fi.intel.com> <20200330092722.2ff41863@xps13>
 <CAP6exY+F2VoEZkwcYp38HNt7NyZucQrdQ8MqQyTQ62U12pAcSw@mail.gmail.com>
 <20200401094148.1786d48a@xps13> <20200427111623.5f93842d@collabora.com>
 <20200427114954.4fc0e8fc@collabora.com> <20200427164138.05076f3a@xps13>
In-Reply-To: <20200427164138.05076f3a@xps13>
From: ron minnich <rminnich@gmail.com>
Date: Mon, 27 Apr 2020 11:48:35 -0700
Message-ID: <CAP6exYJbpmxQztCOHum-k_CqmCDrJewZaYWk-Bsxy2dsYibbaQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] mtd/intel-spi: Support cmdline-based partition
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_114848_135302_2651E4C2 
X-CRM114-Status: GOOD (  43.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mtd@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SSdtIGZpbmUgd2l0aCB0aGF0LiBJIGhhdmUgbm90IGhhZCBhIGNoYW5jZSB0byB0ZXN0IGl0IGJ1
dCBpdCBzaG91bGQgYmUgZmluZS4KCk9uIE1vbiwgQXByIDI3LCAyMDIwIGF0IDc6NDEgQU0gTWlx
dWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBIaSBSb24s
Cj4KPiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiB3cm90
ZSBvbiBNb24sIDI3IEFwcgo+IDIwMjAgMTE6NDk6NTQgKzAyMDA6Cj4KPiA+IE9uIE1vbiwgMjcg
QXByIDIwMjAgMTE6MTY6MjMgKzAyMDAKPiA+IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemls
bG9uQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4KPiA+ID4gSGkgYWxsLAo+ID4gPgo+ID4gPiBP
biBXZWQsIDEgQXByIDIwMjAgMDk6NDE6NDggKzAyMDAKPiA+ID4gTWlxdWVsIFJheW5hbCA8bWlx
dWVsLnJheW5hbEBib290bGluLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+ID4gSGkgcm9uLAo+ID4g
PiA+Cj4gPiA+ID4gcm9uIG1pbm5pY2ggPHJtaW5uaWNoQGdtYWlsLmNvbT4gd3JvdGUgb24gTW9u
LCAzMCBNYXIgMjAyMCAwODo1MzoyMgo+ID4gPiA+IC0wNzAwOgo+ID4gPiA+Cj4gPiA+ID4gPiBP
biBNb24sIE1hciAzMCwgMjAyMCBhdCAxMjoyNyBBTSBNaXF1ZWwgUmF5bmFsCj4gPiA+ID4gPiA8
bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gPiBX
b3VsZCBpdCBiZSBoYXJkIHRvIHN1cHBvcnQgYW4gZXh0cmEgJzonIGFmdGVyIHRoZSBNVEQgZGV2
aWNlIG5hbWU/Cj4gPiA+ID4gPiA+IFRoaXMgd2F5IHdvdWxkIHdvdWxkIGFsbG93IGFueXRoaW5n
IGluc2lkZSB0aGUgb3B0aW9uYWwgJygnICcpJyBidXQKPiA+ID4gPiA+ID4gd291bGQga2VlcCB0
aGUgdHJhaWxpbmcgJzonLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiB0b1RheToKPiA+ID4gPiA+
ID4gICAgICAgICBtdGRwYXJ0cz1uYW1lOnBhcnQxLHBhcnQyCj4gPiA+ID4gPiA+Cj4gPiA+ID4g
PiA+IFNvOgo+ID4gPiA+ID4gPiAgICAgICAgIG10ZHBhcnRzPSgwMDAwOjAwOjFmLjUpOjI1MTY1
ODI0KEJJT1MpLC0oc3F1YXNoZnMpCj4gPiA+ID4gPgo+ID4gPiA+ID4KPiA+ID4gPiA+IEkgdGhv
dWdodCBhYm91dCB0aGF0ICc6JyB0b28uIEl0IGRvZXMgYWRkIGEgYml0IG1vcmUgdG8gdGhlIGNv
ZGUsIGFuZAo+ID4gPiA+ID4gYSBiaXQgbW9yZSBpbiB0aGUgd2F5IG9mIGVycm9yIGNhc2VzLiBJ
IGFsd2F5cyB3b3JyeSwgd2hlbiBjb2RlIGlzCj4gPiA+ID4gPiBnb2luZyBpbnRvIGZsYXNoLAo+
ID4gPiA+ID4gYWJvdXQgZXJyb3JzIHdoZXJlIHNvbWV0aGluZyBsb29rcyBjbG9zZSB0byByaWdo
dCBidXQgaXMgd3JvbmcuIChzYXlzCj4gPiA+ID4gPiB0aGUgcGVyc29uIHdobyBqdXN0IHR5cGVk
IGl0IGluc3RlYWQgb2YgaXMgYSBmZXcgdGltZXMgOi0pCj4gPiA+ID4gPgo+ID4gPiA+ID4gV2hh
dCBpZiB3ZSBkaWQgdGhpczoKPiA+ID4gPiA+IG10ZHBhcnRzPVswMDAwOjAwOjFmLjVdMjUxNjU4
MjQoQklPUyksLShzcXVhc2hmcykKPiA+ID4gPiA+Cj4gPiA+ID4gPiBJcyB0aGUgIl0iICdlbm91
Z2ggZGlmZmVyZW50JyB0aGF0IHdlIGRvIG5vdCBuZWVkIHRoZSAnOic/Cj4gPiA+ID4gPgo+ID4g
PiA+ID4gSSBraW5kIG9mIGxpa2UgdGhlIFtdIGJldHRlciBhbnl3YXkgYXMgaXQgbWFrZXMgdGhl
IG10ZGlkIHN0YW5kIG91dCBhCj4gPiA+ID4gPiBiaXQgbW9yZSBmcm9tIHRoZSBwYXJ0IG5hbWVz
PyBCdXQgaXMgaXQgZW5vdWdoIHRoYXQgd2UgZG9uJ3QgbmVlZCB0aGUKPiA+ID4gPiA+ICc6Jz8g
V291bGQgeW91IHN0aWxsIHByZWZlciB0aGUgKCkgYXMgb3Bwb3NlZCB0byB0aGUgW10/Cj4gPiA+
ID4KPiA+ID4gPiBJIGxpa2UgdGhlIFtdIGFzIHdlbGwsIG1heWJlIG1vcmUgdGhhbiAoKSBiZWNh
dXNlIGF0IGxlYXN0IGl0IGRvZXMgbm90Cj4gPiA+ID4gY29uZmxpY3Qgd2l0aCB0aGUgcGFydGl0
aW9uIG5hbWVzLiBCdXQgSSByZWFsbHkgcHJlZmVyIGtlZXBpbmcgdGhlIDogaWYKPiA+ID4gPiB0
aGUgY29kZSBpcyBzdGlsbCByZWFkYWJsZS4KPiA+ID4gPgo+ID4gPiA+IEl0IGlzIG11Y2ggZWFz
aWVyIHRvIGV4cGxhaW4gdG8gcGVvcGxlIDogImlmIHlvdSBoYXZlIGEgOiBpbiB0aGUgbmFtZSwK
PiA+ID4gPiBlbmNsb3NlIGl0IHdpdGggW10iLgo+ID4gPgo+ID4gPiBTb3JyeSB0byBjaGltZSBp
biBzbyBsYXRlIGluIHRoZSBkaXNjdXNzaW9uLCBidXQgSSB3b25kZXIgaWYgYW55IG9mCj4gPiA+
IHRoYXQgaXMgbmVjZXNzYXJ5LiBDYW4ndCB3ZSBqdXN0IHNwbGl0IHRoZSBzdHJpbmcgcGVyIGRl
dmljZSAoc3BsaXQKPiA+ID4gc3RyaW5ncyBldmVyeSB0aW1lIHdlIHNlZSBhICc7JyksIGFuZCB0
aGVuIGZpbmQgdGhlIGxhc3QgJzonIGluIGVhY2ggb2YKPiA+ID4gdGhvc2Ugc3RyaW5ncyBhbmQg
Y29uc2lkZXIgZXZlcnl0aGluZyBiZWZvcmUgdGhhdCBsYXN0ICc6JyB0byBiZSB0aGUgTVRECj4g
PiA+IG5hbWUuIFRoYXQgc2hvdWxkIHdvcmsgZXZlbiBpZiB0aGUgTVREIG5hbWUgY29udGFpbnMg
b25lIG9yIG1vcmUgJzonLgo+ID4gPgo+ID4gPiBEb24ndCBnZXQgbWUgd3JvbmcsIEknbSBwZXJm
ZWN0bHkgZmluZSB3aXRoIGludGVsIGVuY2xvc2luZyB0aGUgUENJCj4gPiA+IGFkZHJlc3MgaW4g
W10gdG8gbWFrZSBpdCBjbGVhcmVyLCBidXQgSSBzZWUgdGhhdCBvdGhlciBkcml2ZXJzIHVzZSAn
OicKPiA+ID4gaW4gdGhlaXIgTVREIGRldmljZSBuYW1lcyAodGhlIGF0bWVsIHJhdyBOQU5EIGNv
bnRyb2xsZXIgZHJpdmVyIHRvIG5hbWUKPiA+ID4gb25lKSwgc28gSSB0aGluayBpdCdkIGJlIGdv
b2QgdG8gbWFrZSB0aGUgbXRkIHBhcnQgcGFyc2luZyByb2J1c3QgdG8KPiA+ID4gdGhpcyB1c2Ug
Y2FzZS4KPiA+Cj4gPiBJIGp1c3QgZ2F2ZSBpdCBhIHRyeSBhbmQgdGhlIGZvbGxvd2luZyBwYXRj
aCBzaG91bGQgc29sdmUgdGhlIHByb2JsZW0KPiA+IChvbmx5IGNvbXBpbGUtdGVzdGVkKS4gQXMg
SSBzYWlkIHByZXZpb3VzbHksIGl0IGRvZXNuJ3QgcHJldmVudCB5b3UgZnJvbQo+ID4gZW5jbG9z
aW5nIHRoZSBQQ0kgYWRkcmVzcyBpbiBbXSBpZiB5b3UgdGhpbmsgaXQncyBjbGVhcmVyLCBidXQg
SSB0aGluawo+ID4gdGhlIHByb2JsZW0gc2hvdWxkIGJlIGFkZHJlc3NlZCBpbiB0aGUgY21kbGlu
ZSBwYXJzZXIgYW55d2F5Lgo+ID4KPiA+IC0tLT44LS0tCj4gPiBGcm9tIDA4YjMwNTk3ZGQ3M2Vm
ZDljNGM4ZDE5MDZhYjAyYTk1NDA4NzU0MTkgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCj4gPiBG
cm9tOiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+ID4g
RGF0ZTogTW9uLCAyNyBBcHIgMjAyMCAxMTo0NDo1MCArMDIwMAo+ID4gU3ViamVjdDogW1BBVENI
XSBtdGQ6IHBhcnNlcjogY21kbGluZTogU3VwcG9ydCBNVEQgbmFtZXMgY29udGFpbmluZyBvbmUg
b3IKPiA+ICBtb3JlIGNvbG9ucwo+ID4KPiA+IExvb2tzIGxpa2Ugc29tZSBkcml2ZXJzIGRlZmlu
ZSBNVEQgbmFtZXMgd2l0aCBhIGNvbG9uIGluIGl0LCB0aHVzCj4gPiBtYWtpbmcgbXRkcGFydD0g
cGFyc2luZyBpbXBvc3NpYmxlLiBMZXQncyBmaXggdGhlIHBhcnNlciB0byBncmFjZWZ1bGx5Cj4g
PiBoYW5kbGUgdGhhdCBjYXNlOiB0aGUgbGFzdCAnOicgaW4gYSBwYXJ0aXRpb24gZGVmaW5pdGlv
biBzZXF1ZW5jZSBpcwo+ID4gY29uc2lkZXJlZCBpbnN0ZWFkIG9mIHRoZSBmaXJzdCBvbmUuCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29s
bGFib3JhLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvbXRkL3BhcnNlcnMvY21kbGluZXBhcnQu
YyB8IDIzICsrKysrKysrKysrKysrKysrKysrLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIwIGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bXRkL3BhcnNlcnMvY21kbGluZXBhcnQuYyBiL2RyaXZlcnMvbXRkL3BhcnNlcnMvY21kbGluZXBh
cnQuYwo+ID4gaW5kZXggYzg2ZjJkYjhjODgyLi4wNjI1YjI1NjIwY2EgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL210ZC9wYXJzZXJzL2NtZGxpbmVwYXJ0LmMKPiA+ICsrKyBiL2RyaXZlcnMvbXRk
L3BhcnNlcnMvY21kbGluZXBhcnQuYwo+ID4gQEAgLTIxOCwxMiArMjE4LDI5IEBAIHN0YXRpYyBp
bnQgbXRkcGFydF9zZXR1cF9yZWFsKGNoYXIgKnMpCj4gPiAgICAgICAgICAgICAgIHN0cnVjdCBj
bWRsaW5lX210ZF9wYXJ0aXRpb24gKnRoaXNfbXRkOwo+ID4gICAgICAgICAgICAgICBzdHJ1Y3Qg
bXRkX3BhcnRpdGlvbiAqcGFydHM7Cj4gPiAgICAgICAgICAgICAgIGludCBtdGRfaWRfbGVuLCBu
dW1fcGFydHM7Cj4gPiAtICAgICAgICAgICAgIGNoYXIgKnAsICptdGRfaWQ7Cj4gPiArICAgICAg
ICAgICAgIGNoYXIgKnAsICptdGRfaWQsICpzZW1pY29sOwo+ID4gKwo+ID4gKyAgICAgICAgICAg
ICAvKgo+ID4gKyAgICAgICAgICAgICAgKiBSZXBsYWNlIHRoZSBmaXJzdCAnOycgYnkgYSBOVUxM
IGNoYXIgc28gc3RycmNociBjYW4gd29yawo+ID4gKyAgICAgICAgICAgICAgKiBwcm9wZXJseS4K
PiA+ICsgICAgICAgICAgICAgICovCj4gPiArICAgICAgICAgICAgIHNlbWljb2wgPSBzdHJjaHIo
cywgJzsnKTsKPiA+ICsgICAgICAgICAgICAgaWYgKHNlbWljb2wpCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgKnNlbWljb2wgPSAnXDAnOwo+ID4KPiA+ICAgICAgICAgICAgICAgbXRkX2lkID0g
czsKPiA+Cj4gPiAtICAgICAgICAgICAgIC8qIGZldGNoIDxtdGQtaWQ+ICovCj4gPiAtICAgICAg
ICAgICAgIHAgPSBzdHJjaHIocywgJzonKTsKPiA+ICsgICAgICAgICAgICAgLyoKPiA+ICsgICAg
ICAgICAgICAgICogZmV0Y2ggPG10ZC1pZD4uIFdlIHVzZSBzdHJyY2hyIHRvIGlnbm9yZSBhbGwg
JzonIHRoYXQgY291bGQKPiA+ICsgICAgICAgICAgICAgICogYmUgcHJlc2VudCBpbiB0aGUgTVRE
IG5hbWUsIG9ubHkgdGhlIGxhc3Qgb25lIGlzIGludGVycHJldGVkCj4gPiArICAgICAgICAgICAg
ICAqIGFzIGFuIDxtdGQtaWQ+LzxwYXJ0LWRlZmluaXRpb24+IHNlcGFyYXRvci4KPiA+ICsgICAg
ICAgICAgICAgICovCj4gPiArICAgICAgICAgICAgIHAgPSBzdHJyY2hyKHMsICc6Jyk7Cj4gPiAr
Cj4gPiArICAgICAgICAgICAgIC8qIFJlc3RvcmUgdGhlICc7JyBub3cuICovCj4gPiArICAgICAg
ICAgICAgIGlmIChzZW1pY29sKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICpzZW1pY29sID0g
JzsnOwo+ID4gKwo+ID4gICAgICAgICAgICAgICBpZiAoIXApIHsKPiA+ICAgICAgICAgICAgICAg
ICAgICAgICBwcl9lcnIoIm5vIG10ZC1pZFxuIik7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAg
cmV0dXJuIC1FSU5WQUw7Cj4KPiBUaGlzIGlzIGFsc28gdGhlIGFwcHJvYWNoIEkgbGlrZSB0aGUg
bW9zdC4gSXQgYXZvaWRzIG1vZGlmeWluZyB0aGUKPiBzeW50YXggb24gdGhlIGNtZGxpbmUgKG5v
IGNoYW5nZSBpbiBCb290bG9hZGVycyBuZWVkZWQpIGFuZCB3ZSBkb24ndAo+IGhhdmUgdG8gY2hh
bmdlIHRoZSBwYXJzZXIgb2YgYSBkcml2ZXIgZXZlcnkgdGltZSBhIGNvbG9uIGlzIGluIHRoZQo+
IG5hbWUuCj4KPiBJIHdvdWxkIGxpa2UgdG8gZHJvcCAibXRkOiBwYXJzZXJzOiBzdXBwb3J0ICdb
XScgZmlyIHVkIHViIG10ZHBhcnRzIiBhcwo+IHdlbGxlIGFzICJtdGQ6IHNwaS1ub3I6IGNvbnRy
b2xsZXJzOiBpbnRlbC1zcGk6IEFkZCBzdXBwb3J0IGZvciBjb21tYW5kCj4gbGluZSBwYXJ0aXRp
b25zIiwgd2hhdCBkbyB5b3UgdGhpbms/Cj4KPgo+IFRoYW5rcywKPiBNaXF1w6hsCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVRE
IGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbXRkLwo=
