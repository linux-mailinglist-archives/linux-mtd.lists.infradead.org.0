Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A9642CC7
	for <lists+linux-mtd@lfdr.de>; Wed, 12 Jun 2019 18:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9NeEvCwaAOftEINe/meTQV01PlEpdHcPFZQv1dGz9s=; b=nr/wwFhLKRjTfq
	xWKOZfMnxpzhl5wLMW+YrvMVR5IGY76CHeI8F/B5pMRVJL6a5TNzlTyBJsO/WVzlN5XeRab6VFW2q
	BbYm1T9RvYLbR1Y9Wp5igd8XiWU4kGIB2CBZjVmhEefb0W2VmQ4ADVnLNS4Suyclh2zcjd23GhIZ1
	jzOMKvBuEXDHVmHzkpAAOR+RJrlFF4EJy4wf7Pk1KwE1SCCbVcPuhA2vJGVEix7/yOIDrNZ60+FVr
	I7xTjlvpyvAxX7Ifow6OrV/jdcXKIZyvOXY/KRndbXZJNmyiyyPRJGvZShsl1rvzxb2TwLAIx4oQW
	8AyWqkDIIYf+CJyr8ARQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb6V9-000738-Ie; Wed, 12 Jun 2019 16:53:31 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb6Ut-00071u-H6
 for linux-mtd@lists.infradead.org; Wed, 12 Jun 2019 16:53:17 +0000
Received: by mail-ot1-x343.google.com with SMTP id r6so11818771oti.3
 for <linux-mtd@lists.infradead.org>; Wed, 12 Jun 2019 09:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Utt7yd/jhFhTaCuX1hdK7UU+b9GrjSHb3kkE26rLlLU=;
 b=TrLK8pT0M6FBsAhWLU+x6v3MX9Sec9f3o/uJPtkAGp7NkiJpozlKZLt71t6pALQLS8
 EB0NygmClaqUvhKZSNOHk+K9iCQuUJ3an6IPR0+KGDXJyYULmd4uiDiuXxn5s0+kkz+V
 /2KbYPtdNW6bFa0RnlNz1/Ef9tGUWZVTGahHS0442VO0llaQrcKPg2VA1P82/qZ+NSAB
 JdItI5LmL4znxngLPC5Hk7NJodeq3FG2arNNa6nFC104dIiI5v1N06agO3PYu0EIzdb2
 vL08m1fw62d3gjIUsj6gpjNTrE6vrILFyDmqF0izTUrVnJ8VElTMR1/G9H0p107YgWeN
 BctQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Utt7yd/jhFhTaCuX1hdK7UU+b9GrjSHb3kkE26rLlLU=;
 b=pkmDS/kRNmzQCRUcNe5K1ungJW0LNkSCJy6oBlYAyADh6psBbaGGfCOUwIbJUeilzd
 iNr3JPs5H5Jv5bRb09yG/KN1kKNHviaywWf56obNAvGrFFn9NRWjtvZ0c+OwhfKBoHSh
 WnTHa8njMimddV8RmXJU5naRTb/r2zftw7NJ/Mb08NVsWg5JkcmGJaNz/ne91yFlaPrq
 nbqOiIxOsFaqzeGZ1G9AaWHXXE4eM1DhSVK0JIdT6j2ybD0I9/mhK5ZNdocm1Dc9PQ2Y
 7Iz4WXrylzZmTonX6zF37vQyNmsMc4NvCXn1+34fX4U64CRuUdR53cvi+jE5zU+UbNPx
 Tr9Q==
X-Gm-Message-State: APjAAAVz08/S7mClyYIJreK5D9YQTg5X05gJzFLjZQQ4HvKCVuL81RSS
 uFg0r0pmWAVr30I+7EvbSxp767lgsRiE10UIDZ0=
X-Google-Smtp-Source: APXvYqw+gAYDVKqxAHnskn6N5OcGBQFq7/8SyHIYYRFU07O0GIXtO6PzNwEk3NKgJO2CVj6GWA33/7RAClecdlMq7pA=
X-Received: by 2002:a9d:6959:: with SMTP id p25mr17575082oto.118.1560358393778; 
 Wed, 12 Jun 2019 09:53:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190612152120.GA17450@kroah.com>
In-Reply-To: <20190612152120.GA17450@kroah.com>
From: Mario Rugiero <mrugiero@gmail.com>
Date: Wed, 12 Jun 2019 13:52:23 -0300
Message-ID: <CAKKQwLSm5FchbBH43G=3hJJ3LdrcOxnEn10_cjES+MZotVCpng@mail.gmail.com>
Subject: Re: [PATCH] ubifs: no need to check return value of debugfs_create
 functions
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_095315_600918_F529419D 
X-CRM114-Status: GOOD (  25.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrugiero[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Adrian Hunter <adrian.hunter@intel.com>,
 Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SSB0aGluayB5b3Ugc2hvdWxkIHN0aWxsIGFib3J0IGlmIHRoZSBkaXJlY3RvcnkgZmFpbHMgdG8g
YmUgY3JlYXRlZC4KSWYgaXQncyBOVUxMLCBhbGwgbGF0ZXIgZmlsZSBjcmVhdGlvbiB3aWxsIGJl
IGF0dGVtcHRlZCBhdCByb290IGRlYnVnZnMuCk5vdCBvbmx5IHdpbGwgdGhleSBwb2xsdXRlIHRo
ZSBmaWxlc3lzdGVtLCBidXQgc2luY2UgdGhleSBhcmUgbm90CmF0dGFjaGVkIHRvIHRoZSBkaXJl
Y3Rvcnkgd2UgcmVtb3ZlIG9uIGNsZWFudXAsIHRoZXknbGwgbGVhay4KQWxzbywgc2luY2UgZmFp
bHVyZSBpcyBubyBsb25nZXIgcmVwb3J0ZWQsIGl0IG1heSBiZSBhIGdvb2QgaWRlYSB0bwpsb2cg
dGhhdCBmYWlsdXJlLgoKRWwgbWnDqS4sIDEyIGp1bi4gMjAxOSBhIGxhcyAxMjoyMSwgR3JlZyBL
cm9haC1IYXJ0bWFuCig8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+KSBlc2NyaWJpw7M6Cj4K
PiBXaGVuIGNhbGxpbmcgZGVidWdmcyBmdW5jdGlvbnMsIHRoZXJlIGlzIG5vIG5lZWQgdG8gZXZl
ciBjaGVjayB0aGUKPiByZXR1cm4gdmFsdWUuICBUaGUgZnVuY3Rpb24gY2FuIHdvcmsgb3Igbm90
LCBidXQgdGhlIGNvZGUgbG9naWMgc2hvdWxkCj4gbmV2ZXIgZG8gc29tZXRoaW5nIGRpZmZlcmVu
dCBiYXNlZCBvbiB0aGlzLgo+Cj4gQ2M6IFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2Qu
YXQ+Cj4gQ2M6IEFydGVtIEJpdHl1dHNraXkgPGRlZGVraW5kMUBnbWFpbC5jb20+Cj4gQ2M6IEFk
cmlhbiBIdW50ZXIgPGFkcmlhbi5odW50ZXJAaW50ZWwuY29tPgo+IENjOiBsaW51eC1tdGRAbGlz
dHMuaW5mcmFkZWFkLm9yZwo+IFNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3Jl
Z2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4gLS0tCj4gIGZzL3ViaWZzL2RlYnVnLmMgfCAxNjcg
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgZnMvdWJp
ZnMvZGVidWcuaCB8ICAgNCArLQo+ICBmcy91Ymlmcy9zdXBlci5jIHwgICA5ICstLQo+ICAzIGZp
bGVzIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKyksIDEzNSBkZWxldGlvbnMoLSkKPgo+IGRpZmYg
LS1naXQgYS9mcy91Ymlmcy9kZWJ1Zy5jIGIvZnMvdWJpZnMvZGVidWcuYwo+IGluZGV4IDNhMjYx
MzAzOGU4OC4uNTdlNmZjYjA0M2NhIDEwMDY0NAo+IC0tLSBhL2ZzL3ViaWZzL2RlYnVnLmMKPiAr
KysgYi9mcy91Ymlmcy9kZWJ1Zy5jCj4gQEAgLTI4MTIsMTE1ICsyODEyLDY5IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIGRmc19mb3BzID0gewo+ICAgKiBkYmdfZGVidWdm
c19pbml0X2ZzIC0gaW5pdGlhbGl6ZSBkZWJ1Z2ZzIGZvciBVQklGUyBpbnN0YW5jZS4KPiAgICog
QGM6IFVCSUZTIGZpbGUtc3lzdGVtIGRlc2NyaXB0aW9uIG9iamVjdAo+ICAgKgo+IC0gKiBUaGlz
IGZ1bmN0aW9uIGNyZWF0ZXMgYWxsIGRlYnVnZnMgZmlsZXMgZm9yIHRoaXMgaW5zdGFuY2Ugb2Yg
VUJJRlMuIFJldHVybnMKPiAtICogemVybyBpbiBjYXNlIG9mIHN1Y2Nlc3MgYW5kIGEgbmVnYXRp
dmUgZXJyb3IgY29kZSBpbiBjYXNlIG9mIGZhaWx1cmUuCj4gKyAqIFRoaXMgZnVuY3Rpb24gY3Jl
YXRlcyBhbGwgZGVidWdmcyBmaWxlcyBmb3IgdGhpcyBpbnN0YW5jZSBvZiBVQklGUy4KPiAgICoK
PiAgICogTm90ZSwgdGhlIG9ubHkgcmVhc29uIHdlIGhhdmUgbm90IG1lcmdlZCB0aGlzIGZ1bmN0
aW9uIHdpdGggdGhlCj4gICAqICd1Ymlmc19kZWJ1Z2dpbmdfaW5pdCgpJyBmdW5jdGlvbiBpcyBi
ZWNhdXNlIGl0IGlzIGJldHRlciB0byBpbml0aWFsaXplCj4gICAqIGRlYnVnZnMgaW50ZXJmYWNl
cyBhdCB0aGUgdmVyeSBlbmQgb2YgdGhlIG1vdW50IHByb2Nlc3MsIGFuZCByZW1vdmUgdGhlbSBh
dAo+ICAgKiB0aGUgdmVyeSBiZWdpbm5pbmcgb2YgdGhlIG1vdW50IHByb2Nlc3MuCj4gICAqLwo+
IC1pbnQgZGJnX2RlYnVnZnNfaW5pdF9mcyhzdHJ1Y3QgdWJpZnNfaW5mbyAqYykKPiArdm9pZCBk
YmdfZGVidWdmc19pbml0X2ZzKHN0cnVjdCB1Ymlmc19pbmZvICpjKQo+ICB7Cj4gICAgICAgICBp
bnQgZXJyLCBuOwo+ICAgICAgICAgY29uc3QgY2hhciAqZm5hbWU7Cj4gLSAgICAgICBzdHJ1Y3Qg
ZGVudHJ5ICpkZW50Owo+ICAgICAgICAgc3RydWN0IHViaWZzX2RlYnVnX2luZm8gKmQgPSBjLT5k
Ymc7Cj4KPiAtICAgICAgIGlmICghSVNfRU5BQkxFRChDT05GSUdfREVCVUdfRlMpKQo+IC0gICAg
ICAgICAgICAgICByZXR1cm4gMDsKPiAtCj4gICAgICAgICBuID0gc25wcmludGYoZC0+ZGZzX2Rp
cl9uYW1lLCBVQklGU19ERlNfRElSX0xFTiArIDEsIFVCSUZTX0RGU19ESVJfTkFNRSwKPiAgICAg
ICAgICAgICAgICAgICAgICBjLT52aS51YmlfbnVtLCBjLT52aS52b2xfaWQpOwo+ICAgICAgICAg
aWYgKG4gPT0gVUJJRlNfREZTX0RJUl9MRU4pIHsKPiAgICAgICAgICAgICAgICAgLyogVGhlIGFy
cmF5IHNpemUgaXMgdG9vIHNtYWxsICovCj4gICAgICAgICAgICAgICAgIGZuYW1lID0gVUJJRlNf
REZTX0RJUl9OQU1FOwo+IC0gICAgICAgICAgICAgICBkZW50ID0gRVJSX1BUUigtRUlOVkFMKTsK
PiAtICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4gKyAgICAgICAgICAgICAgIHJldHVybjsKPiAg
ICAgICAgIH0KPgo+ICAgICAgICAgZm5hbWUgPSBkLT5kZnNfZGlyX25hbWU7Cj4gLSAgICAgICBk
ZW50ID0gZGVidWdmc19jcmVhdGVfZGlyKGZuYW1lLCBkZnNfcm9vdGRpcik7Cj4gLSAgICAgICBp
ZiAoSVNfRVJSX09SX05VTEwoZGVudCkpCj4gLSAgICAgICAgICAgICAgIGdvdG8gb3V0Owo+IC0g
ICAgICAgZC0+ZGZzX2RpciA9IGRlbnQ7Cj4gKyAgICAgICBkLT5kZnNfZGlyID0gZGVidWdmc19j
cmVhdGVfZGlyKGZuYW1lLCBkZnNfcm9vdGRpcik7Cj4KPiAgICAgICAgIGZuYW1lID0gImR1bXBf
bHByb3BzIjsKPiAtICAgICAgIGRlbnQgPSBkZWJ1Z2ZzX2NyZWF0ZV9maWxlKGZuYW1lLCBTX0lX
VVNSLCBkLT5kZnNfZGlyLCBjLCAmZGZzX2ZvcHMpOwo+IC0gICAgICAgaWYgKElTX0VSUl9PUl9O
VUxMKGRlbnQpKQo+IC0gICAgICAgICAgICAgICBnb3RvIG91dF9yZW1vdmU7Cj4gLSAgICAgICBk
LT5kZnNfZHVtcF9scHJvcHMgPSBkZW50Owo+ICsgICAgICAgZC0+ZGZzX2R1bXBfbHByb3BzID0g
ZGVidWdmc19jcmVhdGVfZmlsZShmbmFtZSwgU19JV1VTUiwgZC0+ZGZzX2RpciwgYywKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmRmc19mb3BzKTsK
Pgo+ICAgICAgICAgZm5hbWUgPSAiZHVtcF9idWRnIjsKPiAtICAgICAgIGRlbnQgPSBkZWJ1Z2Zz
X2NyZWF0ZV9maWxlKGZuYW1lLCBTX0lXVVNSLCBkLT5kZnNfZGlyLCBjLCAmZGZzX2ZvcHMpOwo+
IC0gICAgICAgaWYgKElTX0VSUl9PUl9OVUxMKGRlbnQpKQo+IC0gICAgICAgICAgICAgICBnb3Rv
IG91dF9yZW1vdmU7Cj4gLSAgICAgICBkLT5kZnNfZHVtcF9idWRnID0gZGVudDsKPiArICAgICAg
IGQtPmRmc19kdW1wX2J1ZGcgPSBkZWJ1Z2ZzX2NyZWF0ZV9maWxlKGZuYW1lLCBTX0lXVVNSLCBk
LT5kZnNfZGlyLCBjLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgJmRmc19mb3BzKTsKPgo+ICAgICAgICAgZm5hbWUgPSAiZHVtcF90bmMiOwo+IC0gICAg
ICAgZGVudCA9IGRlYnVnZnNfY3JlYXRlX2ZpbGUoZm5hbWUsIFNfSVdVU1IsIGQtPmRmc19kaXIs
IGMsICZkZnNfZm9wcyk7Cj4gLSAgICAgICBpZiAoSVNfRVJSX09SX05VTEwoZGVudCkpCj4gLSAg
ICAgICAgICAgICAgIGdvdG8gb3V0X3JlbW92ZTsKPiAtICAgICAgIGQtPmRmc19kdW1wX3RuYyA9
IGRlbnQ7Cj4gKyAgICAgICBkLT5kZnNfZHVtcF90bmMgPSBkZWJ1Z2ZzX2NyZWF0ZV9maWxlKGZu
YW1lLCBTX0lXVVNSLCBkLT5kZnNfZGlyLCBjLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAmZGZzX2ZvcHMpOwo+Cj4gICAgICAgICBmbmFtZSA9ICJjaGtf
Z2VuZXJhbCI7Cj4gLSAgICAgICBkZW50ID0gZGVidWdmc19jcmVhdGVfZmlsZShmbmFtZSwgU19J
UlVTUiB8IFNfSVdVU1IsIGQtPmRmc19kaXIsIGMsCj4gLSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAmZGZzX2ZvcHMpOwo+IC0gICAgICAgaWYgKElTX0VSUl9PUl9OVUxMKGRlbnQp
KQo+IC0gICAgICAgICAgICAgICBnb3RvIG91dF9yZW1vdmU7Cj4gLSAgICAgICBkLT5kZnNfY2hr
X2dlbiA9IGRlbnQ7Cj4gKyAgICAgICBkLT5kZnNfY2hrX2dlbiA9IGRlYnVnZnNfY3JlYXRlX2Zp
bGUoZm5hbWUsIFNfSVJVU1IgfCBTX0lXVVNSLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGQtPmRmc19kaXIsIGMsICZkZnNfZm9wcyk7Cj4KPiAgICAgICAg
IGZuYW1lID0gImNoa19pbmRleCI7Cj4gLSAgICAgICBkZW50ID0gZGVidWdmc19jcmVhdGVfZmls
ZShmbmFtZSwgU19JUlVTUiB8IFNfSVdVU1IsIGQtPmRmc19kaXIsIGMsCj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAmZGZzX2ZvcHMpOwo+IC0gICAgICAgaWYgKElTX0VSUl9P
Ul9OVUxMKGRlbnQpKQo+IC0gICAgICAgICAgICAgICBnb3RvIG91dF9yZW1vdmU7Cj4gLSAgICAg
ICBkLT5kZnNfY2hrX2luZGV4ID0gZGVudDsKPiArICAgICAgIGQtPmRmc19jaGtfaW5kZXggPSBk
ZWJ1Z2ZzX2NyZWF0ZV9maWxlKGZuYW1lLCBTX0lSVVNSIHwgU19JV1VTUiwKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGQtPmRmc19kaXIsIGMsICZkZnNf
Zm9wcyk7Cj4KPiAgICAgICAgIGZuYW1lID0gImNoa19vcnBoYW5zIjsKPiAtICAgICAgIGRlbnQg
PSBkZWJ1Z2ZzX2NyZWF0ZV9maWxlKGZuYW1lLCBTX0lSVVNSIHwgU19JV1VTUiwgZC0+ZGZzX2Rp
ciwgYywKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZkZnNfZm9wcyk7Cj4g
LSAgICAgICBpZiAoSVNfRVJSX09SX05VTEwoZGVudCkpCj4gLSAgICAgICAgICAgICAgIGdvdG8g
b3V0X3JlbW92ZTsKPiAtICAgICAgIGQtPmRmc19jaGtfb3JwaCA9IGRlbnQ7Cj4gKyAgICAgICBk
LT5kZnNfY2hrX29ycGggPSBkZWJ1Z2ZzX2NyZWF0ZV9maWxlKGZuYW1lLCBTX0lSVVNSIHwgU19J
V1VTUiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZC0+
ZGZzX2RpciwgYywgJmRmc19mb3BzKTsKPgo+ICAgICAgICAgZm5hbWUgPSAiY2hrX2xwcm9wcyI7
Cj4gLSAgICAgICBkZW50ID0gZGVidWdmc19jcmVhdGVfZmlsZShmbmFtZSwgU19JUlVTUiB8IFNf
SVdVU1IsIGQtPmRmc19kaXIsIGMsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAmZGZzX2ZvcHMpOwo+IC0gICAgICAgaWYgKElTX0VSUl9PUl9OVUxMKGRlbnQpKQo+IC0gICAg
ICAgICAgICAgICBnb3RvIG91dF9yZW1vdmU7Cj4gLSAgICAgICBkLT5kZnNfY2hrX2xwcm9wcyA9
IGRlbnQ7Cj4gKyAgICAgICBkLT5kZnNfY2hrX2xwcm9wcyA9IGRlYnVnZnNfY3JlYXRlX2ZpbGUo
Zm5hbWUsIFNfSVJVU1IgfCBTX0lXVVNSLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGQtPmRmc19kaXIsIGMsICZkZnNfZm9wcyk7Cj4KPiAgICAgICAg
IGZuYW1lID0gImNoa19mcyI7Cj4gLSAgICAgICBkZW50ID0gZGVidWdmc19jcmVhdGVfZmlsZShm
bmFtZSwgU19JUlVTUiB8IFNfSVdVU1IsIGQtPmRmc19kaXIsIGMsCj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAmZGZzX2ZvcHMpOwo+IC0gICAgICAgaWYgKElTX0VSUl9PUl9O
VUxMKGRlbnQpKQo+IC0gICAgICAgICAgICAgICBnb3RvIG91dF9yZW1vdmU7Cj4gLSAgICAgICBk
LT5kZnNfY2hrX2ZzID0gZGVudDsKPiArICAgICAgIGQtPmRmc19jaGtfZnMgPSBkZWJ1Z2ZzX2Ny
ZWF0ZV9maWxlKGZuYW1lLCBTX0lSVVNSIHwgU19JV1VTUiwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGQtPmRmc19kaXIsIGMsICZkZnNfZm9wcyk7Cj4KPiAg
ICAgICAgIGZuYW1lID0gInRzdF9yZWNvdmVyeSI7Cj4gLSAgICAgICBkZW50ID0gZGVidWdmc19j
cmVhdGVfZmlsZShmbmFtZSwgU19JUlVTUiB8IFNfSVdVU1IsIGQtPmRmc19kaXIsIGMsCj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmZGZzX2ZvcHMpOwo+IC0gICAgICAgaWYg
KElTX0VSUl9PUl9OVUxMKGRlbnQpKQo+IC0gICAgICAgICAgICAgICBnb3RvIG91dF9yZW1vdmU7
Cj4gLSAgICAgICBkLT5kZnNfdHN0X3JjdnJ5ID0gZGVudDsKPiArICAgICAgIGQtPmRmc190c3Rf
cmN2cnkgPSBkZWJ1Z2ZzX2NyZWF0ZV9maWxlKGZuYW1lLCBTX0lSVVNSIHwgU19JV1VTUiwKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGQtPmRmc19kaXIs
IGMsICZkZnNfZm9wcyk7Cj4KPiAgICAgICAgIGZuYW1lID0gInJvX2Vycm9yIjsKPiAtICAgICAg
IGRlbnQgPSBkZWJ1Z2ZzX2NyZWF0ZV9maWxlKGZuYW1lLCBTX0lSVVNSIHwgU19JV1VTUiwgZC0+
ZGZzX2RpciwgYywKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZkZnNfZm9w
cyk7Cj4gLSAgICAgICBpZiAoSVNfRVJSX09SX05VTEwoZGVudCkpCj4gLSAgICAgICAgICAgICAg
IGdvdG8gb3V0X3JlbW92ZTsKPiAtICAgICAgIGQtPmRmc19yb19lcnJvciA9IGRlbnQ7Cj4gLQo+
IC0gICAgICAgcmV0dXJuIDA7Cj4gLQo+IC1vdXRfcmVtb3ZlOgo+IC0gICAgICAgZGVidWdmc19y
ZW1vdmVfcmVjdXJzaXZlKGQtPmRmc19kaXIpOwo+IC1vdXQ6Cj4gLSAgICAgICBlcnIgPSBkZW50
ID8gUFRSX0VSUihkZW50KSA6IC1FTk9ERVY7Cj4gLSAgICAgICB1Ymlmc19lcnIoYywgImNhbm5v
dCBjcmVhdGUgXCIlc1wiIGRlYnVnZnMgZmlsZSBvciBkaXJlY3RvcnksIGVycm9yICVkXG4iLAo+
IC0gICAgICAgICAgICAgICAgIGZuYW1lLCBlcnIpOwo+IC0gICAgICAgcmV0dXJuIGVycjsKPiAr
ICAgICAgIGQtPmRmc19yb19lcnJvciA9IGRlYnVnZnNfY3JlYXRlX2ZpbGUoZm5hbWUsIFNfSVJV
U1IgfCBTX0lXVVNSLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBkLT5kZnNfZGlyLCBjLCAmZGZzX2ZvcHMpOwo+ICB9Cj4KPiAgLyoqCj4gQEAgLTI5Mjks
OCArMjg4Myw3IEBAIGludCBkYmdfZGVidWdmc19pbml0X2ZzKHN0cnVjdCB1Ymlmc19pbmZvICpj
KQo+ICAgKi8KPiAgdm9pZCBkYmdfZGVidWdmc19leGl0X2ZzKHN0cnVjdCB1Ymlmc19pbmZvICpj
KQo+ICB7Cj4gLSAgICAgICBpZiAoSVNfRU5BQkxFRChDT05GSUdfREVCVUdfRlMpKQo+IC0gICAg
ICAgICAgICAgICBkZWJ1Z2ZzX3JlbW92ZV9yZWN1cnNpdmUoYy0+ZGJnLT5kZnNfZGlyKTsKPiAr
ICAgICAgIGRlYnVnZnNfcmVtb3ZlX3JlY3Vyc2l2ZShjLT5kYmctPmRmc19kaXIpOwo+ICB9Cj4K
PiAgc3RydWN0IHViaWZzX2dsb2JhbF9kZWJ1Z19pbmZvIHViaWZzX2RiZzsKPiBAQCAtMzAwNiw3
NSArMjk1OSwzOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyBkZnNfZ2xv
YmFsX2ZvcHMgPSB7Cj4gICAqCj4gICAqIFVCSUZTIHVzZXMgZGVidWdmcyBmaWxlLXN5c3RlbSB0
byBleHBvc2UgdmFyaW91cyBkZWJ1Z2dpbmcga25vYnMgdG8KPiAgICogdXNlci1zcGFjZS4gVGhp
cyBmdW5jdGlvbiBjcmVhdGVzICJ1YmlmcyIgZGlyZWN0b3J5IGluIHRoZSBkZWJ1Z2ZzCj4gLSAq
IGZpbGUtc3lzdGVtLiBSZXR1cm5zIHplcm8gaW4gY2FzZSBvZiBzdWNjZXNzIGFuZCBhIG5lZ2F0
aXZlIGVycm9yIGNvZGUgaW4KPiAtICogY2FzZSBvZiBmYWlsdXJlLgo+ICsgKiBmaWxlLXN5c3Rl
bS4KPiAgICovCj4gLWludCBkYmdfZGVidWdmc19pbml0KHZvaWQpCj4gK3ZvaWQgZGJnX2RlYnVn
ZnNfaW5pdCh2b2lkKQo+ICB7Cj4gLSAgICAgICBpbnQgZXJyOwo+ICAgICAgICAgY29uc3QgY2hh
ciAqZm5hbWU7Cj4gLSAgICAgICBzdHJ1Y3QgZGVudHJ5ICpkZW50Owo+IC0KPiAtICAgICAgIGlm
ICghSVNfRU5BQkxFRChDT05GSUdfREVCVUdfRlMpKQo+IC0gICAgICAgICAgICAgICByZXR1cm4g
MDsKPgo+ICAgICAgICAgZm5hbWUgPSAidWJpZnMiOwo+IC0gICAgICAgZGVudCA9IGRlYnVnZnNf
Y3JlYXRlX2RpcihmbmFtZSwgTlVMTCk7Cj4gLSAgICAgICBpZiAoSVNfRVJSX09SX05VTEwoZGVu
dCkpCj4gLSAgICAgICAgICAgICAgIGdvdG8gb3V0Owo+IC0gICAgICAgZGZzX3Jvb3RkaXIgPSBk
ZW50Owo+ICsgICAgICAgZGZzX3Jvb3RkaXIgPSBkZWJ1Z2ZzX2NyZWF0ZV9kaXIoZm5hbWUsIE5V
TEwpOwo+Cj4gICAgICAgICBmbmFtZSA9ICJjaGtfZ2VuZXJhbCI7Cj4gLSAgICAgICBkZW50ID0g
ZGVidWdmc19jcmVhdGVfZmlsZShmbmFtZSwgU19JUlVTUiB8IFNfSVdVU1IsIGRmc19yb290ZGly
LCBOVUxMLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmRmc19nbG9iYWxf
Zm9wcyk7Cj4gLSAgICAgICBpZiAoSVNfRVJSX09SX05VTEwoZGVudCkpCj4gLSAgICAgICAgICAg
ICAgIGdvdG8gb3V0X3JlbW92ZTsKPiAtICAgICAgIGRmc19jaGtfZ2VuID0gZGVudDsKPiArICAg
ICAgIGRmc19jaGtfZ2VuID0gZGVidWdmc19jcmVhdGVfZmlsZShmbmFtZSwgU19JUlVTUiB8IFNf
SVdVU1IsIGRmc19yb290ZGlyLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIE5VTEwsICZkZnNfZ2xvYmFsX2ZvcHMpOwo+Cj4gICAgICAgICBmbmFtZSA9ICJjaGtf
aW5kZXgiOwo+IC0gICAgICAgZGVudCA9IGRlYnVnZnNfY3JlYXRlX2ZpbGUoZm5hbWUsIFNfSVJV
U1IgfCBTX0lXVVNSLCBkZnNfcm9vdGRpciwgTlVMTCwKPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICZkZnNfZ2xvYmFsX2ZvcHMpOwo+IC0gICAgICAgaWYgKElTX0VSUl9PUl9O
VUxMKGRlbnQpKQo+IC0gICAgICAgICAgICAgICBnb3RvIG91dF9yZW1vdmU7Cj4gLSAgICAgICBk
ZnNfY2hrX2luZGV4ID0gZGVudDsKPiArICAgICAgIGRmc19jaGtfaW5kZXggPSBkZWJ1Z2ZzX2Ny
ZWF0ZV9maWxlKGZuYW1lLCBTX0lSVVNSIHwgU19JV1VTUiwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGRmc19yb290ZGlyLCBOVUxMLCAmZGZzX2dsb2JhbF9m
b3BzKTsKPgo+ICAgICAgICAgZm5hbWUgPSAiY2hrX29ycGhhbnMiOwo+IC0gICAgICAgZGVudCA9
IGRlYnVnZnNfY3JlYXRlX2ZpbGUoZm5hbWUsIFNfSVJVU1IgfCBTX0lXVVNSLCBkZnNfcm9vdGRp
ciwgTlVMTCwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZkZnNfZ2xvYmFs
X2ZvcHMpOwo+IC0gICAgICAgaWYgKElTX0VSUl9PUl9OVUxMKGRlbnQpKQo+IC0gICAgICAgICAg
ICAgICBnb3RvIG91dF9yZW1vdmU7Cj4gLSAgICAgICBkZnNfY2hrX29ycGggPSBkZW50Owo+ICsg
ICAgICAgZGZzX2Noa19vcnBoID0gZGVidWdmc19jcmVhdGVfZmlsZShmbmFtZSwgU19JUlVTUiB8
IFNfSVdVU1IsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRm
c19yb290ZGlyLCBOVUxMLCAmZGZzX2dsb2JhbF9mb3BzKTsKPgo+ICAgICAgICAgZm5hbWUgPSAi
Y2hrX2xwcm9wcyI7Cj4gLSAgICAgICBkZW50ID0gZGVidWdmc19jcmVhdGVfZmlsZShmbmFtZSwg
U19JUlVTUiB8IFNfSVdVU1IsIGRmc19yb290ZGlyLCBOVUxMLAo+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgJmRmc19nbG9iYWxfZm9wcyk7Cj4gLSAgICAgICBpZiAoSVNfRVJS
X09SX05VTEwoZGVudCkpCj4gLSAgICAgICAgICAgICAgIGdvdG8gb3V0X3JlbW92ZTsKPiAtICAg
ICAgIGRmc19jaGtfbHByb3BzID0gZGVudDsKPiArICAgICAgIGRmc19jaGtfbHByb3BzID0gZGVi
dWdmc19jcmVhdGVfZmlsZShmbmFtZSwgU19JUlVTUiB8IFNfSVdVU1IsCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGZzX3Jvb3RkaXIsIE5VTEwsICZkZnNf
Z2xvYmFsX2ZvcHMpOwo+Cj4gICAgICAgICBmbmFtZSA9ICJjaGtfZnMiOwo+IC0gICAgICAgZGVu
dCA9IGRlYnVnZnNfY3JlYXRlX2ZpbGUoZm5hbWUsIFNfSVJVU1IgfCBTX0lXVVNSLCBkZnNfcm9v
dGRpciwgTlVMTCwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZkZnNfZ2xv
YmFsX2ZvcHMpOwo+IC0gICAgICAgaWYgKElTX0VSUl9PUl9OVUxMKGRlbnQpKQo+IC0gICAgICAg
ICAgICAgICBnb3RvIG91dF9yZW1vdmU7Cj4gLSAgICAgICBkZnNfY2hrX2ZzID0gZGVudDsKPiAr
ICAgICAgIGRmc19jaGtfZnMgPSBkZWJ1Z2ZzX2NyZWF0ZV9maWxlKGZuYW1lLCBTX0lSVVNSIHwg
U19JV1VTUiwgZGZzX3Jvb3RkaXIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBOVUxMLCAmZGZzX2dsb2JhbF9mb3BzKTsKPgo+ICAgICAgICAgZm5hbWUgPSAidHN0
X3JlY292ZXJ5IjsKPiAtICAgICAgIGRlbnQgPSBkZWJ1Z2ZzX2NyZWF0ZV9maWxlKGZuYW1lLCBT
X0lSVVNSIHwgU19JV1VTUiwgZGZzX3Jvb3RkaXIsIE5VTEwsCj4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAmZGZzX2dsb2JhbF9mb3BzKTsKPiAtICAgICAgIGlmIChJU19FUlJf
T1JfTlVMTChkZW50KSkKPiAtICAgICAgICAgICAgICAgZ290byBvdXRfcmVtb3ZlOwo+IC0gICAg
ICAgZGZzX3RzdF9yY3ZyeSA9IGRlbnQ7Cj4gLQo+IC0gICAgICAgcmV0dXJuIDA7Cj4gLQo+IC1v
dXRfcmVtb3ZlOgo+IC0gICAgICAgZGVidWdmc19yZW1vdmVfcmVjdXJzaXZlKGRmc19yb290ZGly
KTsKPiAtb3V0Ogo+IC0gICAgICAgZXJyID0gZGVudCA/IFBUUl9FUlIoZGVudCkgOiAtRU5PREVW
Owo+IC0gICAgICAgcHJfZXJyKCJVQklGUyBlcnJvciAocGlkICVkKTogY2Fubm90IGNyZWF0ZSBc
IiVzXCIgZGVidWdmcyBmaWxlIG9yIGRpcmVjdG9yeSwgZXJyb3IgJWRcbiIsCj4gLSAgICAgICAg
ICAgICAgY3VycmVudC0+cGlkLCBmbmFtZSwgZXJyKTsKPiAtICAgICAgIHJldHVybiBlcnI7Cj4g
KyAgICAgICBkZnNfdHN0X3JjdnJ5ID0gZGVidWdmc19jcmVhdGVfZmlsZShmbmFtZSwgU19JUlVT
UiB8IFNfSVdVU1IsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBkZnNfcm9vdGRpciwgTlVMTCwgJmRmc19nbG9iYWxfZm9wcyk7Cj4gIH0KPgo+ICAvKioKPiBA
QCAtMzA4Miw4ICsyOTk4LDcgQEAgaW50IGRiZ19kZWJ1Z2ZzX2luaXQodm9pZCkKPiAgICovCj4g
IHZvaWQgZGJnX2RlYnVnZnNfZXhpdCh2b2lkKQo+ICB7Cj4gLSAgICAgICBpZiAoSVNfRU5BQkxF
RChDT05GSUdfREVCVUdfRlMpKQo+IC0gICAgICAgICAgICAgICBkZWJ1Z2ZzX3JlbW92ZV9yZWN1
cnNpdmUoZGZzX3Jvb3RkaXIpOwo+ICsgICAgICAgZGVidWdmc19yZW1vdmVfcmVjdXJzaXZlKGRm
c19yb290ZGlyKTsKPiAgfQo+Cj4gIHZvaWQgdWJpZnNfYXNzZXJ0X2ZhaWxlZChzdHJ1Y3QgdWJp
ZnNfaW5mbyAqYywgY29uc3QgY2hhciAqZXhwciwKPiBkaWZmIC0tZ2l0IGEvZnMvdWJpZnMvZGVi
dWcuaCBiL2ZzL3ViaWZzL2RlYnVnLmgKPiBpbmRleCA2NGM2OTc3YzE4OWIuLmM2YzhmMWI2MmFm
NSAxMDA2NDQKPiAtLS0gYS9mcy91Ymlmcy9kZWJ1Zy5oCj4gKysrIGIvZnMvdWJpZnMvZGVidWcu
aAo+IEBAIC0zMDksOSArMzA5LDkgQEAgaW50IGRiZ19sZWJfdW5tYXAoc3RydWN0IHViaWZzX2lu
Zm8gKmMsIGludCBsbnVtKTsKPiAgaW50IGRiZ19sZWJfbWFwKHN0cnVjdCB1Ymlmc19pbmZvICpj
LCBpbnQgbG51bSk7Cj4KPiAgLyogRGVidWdmcy1yZWxhdGVkIHN0dWZmICovCj4gLWludCBkYmdf
ZGVidWdmc19pbml0KHZvaWQpOwo+ICt2b2lkIGRiZ19kZWJ1Z2ZzX2luaXQodm9pZCk7Cj4gIHZv
aWQgZGJnX2RlYnVnZnNfZXhpdCh2b2lkKTsKPiAtaW50IGRiZ19kZWJ1Z2ZzX2luaXRfZnMoc3Ry
dWN0IHViaWZzX2luZm8gKmMpOwo+ICt2b2lkIGRiZ19kZWJ1Z2ZzX2luaXRfZnMoc3RydWN0IHVi
aWZzX2luZm8gKmMpOwo+ICB2b2lkIGRiZ19kZWJ1Z2ZzX2V4aXRfZnMoc3RydWN0IHViaWZzX2lu
Zm8gKmMpOwo+Cj4gICNlbmRpZiAvKiAhX19VQklGU19ERUJVR19IX18gKi8KPiBkaWZmIC0tZ2l0
IGEvZnMvdWJpZnMvc3VwZXIuYyBiL2ZzL3ViaWZzL3N1cGVyLmMKPiBpbmRleCAwNGI4ZWNmZDM0
NzAuLjI0Mjk5MDZiZDY4MSAxMDA2NDQKPiAtLS0gYS9mcy91Ymlmcy9zdXBlci5jCj4gKysrIGIv
ZnMvdWJpZnMvc3VwZXIuYwo+IEBAIC0xNDc3LDkgKzE0NzcsNyBAQCBzdGF0aWMgaW50IG1vdW50
X3ViaWZzKHN0cnVjdCB1Ymlmc19pbmZvICpjKQo+ICAgICAgICAgaWYgKGVycikKPiAgICAgICAg
ICAgICAgICAgZ290byBvdXRfaW5mb3M7Cj4KPiAtICAgICAgIGVyciA9IGRiZ19kZWJ1Z2ZzX2lu
aXRfZnMoYyk7Cj4gLSAgICAgICBpZiAoZXJyKQo+IC0gICAgICAgICAgICAgICBnb3RvIG91dF9p
bmZvczsKPiArICAgICAgIGRiZ19kZWJ1Z2ZzX2luaXRfZnMoYyk7Cj4KPiAgICAgICAgIGMtPm1v
dW50aW5nID0gMDsKPgo+IEBAIC0yMzY0LDkgKzIzNjIsNyBAQCBzdGF0aWMgaW50IF9faW5pdCB1
Ymlmc19pbml0KHZvaWQpCj4gICAgICAgICBpZiAoZXJyKQo+ICAgICAgICAgICAgICAgICBnb3Rv
IG91dF9zaHJpbmtlcjsKPgo+IC0gICAgICAgZXJyID0gZGJnX2RlYnVnZnNfaW5pdCgpOwo+IC0g
ICAgICAgaWYgKGVycikKPiAtICAgICAgICAgICAgICAgZ290byBvdXRfY29tcHI7Cj4gKyAgICAg
ICBkYmdfZGVidWdmc19pbml0KCk7Cj4KPiAgICAgICAgIGVyciA9IHJlZ2lzdGVyX2ZpbGVzeXN0
ZW0oJnViaWZzX2ZzX3R5cGUpOwo+ICAgICAgICAgaWYgKGVycikgewo+IEBAIC0yMzc4LDcgKzIz
NzQsNiBAQCBzdGF0aWMgaW50IF9faW5pdCB1Ymlmc19pbml0KHZvaWQpCj4KPiAgb3V0X2RiZzoK
PiAgICAgICAgIGRiZ19kZWJ1Z2ZzX2V4aXQoKTsKPiAtb3V0X2NvbXByOgo+ICAgICAgICAgdWJp
ZnNfY29tcHJlc3NvcnNfZXhpdCgpOwo+ICBvdXRfc2hyaW5rZXI6Cj4gICAgICAgICB1bnJlZ2lz
dGVyX3Nocmlua2VyKCZ1Ymlmc19zaHJpbmtlcl9pbmZvKTsKPiAtLQo+IDIuMjIuMAo+Cj4KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBM
aW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1tdGQvCg==
