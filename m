Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4880B13B506
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 23:04:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIOLtTyb1QgAEu/Ek7NoCOvtDd9HaGxx36W9dDxQqKw=; b=mRlnJ00pFoH7qm
	Wp+XASX9G5/0xC6Q4IPqCRjP9KQoi9Yp0hPd0unvJHvD5VuEmn2TFfsHvRxLullETW51DteYPsU7g
	6LzoSKag/KcWVIGFzyCramyxG3P0zWF1+9tFsZh9PE04TGbxwGKjj2fgPUmyqiwcDbhZeDUM6SZq2
	xwSoxmUjCkC5kkm/nBaQ9RsHLo59TC7nBD98iQIANs1Co0P9Pl9IP6ZeTYEiq7thi5gqaP+a1/hlD
	nDt+3uh0NI5sHbiUUGLTifdgAvJMIsEl2WgqQmvI8btuqeHqK5OQ9aCpbC9SG7z8ULkmphghda3mE
	JWCbmbDc7zxZEbbHKdvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irUIE-0005FP-Ld; Tue, 14 Jan 2020 22:04:10 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irUI3-0005El-4a
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 22:04:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id F0AC160A0741;
 Tue, 14 Jan 2020 23:03:56 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id a8MQp3-WUMm1; Tue, 14 Jan 2020 23:03:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 8FE95609D2D5;
 Tue, 14 Jan 2020 23:03:56 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 2oyOLMSheoPF; Tue, 14 Jan 2020 23:03:56 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 6CE04609D2C7;
 Tue, 14 Jan 2020 23:03:56 +0100 (CET)
Date: Tue, 14 Jan 2020 23:03:56 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Eric Biggers <ebiggers@kernel.org>
Message-ID: <1925918130.21041.1579039436354.JavaMail.zimbra@nod.at>
In-Reply-To: <20200114220016.GL41220@gmail.com>
References: <20191209222325.95656-1-ebiggers@kernel.org>
 <20200114220016.GL41220@gmail.com>
Subject: Re: [PATCH 0/2] ubifs: fixes for FS_IOC_GETFLAGS and FS_IOC_SETFLAGS
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: ubifs: fixes for FS_IOC_GETFLAGS and FS_IOC_SETFLAGS
Thread-Index: mWPSwcJiuwlSeT6UhNkSjlyF2M4a4g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_140359_458129_035DEA47 
X-CRM114-Status: UNSURE (   7.27  )
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
Cc: linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-fscrypt <linux-fscrypt@vger.kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkVyaWMgQmlnZ2VycyIgPGVi
aWdnZXJzQGtlcm5lbC5vcmc+Cj4gQW46ICJyaWNoYXJkIiA8cmljaGFyZEBub2QuYXQ+Cj4gQ0M6
ICJsaW51eC1tdGQiIDxsaW51eC1tdGRAbGlzdHMuaW5mcmFkZWFkLm9yZz4sICJsaW51eC1mc2Ny
eXB0IiA8bGludXgtZnNjcnlwdEB2Z2VyLmtlcm5lbC5vcmc+LCAibGludXgtZnNkZXZlbCIKPiA8
bGludXgtZnNkZXZlbEB2Z2VyLmtlcm5lbC5vcmc+Cj4gR2VzZW5kZXQ6IERpZW5zdGFnLCAxNC4g
SmFudWFyIDIwMjAgMjM6MDA6MTcKPiBCZXRyZWZmOiBSZTogW1BBVENIIDAvMl0gdWJpZnM6IGZp
eGVzIGZvciBGU19JT0NfR0VURkxBR1MgYW5kIEZTX0lPQ19TRVRGTEFHUwoKPiBPbiBNb24sIERl
YyAwOSwgMjAxOSBhdCAwMjoyMzoyM1BNIC0wODAwLCBFcmljIEJpZ2dlcnMgd3JvdGU6Cj4+IE9u
IHViaWZzLCBmaXggRlNfSU9DX1NFVEZMQUdTIHRvIG5vdCBjbGVhciB0aGUgZW5jcnlwdCBmbGFn
LCBhbmQgdXBkYXRlCj4+IEZTX0lPQ19HRVRGTEFHUyB0byByZXR1cm4gdGhlIGVuY3J5cHQgZmxh
ZyBsaWtlIGV4dDQgYW5kIGYyZnMgZG8uCj4+IAo+PiBFcmljIEJpZ2dlcnMgKDIpOgo+PiAgIHVi
aWZzOiBmaXggRlNfSU9DX1NFVEZMQUdTIHVuZXhwZWN0ZWRseSBjbGVhcmluZyBlbmNyeXB0IGZs
YWcKPj4gICB1YmlmczogYWRkIHN1cHBvcnQgZm9yIEZTX0VOQ1JZUFRfRkwKPj4gCj4+ICBmcy91
Ymlmcy9pb2N0bC5jIHwgMTQgKysrKysrKysrKystLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IFJpY2hhcmQsIGhhdmUgeW91IGhhZCBh
IGNoYW5jZSB0byByZXZpZXcgdGhlc2U/ICBJJ20gaW50ZW5kaW5nIHRoYXQgdGhlc2UgYmUKPiB0
YWtlbiB0aHJvdWdoIHRoZSBVQklGUyB0cmVlIHRvby4KCkl0IGlzIGluIG15IHJldmlldyBxdWV1
ZS4gRGlkbid0IEkgdXBkYXRlIHRoZSBwYXRjaCBzdGF0ZSBpbiBwYXRjaHdvcmsgKG1lIGRvdWJs
ZSBjaGVja3MpPwoKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5n
IGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1t
dGQvCg==
