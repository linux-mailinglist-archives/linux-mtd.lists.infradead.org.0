Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AD51E547B
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 05:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqwjTwyxkT6Hh0NUTXxqqISb08QCpK+11BwJDmliFLA=; b=oj763UeT8Qg7CT
	c5JjaKaKdn3QR1xEyF8B/taRkdodzWWqb1UvuO1gxS6TRkglFubHSUMx16I6UAbcT/IcspzrgWtk3
	NamvqM2Ha+oTWBuAVesUnDIQ3vxbXYOWwLZMVqZpmGuFoWMRL5C+9ZCe27nFzZN/8et6vymMwvac/
	PYjmkPH91LbNtYSybw4kOvWZ8MCHkD5MZUC7qSEYCpir438JdI8sBWgFpycurgAjqYN64qFjw39Q/
	iCw7WIHqwScRXHrRhtAk3LVtBiLc2JM9ilIC/KLUUJa3WlKvA9kxZNZeQUfWwR6cjpqTWyAH8Ipsf
	RBwbtSVZCexfU+LqCS9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je94F-000221-43; Thu, 28 May 2020 03:18:51 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je943-000211-KA
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 03:18:41 +0000
Received: by mail-vs1-xe44.google.com with SMTP id 1so14952782vsl.9
 for <linux-mtd@lists.infradead.org>; Wed, 27 May 2020 20:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=P08I4zE8K6u9H+J6vCBj42y9SdfxKpWel+GAURaf55w=;
 b=Gd5v0fpc/RFo1Ol6DaU34Ei/B53PMuWccibMO+SiIRAsMklYODgeub7I1ybVBAtl83
 C2GZm0bqmHCqTQGRKsC7QBYB9cI6OxJUYpYspoBcW7PgrkZsYHtMEtLHvYzVmEIS6Wcz
 ZnryfEXgbfi0ZB+Tqog2Dn9yKwEdRwlaR1d4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=P08I4zE8K6u9H+J6vCBj42y9SdfxKpWel+GAURaf55w=;
 b=qUdw0Ar3yqjXUrGo0zudlRDLCQU8OWE1tkSTf5+z6FMvb2MpHZB/8oTM3v0wDTLeuT
 UW6J97bguOILxCY9Mju57izwI3rBgmXSV3644nbBseWHgvzODTmHE3ckxOKJ6uin0jcw
 WqnTN++fxEEGtSRt3+jom5g+JZSc3lHhEUTRFhBjti9Q7rMgl0eXItMtqUwRjFIN8NOX
 dlRnIedrlz3pvq2KUDknMmm8QPM+K1pgaGMVTb4BhjTJK0/wKepQkwGJKDetzZYFjfMW
 eWs01dRL401T99lLE4IClDYnbn2Qr+etLuHMWe1KOm7ZAGf33PffAAmXVXK6ko5NbPHE
 f34Q==
X-Gm-Message-State: AOAM533E6V9/IouACG8AKduN8CfBLe6dRqR/EID0dRiXPHwU6AcE2LbF
 wXXzTSNKPcaIlDGvijh5sS5mSN6GNuTV79X32ZzROBfS
X-Google-Smtp-Source: ABdhPJyafa1Y72O3e35J2AfGiJYhGkInFgYvxBjxjENSmn59akurnb83CPrUP7sxd4ACZgLhsri2ry65RkRI/k11er8=
X-Received: by 2002:a67:2e11:: with SMTP id u17mr582429vsu.1.1590635918188;
 Wed, 27 May 2020 20:18:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200528025503.24003-1-wuxy@bitland.com.cn>
 <CANMq1KDWp7ztviO+ZoXeEqek3uCzPDKjteahO32C3b-=OxerUQ@mail.gmail.com>
 <tencent_353523967C92024E04C83463@qq.com>
In-Reply-To: <tencent_353523967C92024E04C83463@qq.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 28 May 2020 11:18:27 +0800
Message-ID: <CANMq1KBvUMWj_gySA27WuxAOW3dT2-vGaKc=yn3ztR94WO-Gxw@mail.gmail.com>
Subject: Re: [PATCH] [v3]mtd: spi-nor: winbond: add 1.8v SPI NOR Flash IDs
To: =?UTF-8?B?5ZC05YW06IKyQjAxNzc5?= <wuxy@bitland.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_201839_683230_E976FFB4 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: wuxy <wuxy@bitland.corp-partner.google.com>,
 linux-mtd <linux-mtd@lists.infradead.org>, lkml <linux-kernel@vger.kernel.org>,
 stlin2 <stlin2@winbond.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMTE6MTYgQU0g5ZC05YW06IKyQjAxNzc5IDx3dXh5QGJp
dGxhbmQuY29tLmNuPiB3cm90ZToKPgo+Cj4gPgo+ID4gVGhpcyBwYXRjaCBjb3BpZWQgZnJvbTpo
dHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3BhdGNoLzExNTA3NTYvLAo+ID4gVGhlIG9yaWdp
bmFsIHBhdGNoIGlzIGludmFsaWQsc28gcmUtc3VibWl0IGEgbmV3IHBhdGNoIGZvciB0aGlzLgo+
Cj4gVGhpcyBiZWxvbmdzIGJlbG93IHRoZSAtLS0sIGJ1dCBJIGd1ZXNzIHRoZSBtYWludGFpbmVy
IGNhbiBoZWxwIHlvdSB3aXRoIHRoYXQuCj4gLS0tPlRoaXMgLS0tIGlzIGF1dG9tYXRpY2FsbHkg
Z2VuZXJhdGVkLCBpdCBsb29rcyBsaWtlIEkgY2FuJ3QgbW92ZSBpdCB0byBiZWxvdyAgLS0tCgpT
dXJlLCBidXQgeW91IGNhbiBhbHdheXMgZWRpdCB0aGUgbWVzc2FnZSBiZWZvcmUgeW91IHNlbmQg
aXQKKC0tYW5ub3RhdGUgcGFyYW1ldGVyIG9mIGdpdCBzZW5kLWVtYWlsKS4KCj4KPiAtLS0tLS0t
LS0tLS0tLS0tLS0gT3JpZ2luYWwgLS0tLS0tLS0tLS0tLS0tLS0tCj4gRnJvbTogICJOaWNvbGFz
IEJvaWNoYXQiPGRyaW5rY2F0QGNocm9taXVtLm9yZz47Cj4gRGF0ZTogIFRodSwgTWF5IDI4LCAy
MDIwIDExOjA2IEFNCj4gVG86ICAid3V4eSI8d3V4eUBiaXRsYW5kLmNvbS5jbj47Cj4gQ2M6ICAi
bGttbCI8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz47ICJsaW51eC1tdGQiPGxpbnV4LW10
ZEBsaXN0cy5pbmZyYWRlYWQub3JnPjsgInN0bGluMiI8c3RsaW4yQHdpbmJvbmQuY29tPjsgInd1
eHkiPHd1eHlAYml0bGFuZC5jb3JwLXBhcnRuZXIuZ29vZ2xlLmNvbT47Cj4gU3ViamVjdDogIFJl
OiBbUEFUQ0hdIFt2M11tdGQ6IHNwaS1ub3I6IHdpbmJvbmQ6IGFkZCAxLjh2IFNQSSBOT1IgRmxh
c2ggSURzCj4KPiBPbiBUaHUsIE1heSAyOCwgMjAyMCBhdCAxMDo1NSBBTSA8d3V4eUBiaXRsYW5k
LmNvbS5jbj4gd3JvdGU6Cj4gPgo+ID4gRnJvbTogd3V4eSA8d3V4eUBiaXRsYW5kLmNvcnAtcGFy
dG5lci5nb29nbGUuY29tPgo+ID4KPiA+IFdpbmJvbmQgaGFzIG5ldyAxLjhWIFNQSSBOT1IgRmxh
c2ggSURzLHdlIG5lZWQgdG8gdXNlIHRoZSBTUEkKPiA+IGZsYXNoIElEcyBpbiBrdWt1aSBzZXJp
ZXMsdGhpcyBwYXRjaCBjYW4gc3VwcG9ydCB0aGUgbmV3IGZsYXNoIElEcy4KPiA+Cj4gPiBURVNU
PWJvb3QgdG8gc2hlbGwsZ2V0IHRoZSBzcGkgaW5mb3JtYXRpb24gZnJvbSAnZG1lc2cnLgo+Cj4g
VEVTVD0gaXMgQ2hyb21pdW0gT1Mgc3BlY2lmaWMsIHlvdSBjYW4gZHJvcCB0aGlzIGxpbmUuCj4K
PiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBYaW5neXUgV3UgPHd1eHlAYml0bGFuZC5jb3JwLXBhcnRu
ZXIuZ29vZ2xlLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IFNUIExpbiA8c3RsaW4yQHdpbmJvbmQu
Y29tPgo+Cj4gVGVzdGVkLWJ5OiBOaWNvbGFzIEJvaWNoYXQgPGRyaW5rY2F0QGNocm9taXVtLm9y
Zz4KPgo+ID4KPiA+IFRoaXMgcGF0Y2ggY29waWVkIGZyb206aHR0cHM6Ly9wYXRjaHdvcmsub3ps
YWJzLm9yZy9wYXRjaC8xMTUwNzU2LywKPiA+IFRoZSBvcmlnaW5hbCBwYXRjaCBpcyBpbnZhbGlk
LHNvIHJlLXN1Ym1pdCBhIG5ldyBwYXRjaCBmb3IgdGhpcy4KPgo+IFRoaXMgYmVsb25ncyBiZWxv
dyB0aGUgLS0tLCBidXQgSSBndWVzcyB0aGUgbWFpbnRhaW5lciBjYW4gaGVscCB5b3Ugd2l0aCB0
aGF0Lgo+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL210ZC9zcGktbm9yL3dpbmJvbmQuYyB8IDkgKysr
KysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL210ZC9zcGktbm9yL3dpbmJvbmQuYyBiL2RyaXZlcnMvbXRkL3NwaS1u
b3Ivd2luYm9uZC5jCj4gPiBpbmRleCAxN2RlYWJhZDU3ZTEuLmNkYTRmODg0N2JkNiAxMDA2NDQK
PiA+IC0tLSBhL2RyaXZlcnMvbXRkL3NwaS1ub3Ivd2luYm9uZC5jCj4gPiArKysgYi9kcml2ZXJz
L210ZC9zcGktbm9yL3dpbmJvbmQuYwo+ID4gQEAgLTYxLDYgKzYxLDE1IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZmxhc2hfaW5mbyB3aW5ib25kX3BhcnRzW10gPSB7Cj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFNFQ1RfNEsgfCBTUElfTk9SX0RVQUxfUkVBRCB8IFNQSV9OT1JfUVVB
RF9SRUFEKSB9LAo+ID4gICAgICAgICB7ICJ3MjVtNTEyanYiLCBJTkZPKDB4ZWY3MTE5LCAwLCA2
NCAqIDEwMjQsIDEwMjQsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU0VDVF80SyB8
IFNQSV9OT1JfUVVBRF9SRUFEIHwgU1BJX05PUl9EVUFMX1JFQUQpIH0sCj4gPiArICAgICAgIHsg
IncyNXE2NGp3eHhJTSIsIElORk8oMHhlZjgwMTcsIDAsIDY0ICogMTAyNCwgMTI4LAo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgIFNFQ1RfNEsgfCBTUElfTk9SX0RVQUxfUkVBRCB8IFNQ
SV9OT1JfUVVBRF9SRUFEIHwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBTUElfTk9S
X0hBU19MT0NLIHwgU1BJX05PUl9IQVNfVEIpIH0sCj4gPiArICAgICAgIHsgIncyNXExMjhqd3h4
SU0iLCBJTkZPKDB4ZWY4MDE4LCAwLCA2NCAqIDEwMjQsIDI1NiwKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICBTRUNUXzRLIHwgU1BJX05PUl9EVUFMX1JFQUQgfCBTUElfTk9SX1FVQURf
UkVBRCB8Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgU1BJX05PUl9IQVNfTE9DSyB8
IFNQSV9OT1JfSEFTX1RCKSB9LAo+ID4gKyAgICAgICB7ICJ3MjVxMjU2and4eElNIiwgSU5GTygw
eGVmODAxOSwgMCwgNjQgKiAxMDI0LCA1MTIsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgU0VDVF80SyB8IFNQSV9OT1JfRFVBTF9SRUFEIHwgU1BJX05PUl9RVUFEX1JFQUQgfAo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgIFNQSV9OT1JfSEFTX0xPQ0sgfCBTUElfTk9SX0hB
U19UQikgfSwKPiA+ICB9Owo+ID4KPiA+ICAvKioKPiA+IC0tCj4gPiAyLjIwLjEKPiA+Cj4gPgo+
ID4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
