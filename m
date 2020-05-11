Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 101A71CD4C7
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 11:23:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsCnuMZLlll29NlPII+3EB8cWExdUEh88D8T+yqOErg=; b=j3DRRWGoXoKez8
	eKagCDrWex+djN8t4e55LZLg1BJ23tevNzdRmniypTffrkxUXba4TbJe45DFcGNqIljfYWLVmGL1r
	jNj/xb0+jMAmJb9CyTSshpjMQbbrIO35b+cVlFmDoiKoeXUHuOhOkSGCwg30RI2+4fajgS7kw82ZQ
	actfHeOUyAEliqveQLM8LKvIKVBWogPRxPrIIrc/kA4zj7+Kb8ULBdkem4bZsxfUhkRxaV1LvQyW9
	FXs8w1eRZ+J5YEiVS64ogpxvcj5NFiEdDVUs2GsrDyNKDBpmUNGLZ5hKWYbNKeYV5+jyqb1VlyqpB
	tztpdI8LIbhbtSe2rqDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4eJ-0003tF-SX; Mon, 11 May 2020 09:22:59 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4e3-0003rQ-L8
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 09:22:45 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id D238124000F;
 Mon, 11 May 2020 09:22:38 +0000 (UTC)
Date: Mon, 11 May 2020 11:22:37 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Christophe Kerello <christophe.kerello@st.com>
Subject: Re: [PATCH v4 00/10] add STM32 FMC2 EBI controller driver
Message-ID: <20200511112237.20751831@xps13>
In-Reply-To: <1588756279-17289-1-git-send-email-christophe.kerello@st.com>
References: <1588756279-17289-1-git-send-email-christophe.kerello@st.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_022243_832780_B2621702 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.230 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, marex@denx.de,
 vigneshr@ti.com, gregkh@linuxfoundation.org, richard@nod.at,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, boris.brezillon@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQ2hyaXN0b3BoZSwKCkNocmlzdG9waGUgS2VyZWxsbyA8Y2hyaXN0b3BoZS5rZXJlbGxvQHN0
LmNvbT4gd3JvdGUgb24gV2VkLCA2IE1heSAyMDIwCjExOjExOjA5ICswMjAwOgoKPiBUaGUgRk1D
MiBmdW5jdGlvbmFsIGJsb2NrIG1ha2VzIHRoZSBpbnRlcmZhY2Ugd2l0aDogc3luY2hyb25vdXMg
YW5kCj4gYXN5bmNocm9ub3VzIHN0YXRpYyBkZXZpY2VzIChzdWNoIGFzIFBTTk9SLCBQU1JBTSBv
ciBvdGhlciBtZW1vcnktbWFwcGVkCj4gcGVyaXBoZXJhbHMpIGFuZCBOQU5EIGZsYXNoIG1lbW9y
aWVzLgo+IEl0cyBtYWluIHB1cnBvc2VzIGFyZToKPiAgIC0gdG8gdHJhbnNsYXRlIEFYSSB0cmFu
c2FjdGlvbnMgaW50byB0aGUgYXBwcm9wcmlhdGUgZXh0ZXJuYWwgZGV2aWNlCj4gICAgIHByb3Rv
Y29sCj4gICAtIHRvIG1lZXQgdGhlIGFjY2VzcyB0aW1lIHJlcXVpcmVtZW50cyBvZiB0aGUgZXh0
ZXJuYWwgZGV2aWNlcwo+IEFsbCBleHRlcm5hbCBkZXZpY2VzIHNoYXJlIHRoZSBhZGRyZXNzZXMs
IGRhdGEgYW5kIGNvbnRyb2wgc2lnbmFscyB3aXRoIHRoZQo+IGNvbnRyb2xsZXIuIEVhY2ggZXh0
ZXJuYWwgZGV2aWNlIGlzIGFjY2Vzc2VkIGJ5IG1lYW5zIG9mIGEgdW5pcXVlIENoaXAKPiBTZWxl
Y3QuIFRoZSBGTUMyIHBlcmZvcm1zIG9ubHkgb25lIGFjY2VzcyBhdCBhIHRpbWUgdG8gYW4gZXh0
ZXJuYWwgZGV2aWNlLgo+IAo+IENoYW5nZXMgaW4gdjQ6Cj4gIC0gYmluZGluZ3M6Cj4gICAgLSBm
aXggZmlsZW5hbWU6IHN0LHN0bTMyLWZtYzItZWJpLnlhbWwKPiAKPiBDaGFuZ2VzIGluIHYzOgo+
ICAtIE5BTkQ6Cj4gICAgLSByZW5hbWUgbGFiZWxzIHVzZWQgb24gZXJyb3JzCj4gICAgLSBhZGQg
aW4gdGhlIGNvbW1pdCBsb2cgdGhlIHJlYXNvbiB0byBpbmNyZWFzZSBGTUMyX1RJTUVPVVRfTVMg
KHBhdGNoIDMpCj4gICAgLSBhZGQgTWlxdWVsIHJldmlld2VkLWJ5IHRhZyAocGF0Y2hlcyAyLzQv
NS85KQo+ICAtIEVCSToKPiAgICAtIG1vdmUgaW4gbWVtb3J5IGZvbGRlcgo+ICAgIC0gbWVyZ2Ug
TUZEIGFuZCBCVVMgZHJpdmVycyB0byBhdm9pZCBhIE1GRCBkcml2ZXIKPiAgLSBiaW5kaW5nczoK
PiAgICAtIHBhdHRlcm4gbmFtZSBoYXMgYmVlbiBtb2RpZmllZAo+ICAgIC0gdmVuZG9yIHByb3Bl
cnRpZXMgaGF2ZSBiZWVuIG1vZGlmaWVkCj4gICAgICAtIHMvXy8tLwo+ICAgICAgLSBhZGQgdW5p
dCBzdWZmaXggKC1ucykgb24gdGltaW5nIHByb3BlcnRpZXMKPiAKPiBDaHJpc3RvcGhlIEtlcmVs
bG8gKDEwKToKPiAgIG10ZDogcmF3bmFuZDogc3RtMzJfZm1jMjogbWFuYWdlIGFsbCBlcnJvcnMg
Y2FzZXMgYXQgcHJvYmUgdGltZQo+ICAgbXRkOiByYXduYW5kOiBzdG0zMl9mbWMyOiByZW1vdmUg
dXNlbGVzcyBpbmxpbmUgY29tbWVudHMKPiAgIG10ZDogcmF3bmFuZDogc3RtMzJfZm1jMjogdXNl
IEZNQzJfVElNRU9VVF9NUyBmb3IgdGltZW91dHMKPiAgIG10ZDogcmF3bmFuZDogc3RtMzJfZm1j
MjogY2xlYW51cAo+ICAgbXRkOiByYXduYW5kOiBzdG0zMl9mbWMyOiB1c2UgRklFTERfUFJFUC9G
SUVMRF9HRVQgbWFjcm9zCj4gICBkdC1iaW5kaW5nczogbXRkOiB1cGRhdGUgU1RNMzIgRk1DMiBO
QU5EIGNvbnRyb2xsZXIgZG9jdW1lbnRhdGlvbgo+ICAgZHQtYmluZGluZ3M6IG1lbW9yeS1jb250
cm9sbGVyOiBhZGQgU1RNMzIgRk1DMiBFQkkgY29udHJvbGxlcgo+ICAgICBkb2N1bWVudGF0aW9u
Cj4gICBtZW1vcnk6IHN0bTMyLWZtYzItZWJpOiBhZGQgU1RNMzIgRk1DMiBFQkkgY29udHJvbGxl
ciBkcml2ZXIKPiAgIG10ZDogcmF3bmFuZDogc3RtMzJfZm1jMjogdXNlIHJlZ21hcCBBUElzCj4g
ICBtdGQ6IHJhd25hbmQ6IHN0bTMyX2ZtYzI6IGdldCByZXNvdXJjZXMgZnJvbSBwYXJlbnQgbm9k
ZQo+IAo+ICAuLi4vbWVtb3J5LWNvbnRyb2xsZXJzL3N0LHN0bTMyLWZtYzItZWJpLnlhbWwgICAg
ICB8ICAyNjEgKysrKysKPiAgLi4uL2JpbmRpbmdzL210ZC9zdCxzdG0zMi1mbWMyLW5hbmQueWFt
bCAgICAgICAgICAgfCAgIDE5ICstCj4gIGRyaXZlcnMvbWVtb3J5L0tjb25maWcgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgICAxMCArCj4gIGRyaXZlcnMvbWVtb3J5L01ha2VmaWxlICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgMSArCj4gIGRyaXZlcnMvbWVtb3J5L3N0bTMy
LWZtYzItZWJpLmMgICAgICAgICAgICAgICAgICAgIHwgMTIwNiArKysrKysrKysrKysrKysrKysr
Kwo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICB8
ICAgIDEgKwo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9zdG0zMl9mbWMyX25hbmQuYyAgICAgICAg
ICAgICB8IDExNzYgKysrKysrKysrKy0tLS0tLS0tLQo+ICA3IGZpbGVzIGNoYW5nZWQsIDIwNjEg
aW5zZXJ0aW9ucygrKSwgNjEzIGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lbW9yeS1jb250cm9sbGVycy9zdCxzdG0z
Mi1mbWMyLWViaS55YW1sCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21lbW9yeS9zdG0z
Mi1mbWMyLWViaS5jCj4gCgpJJ20gZmluZSB3aXRoIHRoZSBwcmVwYXJhdGlvbiBwYXRjaGVzIDEt
NSBidXQgdGhlIG90aGVyIHBhdGNoZXMgbmVlZApSb2IncyBoYWNrIGFuZCBwcm9iYWJseSBtb3Jl
IGNoYW5nZXMuIElmIGl0J3MgZmluZSB3aXRoIHlvdSBJIGNhbiBhcHBseQp0aGVzZSBwYXRjaGVz
IGZvciB0aGUgbmV4dCBtZXJnZSB3aW5kb3cgYW5kIGxldCBtb3JlIHRpbWUgdG8gd29yayBvbgp0
aGUgbGFzdCA1LgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBs
aXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRk
Lwo=
