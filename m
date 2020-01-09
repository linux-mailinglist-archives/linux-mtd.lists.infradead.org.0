Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B407135EF6
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 18:12:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RN+qbbC/MfwZx6ig1Al58NwShyVTWp4jyUoz4K4zFtE=; b=ABzaACy3AYmroH
	KYAqVGIJqEFhZTnlqJiEp0yYFgJ6/wcSs06TEbtFXxP9unxpfjoHuY83SeUIDMmTRyaN7qEyUDhUP
	2oyT9JEqy7KiMpSHy7x67Z3K8F21SJRgZPrxr15LHmWxMg7ymyk8L7a4AITmr7BVuA2CGyuqN+Uhp
	CbfFCqwxH3jLVkc/uDEJs05deYbZKmoShlmEf8N9wAMhle7hZ5Ez0iChfsRaP7FWKUQ8Fcu0jSEqm
	pzr0OUM2z8D9ogIIOtTQ1a+LulhoZ2IMfDW2vxoaeReOXxHRaz1Q0p+5DLyyPtjMSmD5+eXmoBwkz
	/iSzoBieRsI2k8MlsB/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipbLq-0001E3-Oa; Thu, 09 Jan 2020 17:12:06 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipbLf-0001DR-Mt
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 17:11:57 +0000
Received: by mail-il1-x144.google.com with SMTP id p8so6262011iln.12
 for <linux-mtd@lists.infradead.org>; Thu, 09 Jan 2020 09:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NXVHfKVuGAmR6x2XJBPM228M1HOEriTYLlugUz1K1aM=;
 b=tCkGUj4Bv24JWffMebwXCT1hOHxjmxLSxQgPAyepMNHBfO+F8Zj6DxSo8/So2/ttoM
 BQlQNVjVxnJZJ+OGC6ieL2XWJ/3YZ/TD609haCjb/9VrT9lOlZW7RzCS3yR+PekeSXSR
 zU1kOa86ILADeBtFx/5957CqpnWlHUkohVfXCLFlBKoGe9RpQ1jYq/qOvcTli15L4Kgz
 vanAXwNLWouo6/luqJzP7IeCi3zEXcW0/dnw9W0SGw/qn9G4REYacjxNJsVyxNXe1XqS
 uLAp8OjnV6LBVzrjg9xiO0+6gq6MloRa92BznLO3hN13hJFs4vaYgE/i0sLp+SORD14x
 6KkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NXVHfKVuGAmR6x2XJBPM228M1HOEriTYLlugUz1K1aM=;
 b=IfILTUEsZfayNiYLfbYYzDKxIWagCoY8gi4PIuRxgvam5gePbkNiDlUfNhFJWlgEru
 a0L4p7mXTcrSqJtYp9tAIDYPTpJxm6Rzp2ikfYBWoPyNgwQaU0InUa6/CEw05m7aBaRb
 UnIdJJGSyBZ74ye2gk9/vTGobaHJxgphZNxyIo3WYUPFqlTYNvp8RRyX5MW718h0bJ2y
 C1KAtlr26N8x9GqitXtNSQgfdX6yfDzeE3pFXgKb0ZKUTvJoTPPwS5t8nAKu/CyEuofd
 qRnugv3fjjOFjLHNv6aO0o4CERoLDrICwdNss7ZCxMm6xw6609pdobwfqSilzp3vSxbz
 m7+A==
X-Gm-Message-State: APjAAAWd/+59VPTbHDSLN7PXmpG4Pf+sPVPgGlh+jG+QdMxYh8fzjBDy
 Qh2DokTmqSnq/w7KUbq2O1JZ11Xx31fTk1bcLKaCRw==
X-Google-Smtp-Source: APXvYqxO0H9Vfp/bQK1AoGDlBSsPleqQfmBXJ/yggIAJYu/Lp0qg562O9Y7Cr+UudJPi7bZdYa+QxwupTWa1R7rwKPo=
X-Received: by 2002:a92:cb8c:: with SMTP id z12mr9152323ilo.5.1578589914711;
 Thu, 09 Jan 2020 09:11:54 -0800 (PST)
MIME-Version: 1.0
References: <20200102130826.170647-1-esben@geanix.com>
 <CA+EcR21F1u4dX6NEO9Zfur=ZA7btr51EthZurEjzPHSuWu-0PQ@mail.gmail.com>
 <20200109161512.2742730d@xps13>
In-Reply-To: <20200109161512.2742730d@xps13>
From: Han Xu <xhnjupt@gmail.com>
Date: Thu, 9 Jan 2020 11:11:43 -0600
Message-ID: <CA+EcR21-ictwzRMmCkzWPsuGLsYnKofPkXi3yRjoQaX4s-sJFA@mail.gmail.com>
Subject: Re: [PATCH 1/2] mtd: rawnand: gpmi: Fix suspend/resume problem
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_091155_768899_3C197471 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xhnjupt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Esben Haabendal <esben@geanix.com>, sean@geanix.com,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>, martin@geanix.com,
 Han Xu <han.xu@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gVGh1LCBKYW4gOSwgMjAyMCBhdCA5OjE1IEFNIE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXlu
YWxAYm9vdGxpbi5jb20+IHdyb3RlOgo+Cj4gSGkgSGFuLAo+Cj4gSGFuIFh1IDx4aG5qdXB0QGdt
YWlsLmNvbT4gd3JvdGUgb24gVHVlLCA3IEphbiAyMDIwIDEzOjMxOjI3IC0wNjAwOgo+Cj4gPiBP
biBUaHUsIEphbiAyLCAyMDIwIGF0IDc6MDkgQU0gRXNiZW4gSGFhYmVuZGFsIDxlc2JlbkBnZWFu
aXguY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gc3lzdGVtIHJlc3VtZSwgdGhlIGdwbWkgY2xv
Y2sgbXVzdCBiZSBlbmFibGVkIGJlZm9yZSBhY2Nlc3NpbmcgZ3BtaQo+ID4gPiBibG9jay4gIFdp
dGhvdXQgdGhpcywgcmVzdW1lIGNhdXNlcyBzb21ldGhpbmcgbGlrZQo+ID4gPgo+ID4gPiBbICA2
NjEuMzQ4NzkwXSBncG1pX3Jlc2V0X2Jsb2NrKDVjYmIwZjdlKTogbW9kdWxlIHJlc2V0IHRpbWVv
dXQKPiA+ID4gWyAgNjYxLjM0ODg4OV0gZ3BtaS1uYW5kIDE4MDYwMDAuZ3BtaS1uYW5kOiBFcnJv
ciBzZXR0aW5nIEdQTUkgOiAtMTEwCj4gPiA+IFsgIDY2MS4zNDg5MjhdIFBNOiBkcG1fcnVuX2Nh
bGxiYWNrKCk6IHBsYXRmb3JtX3BtX3Jlc3VtZSsweDAvMHg0NCByZXR1cm5zIC0xMTAKPiA+ID4g
WyAgNjYxLjM0ODk2MV0gUE06IERldmljZSAxODA2MDAwLmdwbWktbmFuZCBmYWlsZWQgdG8gcmVz
dW1lOiBlcnJvciAtMTEwCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEVzYmVuIEhhYWJlbmRh
bCA8ZXNiZW5AZ2Vhbml4LmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL210ZC9uYW5kL3Jh
dy9ncG1pLW5hbmQvZ3BtaS1uYW5kLmMgfCA2ICsrKysrKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFu
ZC9yYXcvZ3BtaS1uYW5kL2dwbWktbmFuZC5jIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvZ3BtaS1u
YW5kL2dwbWktbmFuZC5jCj4gPiA+IGluZGV4IDMzNGZlMzEzMDI4NS4uN2FjOGM4Yjk1YWZjIDEw
MDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9ncG1pLW5hbmQvZ3BtaS1uYW5k
LmMKPiA+ID4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvZ3BtaS1uYW5kL2dwbWktbmFuZC5j
Cj4gPiA+IEBAIC0xNDgsNiArMTQ4LDEwIEBAIHN0YXRpYyBpbnQgZ3BtaV9pbml0KHN0cnVjdCBn
cG1pX25hbmRfZGF0YSAqdGhpcykKPiA+ID4gICAgICAgICBzdHJ1Y3QgcmVzb3VyY2VzICpyID0g
JnRoaXMtPnJlc291cmNlczsKPiA+ID4gICAgICAgICBpbnQgcmV0Owo+ID4gPgo+ID4gPiArICAg
ICAgIHJldCA9IHBtX3J1bnRpbWVfZ2V0X3N5bmModGhpcy0+ZGV2KTsKPiA+ID4gKyAgICAgICBp
ZiAocmV0IDwgMCkKPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ICsKPiA+
ID4gICAgICAgICByZXQgPSBncG1pX3Jlc2V0X2Jsb2NrKHItPmdwbWlfcmVncywgZmFsc2UpOwo+
ID4gPiAgICAgICAgIGlmIChyZXQpCj4gPiA+ICAgICAgICAgICAgICAgICBnb3RvIGVycl9vdXQ7
Cj4gPiA+IEBAIC0xODEsNiArMTg1LDggQEAgc3RhdGljIGludCBncG1pX2luaXQoc3RydWN0IGdw
bWlfbmFuZF9kYXRhICp0aGlzKQo+ID4gPgo+ID4gPiAgICAgICAgIHJldHVybiAwOwo+ID4gPiAg
ZXJyX291dDoKPiA+ID4gKyAgICAgICBwbV9ydW50aW1lX21hcmtfbGFzdF9idXN5KHRoaXMtPmRl
dik7Cj4gPiA+ICsgICAgICAgcG1fcnVudGltZV9wdXRfYXV0b3N1c3BlbmQodGhpcy0+ZGV2KTsK
PiA+ID4gICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiAgfQo+ID4KPiA+IEkgaGF2ZSBhIHNpbWls
YXIgcGF0Y2ggd2l0aCBtb3JlIGZpeGVzLCB3aWxsIHNlbmQgb3V0IHRvbmlnaHQgZm9yIHJldmll
dy4KPgo+IFdoYXQgc2hvdWxkIEkgZG8gd2l0aCB0aGlzIHBhdGNoPyBJdCBzZWVtcyBva2F5IHRv
IG1lLCB3aGF0IGlzIHlvdXIKPiBwbGFuPyBNYXkgSSB0YWtlIHRoaXMgb25lIGZvciB0aGlzIHJl
bGVhc2UgYW5kIHlvdSdsbCBidWlsZCBhYm92ZSB3aXRoCj4geW91ciBzZXJpZXMsIGlzIHRoaXMg
ZmluZSBmb3IgeW91PwoKU29ycnkgZm9yIGxhdGUsIGp1c3Qgc2VudCBvdXQgdGhlIHBhdGNoIGZv
ciByZXZpZXcuCgo+Cj4gVGhhbmtzLAo+IE1pcXXDqGwKCgoKLS0gClNpbmNlcmVseSwKCkhhbiBY
VQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
