Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8458BCCA3C
	for <lists+linux-mtd@lfdr.de>; Sat,  5 Oct 2019 16:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:To:Subject:References:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmW97iBiNXpHPHEwyzJR88BaX+ZavkbaQLjhRhmEKhc=; b=V1IsSaWjxsWzEw
	6A17LJ3PMWpj/717pU78LyYsXbC3PUPFwJNW7LVXJ2HxlAEHm0Dz1QJL4Lk+FafE/0tA/FxqyWeUi
	mnZxFZzo//R73O+tWu6fOjGfXQtRP3c+KbtGifp3/HSrXPLr8PywMKTtKZ+pa/d8hOQVvI/cL1rN4
	ojT7aw7CCHKTbGm4IDhqaGCW65TSGdFNMuj61dQTm/WQl7asC8isOhs+h7FD+vCM03ST52ggdbHVy
	s9a/8zngviC6K9McDXA8QTrIx4CsONqDULIRr3vwQQpWO0+IC1pYVI/E6tY0H96XUX3cVyILVXbSZ
	cDrH6ikPU+n7QaSrJBWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGkg0-0007Lx-L2; Sat, 05 Oct 2019 14:04:52 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGkfo-0007Ko-EP
 for linux-mtd@lists.infradead.org; Sat, 05 Oct 2019 14:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570284251;
 bh=yU952EgA76+1w3jlwz/sumRdXN+HoC5Bxy+AmRv95+o=;
 h=X-UI-Sender-Class:Cc:References:Subject:To:From:Date:In-Reply-To;
 b=o19EcgekqyfW5/C7YiaUIjG6oxyd9XdP3J5V9tczIzoak+qHxYFMxaP079FSFVaGb
 vyK2zY1Lx/sh3hoWh9K8HXl8h666Kxvx0juon7/nVmpE+Ah7+dmB0ISgSKGmumDG0i
 TlvZaOQba2m2t22Jlunt6/cqIRe/GGOEvdiVzBRE=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.135.178.111]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Lcgp5-1hs6ph3jbL-00k5uy; Sat, 05
 Oct 2019 16:04:11 +0200
References: <20191004171909.6378-1-navid.emamdoost@gmail.com>
Subject: Re: [PATCH v2] mtd: onenand: prevent memory leak in onenand_scan
To: Navid Emamdoost <navid.emamdoost@gmail.com>, linux-mtd@lists.infradead.org
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <d136f119-d408-0c20-c554-818d13dc48df@web.de>
Date: Sat, 5 Oct 2019 16:04:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191004171909.6378-1-navid.emamdoost@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:FkskqHrQv+ChCOFRBvXSqr/LIQNCCcSFDX0jYWFMitIhRKRX9kX
 GoDxQAOYmvt1mg/yOdd2OSQR59MjF1fI7AWsEZC2YJ3U2Vkg6rhEXqzfk4UXfQrg28qcJ1o
 nihrO+OSeNrQeOubwOL7Q0uagHc9X3Y9hyLU9ql3U4ufczlDe2fxxOgXohWV9SupDcJU+CZ
 qiknTVuuq6F2k6ldeIN7w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/9QwR6ExVMU=:/deUgzO9xlTfD3I/KeeQax
 h3XU4t0S2Yemc8r2kfmQVi31hpf8fAMF+lCJ7YXHFEIAtKDQF7qasKoClzCRnalY40XvpS5ur
 bsHu9O20/JzRvKJr/xRzkJG3HtUmpnLyRxmSkm13bl7sOBVQuliNSKBs/wnYHAzLMQLuGJTnR
 XYcxCSvx6swOsKFDLQc0IUx4NlUb0Ath6j/rTV+HZJglk16lYYo6bwbUTiWokpWcgYlAM877a
 8YT2Hb3XB1aGgEp0qFNe6prYstYbJd/p6y+g7JTV6h76C06kqBC9XPOSoDGJRyrvUgIyGGg8J
 qdCpzuSm8FQ8SFB3LlxrhAUL7VIyurBl5JZ6hkKV3JyyvMTfd/pGAihnTkj/79c8fuzS5uAph
 2+vMnbBalZBHCg4AZu5BskRG6erbFGfZcn+/+9r/vM2woGGiI+JTKBxrlQ8k0vs50pU1+viIB
 TB8SUwiCLIJAEp2Y0qHTqRFJk+W9uoEVho0VTZ7Ts9IkTonzl7cWNfuvsCyB78WMmgrdASKFo
 NjSj/1KxkzE81HCG1THwe3mrMxIRSO/fVy+QfqGy1Tcad3UUYw6mNsVVKEXHVEESkfPubKVhu
 z1P+/d25Vc0MF2yi1BDII63pazYr1+l0od6JVshlLWzMem80Son0SglDlNz63NPa6OzuvI7UT
 4CFhObQbZSbNqJlMCBBq/KC5omuePXEyrbSYFMWY2/j9C4a3VT9KkByfMlAq4PmKomMQlHhLW
 ep9qWnZ5hcHBe7CSh2CjMeDcqTD5+AMm22vVXNh1dlhFSpX0l8wKz3iTUlVaYYu2mkRFk4Emd
 ckwMPkFWJ9KPwFcUkJRykoKCejlDWxLl162ifjEeybAxaqjMopeIOIPAMARgNVorGbuZFQhcQ
 ECdppQ5ZwILLOkABM7glvtzhXl3h/Z7bMa/80HCk6xD5Xv+gu1i+G+qAVT49jRPcsgWTjydyI
 hst22IE41aQgO1degSmwGNyRByP1/M/WT6VaS0BZ//e2NjTziQfQGL9QvGj5Y5tICmToBX1d4
 gDKBUXKSHsHkcqmHUIemf7azWmkE4RSSYmGbhEayjImaGODv3tddgpnOwOn6iH3w8NlH00i1e
 F6Ldq/gyCyoni3hBFH4RfM9V1VEZQjBZMHcSGc/2yaFEfFeDyHYL+bnE0XGRL8AMDomkv7Fop
 o4cXttqRBTPrBHt0t1jWofEv0FpNO34HXMN7KwyG77lvHOuiCX2xtB8w8R8QZpZJV4N/5TlYi
 UbBQznSsC9AaZycgJ2exDc/1dSblAmfNMEq/2TI6iEx9DFaJUDMTZspFLE3g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_070440_780502_23282C58 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.4 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-janitors@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Kangjie Lu <kjlu@umn.edu>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Navid Emamdoost <emamd001@umn.edu>, Stephen McCamant <smccaman@umn.edu>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

PiBJbiBvbmVuYW5kX3NjYW4gaWYgc2Nhbl9iYnQgZmFpbHMgdGhlIGFsbG9jYXRlZCBidWZmZXJz
IGZvciBvb2JfYnVmLAo+IHZlcmlmeV9idWYsIGFuZCBwYWdlX2J1ZiBzaG91bGQgYmUgcmVsZWFz
ZWQuCgpDYW4gYSB3b3JkaW5nIGxpa2UgdGhlIGZvbGxvd2luZyBiZSBuaWNlciBmb3IgdGhlIGNo
YW5nZSBkZXNjcmlwdGlvbj8KCiAgUmVsZWFzZSB0aGUgbWVtb3J5IGZvciB0aGUgYnVmZmVycyDi
gJxvb2JfYnVm4oCdLCDigJx2ZXJpZnlfYnVm4oCdIGFuZCDigJxwYWdlX2J1ZuKAnQogIGFmdGVy
IGEgY2FsbCBvZiB0aGUgZnVuY3Rpb24g4oCcc2Nhbl9iYnTigJ0gZmFpbGVkIGluIHRoZSBpbXBs
ZW1lbnRhdGlvbgogIG9mIHRoZSBmdW5jdGlvbiDigJxvbmVuYW5kX3NjYW7igJ0uCgoKPiBGaXhl
czogNTk4OGFmMjMxOTc4ICgibXRkOiBGbGV4LU9uZU5BTkQgc3VwcG9ydCIpCuKApgo+IC0tLQo+
IENoYW5nZXMgaW4gdjI6CuKApgo+IGZvciB0aGUgaGludCkuCgpEaWQgeW91IHRha2UgYW5vdGhl
ciByZXZpZXcgY29tbWVudCBpbnRvIGFjY291bnQgZm9yIHRoaXMgcGF0Y2ggY2hhbmdlIGxvZz8K
Cgo+IC0tLQoKUGxlYXNlIHJlcGxhY2UgdGhlIGRlbGltaXRlciBhdCB0aGlzIHBsYWNlIGJ5IGEg
YmxhbmsgbGluZSBpbiBzdWJzZXF1ZW50IG1lc3NhZ2VzLgoKCj4gIGRyaXZlcnMvbXRkL25hbmQv
b25lbmFuZC9vbmVuYW5kX2Jhc2UuYyB8IDggKysrKysrKy0K4oCmCgoKUmVnYXJkcywKTWFya3Vz
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
