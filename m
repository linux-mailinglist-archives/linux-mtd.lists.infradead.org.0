Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC210F308
	for <lists+linux-mtd@lfdr.de>; Tue, 30 Apr 2019 11:33:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qVU/LWWRfiyWcKN6q1/w2vCBrVzKsMTSN434iiI+ofg=; b=X18lhsel2xEw3cCYIbpGz9FXna
	bCAtC0+wQLbsxnQQpDMbXKzzBe7NY8mcL91fIRgnRmZKdxiGfggAQomWWueVZ9+T9hONZKZVH0uxX
	NrtzTLkXm3DXx7Qpj8rr0V+skZmN4LUCVxkajq7uX81uCn/fq2AYn/a2gtmXFlwKesGKU1LUCVW1I
	dqW0KHMVe9M/e3a21CxwPFPsitJ6syZgKAD4Es88H+G0MyT4SU+HosuOgPsB4o+tHMcxfMsUn6RR0
	X4JyN+RC5TBBySk8h3HUYHNMpAJ8XjuYIE5VibxjoMMA7cnk1MwE4IlO8eTXL//0oyyUAfpOgaCS+
	MranUsgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLP8l-0002VO-Qp; Tue, 30 Apr 2019 09:33:31 +0000
Received: from mail.thorsis.com ([92.198.35.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLP8J-0001y1-PH
 for linux-mtd@lists.infradead.org; Tue, 30 Apr 2019 09:33:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.thorsis.com (Postfix) with ESMTP id 8CB3880
 for <linux-mtd@lists.infradead.org>; Tue, 30 Apr 2019 11:26:27 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mail.thorsis.com
Received: from mail.thorsis.com ([127.0.0.1])
 by localhost (mail.thorsis.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oJzsgYdf8cjw for <linux-mtd@lists.infradead.org>;
 Tue, 30 Apr 2019 11:26:27 +0200 (CEST)
Received: by mail.thorsis.com (Postfix, from userid 109)
 id 6DAFF4976; Tue, 30 Apr 2019 11:26:27 +0200 (CEST)
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NO_RECEIVED,
 NO_RELAYS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
 version=3.4.2
From: Alexander Dahl <ada@thorsis.com>
To: linux-mtd@lists.infradead.org
Subject: Re: atmel nand bindings vs. actual dts files
Date: Tue, 30 Apr 2019 11:24:44 +0200
Message-ID: <1947914.CcHDgmXbBm@ada>
In-Reply-To: <20190429115540.7d577a50@xps13>
References: <1823900.qPX5mxbl1h@ada> <4099561.5sHrvDXGx3@ada>
 <20190429115540.7d577a50@xps13>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_023304_378653_A9805EE0 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8gTWlxdcOobCwKCkFtIE1vbnRhZywgMjkuIEFwcmlsIDIwMTksIDExOjU1OjQwIENFU1Qg
c2NocmllYiBNaXF1ZWwgUmF5bmFsOgo+IEFsZXhhbmRlciBEYWhsIDxhZGFAdGhvcnNpcy5jb20+
IHdyb3RlIG9uIFRodSwgMDcgTWFyIDIwMTkgMTc6MjU6MTcKPiA+IEFtIE1pdHR3b2NoLCA2LiBN
w6RyeiAyMDE5LCAxNTowNzo1MiBDRVQgc2NocmllYiBBbGV4YW5kZXIgRGFobDoKPiA+ID4gU28g
aW5zdGVhZCBvZiAiYWx3YXlzIDB4ODAwMDAwIiB0aGF0IG5vZGUgaGFzIDB4MiBhcyB0aGlyZCBl
bnRyeSBmb3IgdGhlCj4gPiA+ICdyZWcnIHByb3BlcnR5LiBXaHkgaXMgdGhhdD8KPiA+IAo+ID4g
SSBkaWRuJ3QgaW52ZXN0aWdhdGUgdGhhdCBmdXJ0aGVyIHlldCwgYnV0IEknbSBjdXJpb3VzLCBz
byBpZiBhbnlvbmUKPiA+IGtub3dzPwo+IAo+IEkgc3VwcG9zZSB0aGUgYmluZGluZ3MgWzFdIGV4
cGxhaW4gdGhlIHNpdHVhdGlvbi4KPiAKPiBbMV0KPiBodHRwczovL2VsaXhpci5ib290bGluLmNv
bS9saW51eC92NS4wL3NvdXJjZS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGkKPiBuZ3Mv
bXRkL2F0bWVsLW5hbmQudHh0I0wzMgoKTm8sIHRoYXQgd2FzIG5vdCB3aGF0IEkgd2FudGVkIHRv
IGtub3cuIFRoZSBiaW5kaW5ncyBzYXlzIGZvciB0aGF0IHJlZyAKcHJvcGVydHk6IOKAnDNyZCBl
bnRyeTogdGhlIG1lbW9yeSByZWdpb24gc2l6ZSAoYWx3YXlzIDB4ODAwMDAwKeKAnQoKVGhpcyBp
cyB0cnVlIGZvciBzb21lIGR0cyBmaWxlcyBpbmNsdWRpbmcgdGhpcyBuYW5kIG5vZGUsIGJ1dCBu
b3QgZm9yIGFsbCwgCnNvbWUgaGF2ZSB0aGlzOgoKCW5hbmRAMyB7CgkJcmVnID0gPDB4MyAweDAg
MHg4MDAwMDA+OwoKT3RoZXJzIGhhdmUgdGhpczoKCgluYW5kQDMgewoJCXJlZyA9IDwweDMgMHgw
IDB4Mj47CgpUaGUgc2Vjb25kIGNvbnRyYWRpY3RzIHRoZSBiaW5kaW5nIGRvYy4gTW9zdCBvZiB0
aGlzIHdhcyBjaGFuZ2VkIHdoZW4gCnN3aXRjaGluZyBmcm9tIHRoZSBvbGQgYmluZGluZ3MgaW4g
Y2hhbmdlc2V0IHY0LjEyLXJjMS03LWcxMDA0YTI5NzdiZGMgYnkgCkJvcmlzIEJyZXppbGxvbi4g
SSB3YW50ZWQgdG8ga25vdyB3aHkgdGhlIGRpZmZlcmVuY2U/IAoKR3JlZXRzCkFsZXgKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgg
TVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
