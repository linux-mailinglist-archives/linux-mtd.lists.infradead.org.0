Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 575F71BD7FE
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 11:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0o7PpvR+nVocoUd4TsZzGFe0+ZpxocaPujGwCIJNPcg=; b=rFSWUVwAbJVpqT
	izK0ECl/xJQjCIOxT6MOvPy27OQpGDlffmhhnh9Rz3xCVUMklOMN5ti5HqgstuiNbqlZD+G2qSmMI
	dQC8k56cVjrBmdwRUNMxHU1s+obQLcWL7CmBr8D7JtHyprsobqGbfCwvlSBkTfzjMwdaQehn9ypRr
	tK27lXcJFHJHPPvlwc5J3+41ktmkf3VBLhqcEJPROapX5GztjUmZEGf6KPrNdtoL138p5Buan1+CM
	9ooJjx7VINNgCkCGakMhvOStsOs6sW6QRerS5p8dIgMQCdKIkTagn+jg2AKbGhqEpErhpjy+WGGHG
	fksjZIuYHQimOw+/tHmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTimZ-0004nR-Gr; Wed, 29 Apr 2020 09:13:31 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTimP-0004mC-L7; Wed, 29 Apr 2020 09:13:23 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 4AC02FF803;
 Wed, 29 Apr 2020 09:13:16 +0000 (UTC)
Date: Wed, 29 Apr 2020 11:13:14 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v5 1/7] dt-bindings: mtd: Describe Rockchip RK3xxx NAND
 flash controller
Message-ID: <20200429111314.5f15d72b@xps13>
In-Reply-To: <4a83e5d2-90cc-1db7-cdfd-47b7ceb4fcef@gmail.com>
References: <20200426100250.14678-1-yifeng.zhao@rock-chips.com>
 <20200426100250.14678-2-yifeng.zhao@rock-chips.com>
 <4a83e5d2-90cc-1db7-cdfd-47b7ceb4fcef@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_021321_826452_21F2B986 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, vigneshr@ti.com, richard@nod.at,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org, heiko@sntech.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgSm9oYW4sCgpKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21haWwuY29tPiB3cm90ZSBvbiBXZWQs
IDI5IEFwciAyMDIwIDEwOjUzOjMwCiswMjAwOgoKPiBIaSBZaWZlbmcsCj4gCj4gPiBPbiBTdW4s
IEFwciAyNiwgMjAyMCBhdCAwNjowMjo0NFBNICswODAwLCBZaWZlbmcgWmhhbyB3cm90ZTogIAo+
ID4+IERvY3VtZW50YXRpb24gc3VwcG9ydCBmb3IgUm9ja2NoaXAgUkszeHh4IE5BTkQgZmxhc2gg
Y29udHJvbGxlcnMKPiA+PiAKPiA+PiBTaWduZWQtb2ZmLWJ5OiBZaWZlbmcgWmhhbyA8eWlmZW5n
LnpoYW9Acm9jay1jaGlwcy5jb20+Cj4gPj4gLS0tCj4gPj4gCj4gPj4gQ2hhbmdlcyBpbiB2NToK
PiA+PiAtIEZpeCBzb21lIHdyb25nIGRlZmluZQo+ID4+IC0gQWRkIGJvb3QtbWVkaXVtIGRlZmlu
ZQo+ID4+IC0gUmVtb3ZlIHNvbWUgY29tcGF0aWJsZSBkZWZpbmUKPiA+PiAKPiA+PiBDaGFuZ2Vz
IGluIHY0Ogo+ID4+IC0gVGhlIGNvbXBhdGlibGUgZGVmaW5lIHdpdGggcmt4eF9uZmMKPiA+PiAt
IEFkZCBhc3NpZ25lZC1jbG9ja3MKPiA+PiAtIEZpeCBzb21lIHdyb25nIGRlZmluZQo+ID4+IAo+
ID4+IENoYW5nZXMgaW4gdjM6Cj4gPj4gLSBDaGFuZ2UgdGhlIHRpdGxlIGZvciB0aGUgZHQtYmlu
ZGluZ3MKPiA+PiAKPiA+PiBDaGFuZ2VzIGluIHYyOiBOb25lCj4gPj4gCj4gPj4gIC4uLi9tdGQv
cm9ja2NoaXAsbmFuZC1jb250cm9sbGVyLnlhbWwgICAgICAgICB8IDEyNCArKysrKysrKysrKysr
KysrKysKPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDEyNCBpbnNlcnRpb25zKCspCj4gPj4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL3JvY2tj
aGlwLG5hbmQtY29udHJvbGxlci55YW1sCj4gPj4gCj4gPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvcm9ja2NoaXAsbmFuZC1jb250cm9sbGVyLnlh
bWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL3JvY2tjaGlwLG5hbmQt
Y29udHJvbGxlci55YW1sICAKPiAKPiBUaGUgbmFtZSBvZiB0aGlzIGZpbGUgaXMgYmFzZWQgb24g
TWlxdWVsJ3Mgb3BpbmlvbiwgYnV0IHRoZQo+IGNvbXBhdGliaWxpdHkgc3RyaW5ncywgKGZvciB3
aGljaCByb2JoIGhhcyBnaXZlbiBhICdyZXZpZXdlZCBieScgdGFnKSBpbgo+IHZlcnNpb24gNCBk
b24ndCBmaXQgd2l0aCB0aGlzIGZvcm1hdC4KCldoYXQgZG8geW91IG1lYW4/IElzIHRoZSBmaWxl
IG5hbWUgcmVzdHJpY3RlZCBzb21laG93PyBJIGp1c3QgZG9uJ3QKd2FudCBhIGNvbXBhdGlibGUg
d2l0aCBqdXN0ICJuYW5kIiBpbiBpdCBiZWNhdXNlIHRoaXMgd29yZCBpcyB0b28gdmFndWUKYXMg
aXQgZGVmaW5lczogYSBidXMsIGEgc3BlYywgYSBjaGlwLCBwZW9wbGUgYXJlIGFsc28gY29uZnVz
aW5nIGl0IHdpdGgKdGhlIGNvbnRyb2xsZXIgYW5kIHNvbWV0aW1lcyB3aXRoIHRoZSBFQ0MgZW5n
aW5lIHRvby4gIm5mYyIgaXMgb2theQp0aG91Z2guCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQg
ZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1tdGQvCg==
