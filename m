Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 289DA1D6D81
	for <lists+linux-mtd@lfdr.de>; Sun, 17 May 2020 23:39:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3zHLvY1fmuJkvGOEWlkcM9L9/xgBdoga3lcOFAjsD4=; b=ezOk8UcTS4g2M6
	ij6xC0P0LWnwP1/XSDtAT++7RaRDPdbhoMR9NtmlLc2l2Ja/QxMQmDh75WS5dnakbNcxeZshm9LnT
	1hgBcaMZcAQPPqNwhcd/MGnTlSlpQ8VUCvYGrEezYuPdJFAfUxTxilWRBObjF0+7FR0/bpWQv7eGH
	53Z5iQ9ySI26b4EcLw4PVgI2ovR8ltU5+83ESrXHzsB7GfyrvEQIQU1+z6OyTR4Zga/ggvCPZPiB9
	5TvWkG+QH7bVfif8Bh4uLezXcyFeE3GOTjcg5eqD6SPMUfLiCi3OMVohfbuCQqie75ERHvjORdz9E
	eyv7HBmLo1CSJFhM1p1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaR0D-00056q-MT; Sun, 17 May 2020 21:39:21 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaR06-00055c-0v
 for linux-mtd@lists.infradead.org; Sun, 17 May 2020 21:39:15 +0000
Received: by mail-qv1-xf44.google.com with SMTP id 59so3803120qva.13
 for <linux-mtd@lists.infradead.org>; Sun, 17 May 2020 14:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AM7Zd0MxslnqLot1MzBGMFBYbuX//qg2mFKMsl+GXdA=;
 b=QjJqxMSOxa+7rNqpVlN4ka8WO8uz2g8FKzSZ+7XQfrl4ZnMxnOCCWdP1dFasAdmuAj
 awGpC25Wv5I1Q3I3HRkRt5VCkCiNqKnbhdHWV/nqs/lUWXjrir9BS7bTixIzCdbfMdXU
 dO6rAkUj+l84sTt77Y/YQB1BOnpuM+2z5oNYUqplwQ3rHy3q6YWXHUaFCIO78+8mvAHd
 FieT0fHdqcH40CPzghUmrpHkGeRjx0dQ7f6KmtYBZEO5Ks9gmRDbrLFQ/r84WW7HyrFA
 +r3kXoq6aGe7po0s9z5ywqq8Eh81N+aKXSr9bP9PtBzsjkIA7qmXYvXgMaK3nF/Vogtw
 vOQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AM7Zd0MxslnqLot1MzBGMFBYbuX//qg2mFKMsl+GXdA=;
 b=IEfcZpnzT0d5m/kY/3oHQQZsMg6OkRf1XmKTR72B2tfoylH0XktzWGKYnNPbDTbcD7
 JMP/pNjWxloRJIbKqiE6BoMPWd1VBC7+ksFGawdTBmSnT5GDGwQWMj0iz32SdXMkGrcE
 tcmiBc/VdnmhCQtnKcS4JgbYFTUhetxAxC63SJda0rTfYlSF+5wv5M6DFT+IHFE60zd2
 HofG3F7MhSC884DrQcKn26AfYM6PXEgFlJP8Ki+0bc/7MZYF4VDmU3R0GFg4IqmLDWK7
 +v1CIWdQcPXrfXrDgbH5S3h3Sv777qlNBOAb/XzUunHFzDeCtmVFQUdYJR2kqghzjXsb
 XtKg==
X-Gm-Message-State: AOAM530hAFI1MFjbk4+G04oXtcnHxE0dwe9QjKruW5gGZsGfsmvFnur9
 beI6omNZIdffi4EJ+ufgM/UJTaD2Bj6depQsVS5vVw==
X-Google-Smtp-Source: ABdhPJwXU3h/f9ui36v++p/oav/xwWq3PX9W7HxRFV2aCFQvbfAIK+zN/BwaFzJKPXEcoif4EM3Cv2MplC67ZDb1eP8=
X-Received: by 2002:a05:6214:7cd:: with SMTP id
 bb13mr13270302qvb.17.1589751551767; 
 Sun, 17 May 2020 14:39:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200502055945.1008194-1-ebiggers@kernel.org>
 <20200504071644.GS5877@pengutronix.de>
 <20200515191704.GE1009@sol.localdomain>
 <568077266.223149.1589575814867.JavaMail.zimbra@nod.at>
In-Reply-To: <568077266.223149.1589575814867.JavaMail.zimbra@nod.at>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 17 May 2020 23:39:00 +0200
Message-ID: <CAFLxGvx3-QvXnjhdfrqvv3a46opdcN6fyQ2Yc2QJ57TetBwfiA@mail.gmail.com>
Subject: Re: [PATCH] ubifs: fix wrong use of crypto_shash_descsize()
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_143914_082712_579390CC 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Eric Biggers <ebiggers@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMTUsIDIwMjAgYXQgMTA6NTAgUE0gUmljaGFyZCBXZWluYmVyZ2VyIDxyaWNo
YXJkQG5vZC5hdD4gd3JvdGU6Cj4KPiAtLS0tLSBVcnNwcsO8bmdsaWNoZSBNYWlsIC0tLS0tCj4g
PiBWb246ICJFcmljIEJpZ2dlcnMiIDxlYmlnZ2Vyc0BrZXJuZWwub3JnPgo+ID4gQW46ICJTYXNj
aGEgSGF1ZXIiIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiwgInJpY2hhcmQiIDxyaWNoYXJkQG5v
ZC5hdD4KPiA+IENDOiAibGludXgtbXRkIiA8bGludXgtbXRkQGxpc3RzLmluZnJhZGVhZC5vcmc+
LCAiTGludXggQ3J5cHRvIE1haWxpbmcgTGlzdCIgPGxpbnV4LWNyeXB0b0B2Z2VyLmtlcm5lbC5v
cmc+LCAic3RhYmxlIgo+ID4gPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+Cj4gPiBHZXNlbmRldDog
RnJlaXRhZywgMTUuIE1haSAyMDIwIDIxOjE3OjA0Cj4gPiBCZXRyZWZmOiBSZTogW1BBVENIXSB1
YmlmczogZml4IHdyb25nIHVzZSBvZiBjcnlwdG9fc2hhc2hfZGVzY3NpemUoKQo+Cj4gPiBPbiBN
b24sIE1heSAwNCwgMjAyMCBhdCAwOToxNjo0NEFNICswMjAwLCBTYXNjaGEgSGF1ZXIgd3JvdGU6
Cj4gPj4gT24gRnJpLCBNYXkgMDEsIDIwMjAgYXQgMTA6NTk6NDVQTSAtMDcwMCwgRXJpYyBCaWdn
ZXJzIHdyb3RlOgo+ID4+ID4gRnJvbTogRXJpYyBCaWdnZXJzIDxlYmlnZ2Vyc0Bnb29nbGUuY29t
Pgo+ID4+ID4KPiA+PiA+IGNyeXB0b19zaGFzaF9kZXNjc2l6ZSgpIHJldHVybnMgdGhlIHNpemUg
b2YgdGhlIHNoYXNoX2Rlc2MgY29udGV4dAo+ID4+ID4gbmVlZGVkIHRvIGNvbXB1dGUgdGhlIGhh
c2gsIG5vdCB0aGUgc2l6ZSBvZiB0aGUgaGFzaCBpdHNlbGYuCj4gPj4gPgo+ID4+ID4gY3J5cHRv
X3NoYXNoX2RpZ2VzdHNpemUoKSB3b3VsZCBiZSBjb3JyZWN0LCBvciBhbHRlcm5hdGl2ZWx5IHVz
aW5nCj4gPj4gPiBjLT5oYXNoX2xlbiBhbmQgYy0+aG1hY19kZXNjX2xlbiB3aGljaCBhbHJlYWR5
IHN0b3JlIHRoZSBjb3JyZWN0IHZhbHVlcy4KPiA+PiA+IEJ1dCBhY3R1YWxseSBpdCdzIHNpbXBs
ZXIgdG8ganVzdCB1c2Ugc3RhY2sgYXJyYXlzLCBzbyBkbyB0aGF0IGluc3RlYWQuCj4gPj4gPgo+
ID4+ID4gRml4ZXM6IDQ5NTI1ZTVlZWNjYSAoInViaWZzOiBBZGQgaGVscGVyIGZ1bmN0aW9ucyBm
b3IgYXV0aGVudGljYXRpb24gc3VwcG9ydCIpCj4gPj4gPiBGaXhlczogZGE4ZWY2NWY5NTczICgi
dWJpZnM6IEF1dGhlbnRpY2F0ZSByZXBsYXllZCBqb3VybmFsIikKPiA+PiA+IENjOiA8c3RhYmxl
QHZnZXIua2VybmVsLm9yZz4gIyB2NC4yMCsKPiA+PiA+IENjOiBTYXNjaGEgSGF1ZXIgPHMuaGF1
ZXJAcGVuZ3V0cm9uaXguZGU+Cj4gPj4gPiBTaWduZWQtb2ZmLWJ5OiBFcmljIEJpZ2dlcnMgPGVi
aWdnZXJzQGdvb2dsZS5jb20+Cj4gPj4KPiA+PiBMb29rcyBiZXR0ZXIgdGhhdCB3YXksIHRoYW5r
cy4KPiA+Pgo+ID4+IEFja2VkLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXgu
ZGU+Cj4gPj4KPiA+Cj4gPiBSaWNoYXJkLCBjb3VsZCB5b3UgdGFrZSB0aGlzIHRocm91Z2ggdGhl
IHViaWZzIHRyZWUgZm9yIDUuOD8KPgo+IFN1cmUuIEkgYWN0dWFsbHkgd2lsbCBzZW5kIGEgUFIg
d2l0aCB2YXJpb3VzIE1URCByZWxhdGVkIGZpeGVzCj4gZm9yIDUuNy4KCkFwcGxpZWQuIFRoYW5r
cyBmb3IgZml4aW5nIQoKLS0gClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24g
bWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbXRkLwo=
