Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BE41D37D6
	for <lists+linux-mtd@lfdr.de>; Thu, 14 May 2020 19:18:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h4yTwhnbObGBGhEqV5sWLbeCf9wfRcOxKGXaPct71pI=; b=eSoWpn6dZldJpR
	BycgNxFAdEMmZDH58F7jLYLvaeKvy5MKKKZinZ8TPqRYVeLUYQz5I0x3Poa/5/QNue8ZKEoHZKy5G
	N1uNcs9Sk9QzWBVAcbRPuQXF76sbEPxAZRcooXYvZ/L6iVXHr0xxMGavczDhrUDhbRl1RHEpPouNA
	FErfYUR3+dbl0UIV8lJD5UviLKSammLG4X5lQs3KsSfiznPnWiiff/hQBKOGCs/97rB3yLQ/KEgHe
	ddfAC3b6w1bhZD7VOkGtXXrOCV0i2IqdvpnbBeGmQzn6RkB40JGJyKaKvZsfSIB6kftlsHBvJXbgc
	tLAPA074hMA21HjfRbXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHV2-0005jD-Lg; Thu, 14 May 2020 17:18:24 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHTi-0004xJ-NY; Thu, 14 May 2020 17:17:04 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 95635240004;
 Thu, 14 May 2020 17:16:52 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Subject: [PATCH v5 00/21] Prepare the introduction of generic ECC engines
Date: Thu, 14 May 2020 19:16:30 +0200
Message-Id: <20200514171651.24851-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_101703_044770_9B3CA0CA 
X-CRM114-Status: GOOD (  23.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Julien Su <juliensu@mxic.com.tw>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

QWxyZWFkeSAzIHNlcmllcyBoYXZlIGJlZW4gc2VudCBvbiB0aGlzIHRvcGljIGJ1dCBhcyB0aGV5
IGdyb3cgb3Zlcgp0aW1lLCBJIGRlY2lkZWQgdG8gc3BsaXQgaXQgYXJiaXRyYXJ5IGFuZCB0YWtl
IG9ubHkgdGhlIHByZXBhcmF0aW9uCnBhdGNoZXMgdGhhdCBhcmUgaGVyZS4gVGhlIGFjdHVhbCBF
Q0MgbWFjaGluZXJ5IHdpbGwgYmUgY29udHJpYnV0ZWQKbGF0ZXIgd2hlbiB0aGlzIHByZXBhcmF0
aW9uIHNlcmllcyB3aWxsIGJlIG1lcmdlZC4KClRoYW5rcywKTWlxdcOobAoKCkNoYW5nZXMgaW4g
djUKPT09PT09PT09PT09PQoqIFJlYmFzZWQgb24gdG9wIG9mIG5hbmQvbmV4dAoqIEF2b2lkZWQg
YSBmYWxsdGhyb3VnaCBzaXR1YXRpb24gaW4gY29tbWl0OgogIG10ZDogcmF3bmFuZDogU2VwYXJh
dGUgdGhlIEVDQyBlbmdpbmUgdHlwZSBhbmQgdGhlIE9PQiBwbGFjZW1lbnQKKiBGaXhlZCBhbiBv
Zl9kZXZfcHV0KCkgYnVpbGQgaXNzdWUgZHVlIHRvIGEgbWlzc2luZyBkdW1teSBoZWxwZXIuCiog
RXh0cmFjdGVkIGEgcGF0Y2ggdGhhdCBkZXNlcnZlZCB0byBiZSBtZXJnZWQgcXVpY2tseS4KKiBG
aXhlZCBhIGZldyBpc3N1ZXMgcmVwb3J0ZWQgYnkgcm9ib3RzLgoKQ2hhbmdlcyBpbiB2NAo9PT09
PT09PT09PT09CiogUmViYXNlZCBvbiB0b3Agb2YgYSByZWNlbnQga2VybmVsIHZlcnNpb24uCiog
QWRkZWQgQm9yaXMnIHJldmlld2VkLWJ5LgoqIEFkZGVkIE1heGltZSdzIEFja2VkLWJ5IHRhZy4K
KiBBZGRlZCB0aGUgbWlzc2luZyBvZl9kZXZpY2UuaCBoZWFkZXIgdG8gZWNjLmMuCiogQ29ycmVj
dGVkIGEgJ21pbmltdW0nIGNvbXBhcmlzb24gYnkgdXNpbmcgbWluX3QuCiAqIFVwZGF0ZWQgdGhl
IG5ldyBNYWNyb25peCByYXcgTkFORCBjb250cm9sbGVyIGRyaXZlciBieSB1c2luZyB0aGUgbmV3
CiAgKEVDQyByZWxhdGVkKSBmdW5jdGlvbiBuYW1lcy4KKiBGaXhlZCBhIGZ1bmN0aW9uIGNhbGwg
aW4gbmRmYy5jLgoqIFVwZGF0ZSBicmNtbmFuZC5jIGZpbGUgdG8gZml0IG5ldyBlbnVtZXJhdGlv
bnMgYW5kIHN0cnVjdHVyZXMgKGR1ZQogIHRvIHJlY2VudCBLYW1hbCdzIGNoYW5nZXMpLgoqIEZv
cmNlIHNtX2Z0bCB0byBkZXBlbmRzIG9uIHRoZSBIYW1taW5nIGVuZ2luZSwgYmVjYXVzZSBieSBq
dXN0CiAgc2VsZWN0aW5nIGl0IHRoZSBFQ0MgY29kZSB3b3VsZCBiZSBlbWJlZGRlZCBpbiB0aGUg
TkFORCBjb3JlIGFuZCB0aGUKICBOQU5EIGNvcmUgbWlnaHQgbm90IGJlIGNvbXBpbGVkIGluIHdp
dGggc21fZnRsLgoqIEZpeGVkIGEgc3RydWN0dXJlIGZpZWxkIG5hbWUgdGhhdCBJIHByZXZpb3Vz
bHkgYWRkZWQgaW4gZGF2aW5jaQogIHBsYXRmb3JtIGRhdGEuCiogTW92ZWQgdGhlIG9vYl9maXJz
dCBwbGFjZW1lbnQgc2NoZW1lIHRvIERhdmluY2kgZHJpdmVyLiBSZW1vdmVkIGFueQogIG9jY3Vy
ZW5jZSBvZiBpdCBvdXQgb2YgdGhlIGRyaXZlciAodW51c2VkKS4KKiBTaW1wbGlmeSBzdHJ1Y3R1
cmUgbmFtZXMgYXMgcHJvcG9zZWQgYnkgQm9yaXMuCiogQ2hhbmdlIGVudW1lcmF0aW9uL3N0cmlu
ZyBuYW1lcyBhYm91dCBFQ0MgZW5naW5lCiAgcHJvdmlkZXJzL3BsYWNlbWVudHMuCiogQ2hhbmdl
IHRoZSBsb2dpYyBpbiB0aGUgb2ZfZ2V0X25hbmRfZWNjXyogaGVscGVycyB0byBlbnN1cmUgYmFj
a3dhcmQKICBjb21wYXRpYmlsaXR5LgoqIFVzZSBlbnVtcyBpbnRlYWQgb2YgdW5zaWduZWQgaW50
ZWdlcnMgaW4gdGhlIGNvcmUgd2hlbiByZWZlcnJpbmcgdG8KICBFQ0MgZW5naW5lIHR5cGUsIHBs
YWNlbWVudCBhbmQgYWxnb3JpdGhtLgoqIEFkZCBuYW5kLWVjYy1wbGFjZW1lbnQgRFQgcHJvcGVy
dHkuCiogRGVwcmVjYXRlIGh3X3N5bmRyb21lLgoqIERlcHJlY2F0ZSBuYW5kLWVjYy1tb2RlIGlu
IGZhdm9yIG9mIG5hbmQtZWNjLXByb3ZpZGVyLgoKKiBGaXhlZCBhIHR5cG8gaW4gdGhlIE1hY3Jv
bml4IEVDQyBkcml2ZXIsIHdoZXJlIEkgbWFkZSBhIGNvcHkvcGFzdGUKICBlcnJvciB3aGljaCBJ
IGhhdmVuJ3Qgc3BvdHRlZCBiZWNhdXNlIGl0IGlzIGxvY2F0ZWQgaW4gYSBtYWNybyBvbmx5CiAg
Y29tcGlsZWQgd2hlbiBidWlsZGluZyB0aGUgZHJpdmVyIGFzIGEgbW9kdWxlIChuYW1lIG9mIHRo
ZSBvZl9pZHMKICB3YXMgcHJlZml4ZWQgbWFydmVsbF9uZmMgaW5zdGVhZCBvZiBteGljX2VjYyku
CiogU2ltcGxpZmllZCB0aGUgRUNDIGVuZ2luZSBBUEkgYnkgZHJvcHBpbmcgdGhlIHVzZWxlc3Mg
b29iYnVmCiAgcGFyYW1ldGVyLiBJbnN0ZWFkLCBFQ0MgZW5naW5lIGRyaXZlcnMgYXJlIHN1cHBv
c2VkIHRvIHByb3ZpZGUgYQogIHNwYXJlIE9PQiBidWZmZXIgaWYgbm9uZSBpcyBwcm92aWRlZC4g
VXBkYXRlZCB0aGUgdGhyZWUgZXhpc3RpbmcKICBlbmdpbmVzLgoqIEZpeGVkIEJDSCBzb2Z0d2Fy
ZSBlbmdpbmUgd2l0aCB0aGUgaGVscCBvZiBNYXNvbiBmcm9tIE1hY3Jvbml4LgoqIEFkZGVkIGEg
bWVjaGFuaXNtIGNhbGxlZCAidHdlYWtpbmcgcmVxIiB0byBjaGFuZ2UgdGhlIFNQSS1OQU5ECiAg
cmVxdWVzdHMgYW5kIGVuc3VyZSB0aGV5IGFsd2F5cyBjb250YWluIHRoZSByaWdodCBhbW91bnQg
b2YgZGF0YS9PT0IKICBuZWVkZWQgZm9yIHRoZSBFQ0MgZW5naW5lIHRvIHdvcmsgcHJvcGVybHku
CgpDaGFuZ2VzIGluIHYzCj09PT09PT09PT09PT0KKiBBZGRlZCBCb3JpcycgUmV2aWV3ZWQtYnkg
dGFncy4KKiBBZGRlZCBhIGtlcm5lbCBkb2MgaGVhZGVyIG9uIHRoZSBuYW5kX3BhZ2VfaW9fcmVx
IGVudW1lcmF0aW9uLgoqIEFkZGVkIHN1cHBvcnQgZm9yIEhXIGVuZ2luZXMuCiogRHJvcGVkIHRo
ZSBwYXRjaCBjbGFyaWZ5aW5nIHRoZSB2YWx1ZSBvZiB0aGUgZmlyc3QgZW50cnkgaW4KICBlbnVt
ZXJhdGlvbnMgKHdoaWNoIGlzIGFsd2F5cyAwKS4KKiBSZW5hbWUgdGhlIG5hbmRfZWNjX2NvbmYg
c3RydWN0dXJlIGFzIG5hbmRfZWNjX3Byb3BzIGJlY2F1c2UgdGhlCiAgX2NvbmYgc3VmZml4IGlt
cGxpZXMgdGhhdCBpdCBpcyBwb3NzaWJsZSB0byBlZGl0IGl0LCB3aGlsZSBpbiBzb21lCiAgY2Fz
ZXMgKGVnLiBvbi1kaWUgRUNDKSB0aGVyZSBpcyBub3RoaW5nIHRvIHR3ZWFrLgoqIFNtb290aGVy
IGludHJvZHVjdGlvbiBvZiB0aGUgRUNDIGVuZ2luZSBhYnN0cmFjdGlvbi4KKiBSZW5hbWVkIHRo
ZSBFQ0MgZW5naW5lIG1vZHVsZSBuYW5kX2VjY19lbmdpbmUua28uCiogTW92ZWQgYWxsIHRoZSBF
Q0MgZmlsZXMgaW50byBkcml2ZXJzL210ZC9uYW5kLy4gRm9yZ290IHRoZSBlY2MvCiAgc3ViZGly
ZWN0b3J5LgoqIEFkZGVkIGEgbmV3IHNlcmllcyB0byBkcm9wIHRoZSBFQ0MgbW9kZSBlbnVtZXJh
dGlvbiB3aWNoIG1peGVzIHRoZQogIHByb3ZpZGVyIChub25lLCBodywgc3csIG9uLWRpZSkgYW5k
IHRoZSBPT0IgcGxhY2VtZW50IChmaXJzdCwKICBzeW5kcm9tZSkuCiogVmFyaW91cyB0eXBvcyBm
aXhlZC4KKiBBZGRlZCBhIGZldyBwYXRjaGVzIHRvIGZpeCBidWdzIGZvdW5kIGluIFNQSS1OQU5E
L210ZGNoYXIuYy4KKiBJbnRyb2R1Y2VkIHRoZSBleHRlcm5hbCBoYXJkd2FyZSBFQ0MgZW5naW5l
IGJvaWxlcnBsYXRlLgoKQ2hhbmdlcyBpbiB2Mgo9PT09PT09PT09PT09CiogU1BEWCBsaWNlbnNl
IGlkZW50aWZpZXJzIGZvciBzb2Z0IEJDSCBhbmQgSGFtbWluZzogdGhlIGxpY2Vuc2UgbWFjcm8K
ICB3YXMgcmlnaHQsICJHUEwiIG1lYW5zICJHUEx2MiBvciBoaWdoZXIiLCBzbyBkbyBub3QgY2hh
bmdlIHRoaXMKICBwb3J0aW9uLiBBbHNvIHVwZGF0ZSB0aGUgY29tbWl0IG1lc3NhZ2VzIHRvIGZp
dCB0aGUgYWN0dWFsIGNoYW5nZS4KKiBEbyBub3QgY29tcGlsZS1pbiB0aGUgTkFORCBjb3JlIGJ5
IGRlZmF1bHQsIGRvIGl0IG9ubHkgZm9yIHJhdwogIE5BTkQuIFJlbW92ZSB0aGUgZGVwZW5kZW5j
aWVzIG9uIENPTkZJR19NVEQgaW4gYSBkaWZmZXJlbnQKICBwYXRjaC4gQWxzbywga2VlcCBhbiBl
eHRyYSBsZXZlbCBvZiBoaWVyYXJjaHkgaW4gS2NvbmZpZyBmb3IgdGhlCiAgTkFORCBiaXRzIGJ5
IGFkZGluZyBhIG1lbnUgaW5zdGVhZCBvZiBhIGNvbmZpZy4KKiBNb3ZlZCB0aGUgc3RhbmRhcmQg
T09CIGxheW91dHMgaW4gdGhlIGVjYy9lbmdpbmUuYyBkcml2ZXIgaW5zdGVhZCBvZgogIGluIHRo
ZSBOQU5EIGNvcmUuCiogVXNlZCB0aGUgbmFuZF9lY2NfIHByZWZpeCBpbiBtb3N0IG9mIHRoZSBl
bmdpbmVzIGZ1bmN0aW9ucyBpbnN0ZWFkCiAgb2YganVzdCBlY2NfLCB3aGljaCBpcyBub3cgcmVz
ZXJ2ZWQgZm9yIGJhcmUgaGVscGVycy4gR2V0IHJpZCBvZiB0aGUKICBfX2VjYyBwcmVmaXguCiog
SW4gdGhlIHN1bnhpIE5BTkQgY29udHJvbGxlciBkcml2ZXI6IG1vdmVkIHRoZSBFQ0Mgc3RydWN0
dXJlIGZyb20KICBzdW54aV9uZmMgdG8gc3VueGlfbmFuZF9jaGlwIGFzIHRoZSBFQ0MgZW5naW5l
IGlzIHBlci1jaGlwIGFuZCBub3QKICBwZXIgY29udHJvbGxlci4KKiBTb2Z0d2FyZSBIYW1taW5n
IEVDQyBlbmdpbmUgaXMgb25seSBlbmFibGVkIGJ5IGRlZmF1bHQgaWYgcmF3IE5BTkQKICBpcyBh
bHNvIGVuYWJsZWQuIE5ERkMgbm93IHNlbGVjdHMgdGhlIHNvZnR3YXJlIEhhbW1pbmcgRUNDIGVu
Z2luZQogIChpbnN0ZWFkIG9mIGRlcGVuZGluZyBvbiBpdCkuCiogTWVudGlvbiBpbiBzb2Z0d2Fy
ZSBCQ0ggYW5kIEhhbW1pbmcgS2NvbmZpZyBlbnRyaWVzIHRoYXQgYm9vdGluZwogIGZyb20gTkFO
RCBpcyB2ZXJ5IGxpa2VseSB0byBmYWlsIGlmIHRoZSB1c2VyIHNlbGVjdHMgdGhlc2Ugc3ltYm9s
cwogIGFzIG1vZHVsZXMuCiogQWRkZWQgQm9yaXMgUmV2aWV3ZWQtYnkgdGFnIG9uIHRoZSBTUEkt
TkFORCB0eXBvIGZpeGluZyBwYXRjaC4KKiBSZW5hbWVkIHRoZSAibW9kZSIgaW50byBhICJwcm92
aWRlciIgZW50cnkgaW4gdGhlIEVDQyBjb25maWd1cmF0aW9uCiAgc3RydWN0dXJlcy4KKiBNb3Zl
ZCB0aGUgInRvdGFsIiBlbnRyeSBvZiB0aGUgRUNDIGNvbmZpZ3VyYXRpb24gZGlyZWN0bHkgaW4g
dGhlCiAgY29udGV4dCBzdHJ1Y3R1cmUgKHNob3VsZCBwcm9iYWJseSBub3QgYmUgcHVibGljIGJ1
dCBsZXQncyBrZWVwIGl0CiAgYXMgaXMgZm9yIG5vdykuCiogU3BsaXQgdGhlIGdlbmVyaWMgRUND
IGVuZ2luZSBpbnRyb2R1Y3Rpb24gaW50byBzbWFsbGVyIHBhdGNoZXMgdG8gZG8KICBzb21lIHJl
bmFtaW5nIGFzaWRlLgoqIERyb3AgdGhlICJtYXhpbWl6ZSIgZW50cnkgaW4gdGhlIEVDQyBlbmdp
bmUgY29uZmlndXJhdGlvbiBzdHJ1Y3R1cmUsCiAga2VlcCB1c2luZyBhIGZsYWcgbGlrZSBiZWZv
cmUuCiogQ2FuY2VsZWQgdGhlIG1vdmUgb2YgdGhlIFNQSS1OQU5EIHNwZWNpZmljIEVDQyBlbmdp
bmUgb3V0IG9mIHRoZQogIGNvcmUgZmlsZS4KKiBBbWVuZGVkIHRoZSByb290IEVDQyBzdHJ1Y3R1
cmVzIHRvIGhhdmUgdGhyZWUgbmFuZF9lY2NfY29uZgogIHN0cnVjdHVyZXM6IG9uZSBmb3IgdGhl
IGRlZmF1bHRzLCBvbmUgZm9yIHRoZSBjaGlwIHJlcXVpcmVtZW50cywgb25lCiAgZm9yIHRoZSB1
c2VyIGRlc2lyZXMuCiogQ3JlYXRlZCBhICpvbmRpZV9lbmdpbmUgcG9pbnRlciBpbiB0aGUgbmFu
ZF9lY2Mgc3RydWN0dXJlIHRvIHNhdmUKICB0aGUgb24tZGllIEVDQyBlbmdpbmUsIGlmIGFueS4g
Rm9yIGluc3RhbmNlLCBzYXZpbmcgYSByZWZlcmVuY2UgdG8KICB0aGlzIGVuZ2luZSBpcyBkb25l
IGJ5IHRoZSBTUEktTkFORCBjb3JlLgoqIERyb3BwZWQgdGhlIFNQSS1OQU5EIGZsYWcgdGhhdCB3
YXMgdXNlZCB0byBkaXN0aW5ndWlzaCBiZXR3ZWVuIE5BTkQKICBmbGF2b3JzIGZyb20gdGhlIE5B
TkQgY29yZSwgaXQgc2hvdWxkIG5vdCBiZSBuZWVkZWQgYW55bW9yZS4KKiBBZGRlZCBhbiBoZWxw
ZXIgaW4gdGhlIE5BTkQgY29yZSB0byBwdXQgYSByZWZlcmVuY2Ugb24gYW4gRUNDCiAgZW5naW5l
LiBUaGlzIHdpbGwgYmUgdXNlZCBieSB0aGUgaGFyZHdhcmUgZW5naW5lcyBvbmx5LgoqIFJlbmFt
ZWQgdGhlIGZpbGVzIGVjYy9zdy17YmNoLGhhbW1pbmd9LmMgYW5kIHRoZWlyIGhlYWRlcnMKICBp
bmNsdWRlL2xpbnV4L210ZC9uYW5kLWVjYy1zdy17YmNoLGhhbW1pbmd9LWVuZ2luZS5oLgoqIENy
ZWF0ZWQgYSBNVERfTkFORF9FQ0MgaW52aXNpYmxlIEtjb25maWcgc3ltYm9sLgoqIEFkZGVkIHBs
ZW50eSBvZiBtaXNzaW5nIEVYUE9SVF9TWU1CT0x7LF9HUEx9KCkuCiogTWlub3IgbW9kaWZpY2F0
aW9ucyBzbyB0aGF0IGV2ZXJ5dGhpbmcgc3RpbGwgY29tcGlsZXMgZXZlbiB3aGVuCiAgbW9kdWxl
cyBhbmQgYnVpbHQtaW4gZHJpdmVycyBhcmUgbWl4ZWQgaW4gS2NvbmZpZyBpbiB0aGUgd2hvbGUg
TkFORAogIGRpcmVjdG9yeS4KCk1pcXVlbCBSYXluYWwgKDIxKToKICBtdGQ6IEZpeCB0eXBvIGlu
IG10ZF9vb2JsYXlvdXRfc2V0X2RhdGFieXRlcygpIGRlc2NyaXB0aW9uCiAgbXRkOiByYXduYW5k
OiBBdm9pZCBhIHR5cGVkZWYKICBtdGQ6IHJhd25hbmQ6IERyb3AgT09CX0ZJUlNUIHBsYWNlbWVu
dCBzY2hlbWUKICBkdC1iaW5kaW5nczogbXRkOiBEZXByZWNhdGUgT09CX0ZJUlNUIG1vZGUKICBt
dGQ6IHJhd25hbmQ6IFJldHVybiBhbiBlbnVtIGZyb20gb2ZfZ2V0X25hbmRfZWNjX2FsZ28oKQog
IG10ZDogcmF3bmFuZDogQWRkIGFuIGludmFsaWQgRUNDIG1vZGUgdG8gZGlzY3JpbWluYXRlIHdp
dGggdmFsaWQgb25lcwogIG10ZDogcmF3bmFuZDogQ3JlYXRlIGEgbmV3IGVudW1lcmF0aW9uIHRv
IGRlc2NyaWJlIE9PQiBwbGFjZW1lbnQKICBtdGQ6IHJhd25hbmQ6IFNlcGFyYXRlIHRoZSBFQ0Mg
ZW5naW5lIHR5cGUgYW5kIHRoZSBPT0IgcGxhY2VtZW50CiAgbXRkOiByYXduYW5kOiBDcmVhdGUg
YSBuZXcgZW51bWVyYXRpb24gdG8gZGVzY3JpYmUgcHJvcGVybHkgRUNDIHR5cGVzCiAgbXRkOiBy
YXduYW5kOiBDcmVhdGUgYSBoZWxwZXIgdG8gcmV0cmlldmUgdGhlIEVDQyBwbGFjZW1lbnQKICBt
dGQ6IHJhd25hbmQ6IFVzZSB0aGUgbmV3IEVDQyBlbmdpbmUgdHlwZSBlbnVtZXJhdGlvbgogIG10
ZDogcmF3bmFuZDogRGVwcmVjYXRlIG5hbmQtZWNjLW1vZGUgaW4gZmF2b3Igb2YgbmFuZC1lY2Mt
cHJvdmlkZXIKICBtdGQ6IHJhd25hbmQ6IERyb3AgdGhlIGxlZ2FjeSBFQ0MgdHlwZSBlbnVtZXJh
dGlvbgogIGR0LWJpbmRpbmdzOiBtdGQ6IEFkZCB0aGUgbmFuZC1lY2MtcGxhY2VtZW50IHByb3Bl
cnR5CiAgZHQtYmluZGluZ3M6IG10ZDogRGVwcmVjYXRlIGh3X3N5bmRyb21lIGZyb20gdGhlIEVD
QyBtb2RlcwogIGR0LWJpbmRpbmdzOiBtdGQ6IERlcHJlY2F0ZSB0aGUgbmFuZC1lY2MtbW9kZSBw
cm9wZXJ0eQogIG10ZDogbmFuZDogTW92ZSBuYW5kX2RldmljZSBmb3J3YXJkIGRlY2xhcmF0aW9u
IHRvIHRoZSB0b3AKICBtdGQ6IG5hbmQ6IEFkZCBhbiBleHRyYSBsZXZlbCBpbiB0aGUgS2NvbmZp
ZyBoaWVyYXJjaHkKICBtdGQ6IG5hbmQ6IERyb3AgdXNlbGVzcyAnZGVwZW5kcyBvbicgaW4gS2Nv
bmZpZwogIG10ZDogbmFuZDogQWRkIGEgTkFORCBwYWdlIEkvTyByZXF1ZXN0IHR5cGUKICBtdGQ6
IG5hbmQ6IFJlbmFtZSBhIGNvcmUgc3RydWN0dXJlCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3Mv
bXRkL2F0bWVsLW5hbmQudHh0ICAgIHwgICAzICstCiAuLi4vYmluZGluZ3MvbXRkL25hbmQtY29u
dHJvbGxlci55YW1sICAgICAgICAgfCAgMjcgKy0KIGFyY2gvYXJtL21hY2gtZGF2aW5jaS9ib2Fy
ZC1kYTgzMC1ldm0uYyAgICAgICB8ICAgMiArLQogYXJjaC9hcm0vbWFjaC1kYXZpbmNpL2JvYXJk
LWRhODUwLWV2bS5jICAgICAgIHwgICAyICstCiBhcmNoL2FybS9tYWNoLWRhdmluY2kvYm9hcmQt
ZG0zNTUtZXZtLmMgICAgICAgfCAgIDIgKy0KIGFyY2gvYXJtL21hY2gtZGF2aW5jaS9ib2FyZC1k
bTM1NS1sZW9wYXJkLmMgICB8ICAgMyArLQogYXJjaC9hcm0vbWFjaC1kYXZpbmNpL2JvYXJkLWRt
MzY1LWV2bS5jICAgICAgIHwgICAyICstCiBhcmNoL2FybS9tYWNoLWRhdmluY2kvYm9hcmQtZG02
NDR4LWV2bS5jICAgICAgfCAgIDIgKy0KIGFyY2gvYXJtL21hY2gtZGF2aW5jaS9ib2FyZC1kbTY0
NngtZXZtLmMgICAgICB8ICAgMiArLQogYXJjaC9hcm0vbWFjaC1kYXZpbmNpL2JvYXJkLW1pdHlv
bWFwbDEzOC5jICAgIHwgICAyICstCiBhcmNoL2FybS9tYWNoLWRhdmluY2kvYm9hcmQtbmV1cm9z
LW9zZDIuYyAgICAgfCAgIDIgKy0KIGFyY2gvYXJtL21hY2gtZGF2aW5jaS9ib2FyZC1vbWFwbDEz
OC1oYXdrLmMgICB8ICAgMiArLQogYXJjaC9hcm0vbWFjaC1zM2MyNHh4L2NvbW1vbi1zbWRrLmMg
ICAgICAgICAgIHwgICAyICstCiBhcmNoL2FybS9tYWNoLXMzYzI0eHgvbWFjaC1hbnViaXMuYyAg
ICAgICAgICAgfCAgIDIgKy0KIGFyY2gvYXJtL21hY2gtczNjMjR4eC9tYWNoLWF0MjQ0MGV2Yi5j
ICAgICAgICB8ICAgMiArLQogYXJjaC9hcm0vbWFjaC1zM2MyNHh4L21hY2gtYmFzdC5jICAgICAg
ICAgICAgIHwgICAyICstCiBhcmNoL2FybS9tYWNoLXMzYzI0eHgvbWFjaC1ndGEwMi5jICAgICAg
ICAgICAgfCAgIDIgKy0KIGFyY2gvYXJtL21hY2gtczNjMjR4eC9tYWNoLWppdmUuYyAgICAgICAg
ICAgICB8ICAgMiArLQogYXJjaC9hcm0vbWFjaC1zM2MyNHh4L21hY2gtbWluaTI0NDAuYyAgICAg
ICAgIHwgICAyICstCiBhcmNoL2FybS9tYWNoLXMzYzI0eHgvbWFjaC1vc2lyaXMuYyAgICAgICAg
ICAgfCAgIDIgKy0KIGFyY2gvYXJtL21hY2gtczNjMjR4eC9tYWNoLXF0MjQxMC5jICAgICAgICAg
ICB8ICAgMiArLQogYXJjaC9hcm0vbWFjaC1zM2MyNHh4L21hY2gtcngxOTUwLmMgICAgICAgICAg
IHwgICAyICstCiBhcmNoL2FybS9tYWNoLXMzYzI0eHgvbWFjaC1yeDM3MTUuYyAgICAgICAgICAg
fCAgIDIgKy0KIGFyY2gvYXJtL21hY2gtczNjMjR4eC9tYWNoLXZzdG1zLmMgICAgICAgICAgICB8
ICAgMiArLQogYXJjaC9hcm0vbWFjaC1zM2M2NHh4L21hY2gtaG10LmMgICAgICAgICAgICAgIHwg
ICAyICstCiBhcmNoL2FybS9tYWNoLXMzYzY0eHgvbWFjaC1taW5pNjQxMC5jICAgICAgICAgfCAg
IDIgKy0KIGFyY2gvYXJtL21hY2gtczNjNjR4eC9tYWNoLXJlYWw2NDEwLmMgICAgICAgICB8ICAg
MiArLQogZHJpdmVycy9tdGQvbXRkY29yZS5jICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAy
ICstCiBkcml2ZXJzL210ZC9uYW5kL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgfCAgIDUg
KwogZHJpdmVycy9tdGQvbmFuZC9vbmVuYW5kL0tjb25maWcgICAgICAgICAgICAgIHwgICAxIC0K
IGRyaXZlcnMvbXRkL25hbmQvcmF3L0tjb25maWcgICAgICAgICAgICAgICAgICB8ICAgMSAtCiBk
cml2ZXJzL210ZC9uYW5kL3Jhdy9hbXMtZGVsdGEuYyAgICAgICAgICAgICAgfCAgIDIgKy0KIGRy
aXZlcnMvbXRkL25hbmQvcmF3L2F0bWVsL25hbmQtY29udHJvbGxlci5jICB8ICAxNCArLQogZHJp
dmVycy9tdGQvbmFuZC9yYXcvYXUxNTUwbmQuYyAgICAgICAgICAgICAgIHwgICAyICstCiAuLi4v
bXRkL25hbmQvcmF3L2JjbTQ3eHhuZmxhc2gvb3BzX2JjbTQ3MDYuYyAgfCAgIDMgKy0KIGRyaXZl
cnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMgICAgICB8ICAgOCArLQogLi4uL210
ZC9uYW5kL3Jhdy9jYWRlbmNlLW5hbmQtY29udHJvbGxlci5jICAgIHwgICA0ICstCiBkcml2ZXJz
L210ZC9uYW5kL3Jhdy9jYWZlX25hbmQuYyAgICAgICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMv
bXRkL25hbmQvcmF3L2NteDI3MF9uYW5kLmMgICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9t
dGQvbmFuZC9yYXcvY3M1NTN4X25hbmQuYyAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL210
ZC9uYW5kL3Jhdy9kYXZpbmNpX25hbmQuYyAgICAgICAgICAgfCAxNTMgKysrKystLS0KIGRyaXZl
cnMvbXRkL25hbmQvcmF3L2RlbmFsaS5jICAgICAgICAgICAgICAgICB8ICAgMyArLQogZHJpdmVy
cy9tdGQvbmFuZC9yYXcvZGlza29uY2hpcC5jICAgICAgICAgICAgIHwgICAzICstCiBkcml2ZXJz
L210ZC9uYW5kL3Jhdy9mc2xfZWxiY19uYW5kLmMgICAgICAgICAgfCAgMTggKy0KIGRyaXZlcnMv
bXRkL25hbmQvcmF3L2ZzbF9pZmNfbmFuZC5jICAgICAgICAgICB8ICAxMCArLQogZHJpdmVycy9t
dGQvbmFuZC9yYXcvZnNsX3VwbS5jICAgICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL210
ZC9uYW5kL3Jhdy9mc21jX25hbmQuYyAgICAgICAgICAgICAgfCAgMTIgKy0KIGRyaXZlcnMvbXRk
L25hbmQvcmF3L2dwaW8uYyAgICAgICAgICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9tdGQv
bmFuZC9yYXcvZ3BtaS1uYW5kL2dwbWktbmFuZC5jICAgIHwgICAyICstCiBkcml2ZXJzL210ZC9u
YW5kL3Jhdy9oaXNpNTA0X25hbmQuYyAgICAgICAgICAgfCAgIDYgKy0KIC4uLi9tdGQvbmFuZC9y
YXcvaW5nZW5pYy9pbmdlbmljX25hbmRfZHJ2LmMgICB8ICAxNCArLQogZHJpdmVycy9tdGQvbmFu
ZC9yYXcvbHBjMzJ4eF9tbGMuYyAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL210ZC9uYW5k
L3Jhdy9scGMzMnh4X3NsYy5jICAgICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvbXRkL25hbmQv
cmF3L21hcnZlbGxfbmFuZC5jICAgICAgICAgICB8ICAxNyArLQogZHJpdmVycy9tdGQvbmFuZC9y
YXcvbWVzb25fbmFuZC5jICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL210ZC9uYW5kL3Jh
dy9tcGM1MTIxX25mYy5jICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3
L210a19uYW5kLmMgICAgICAgICAgICAgICB8ICAgNiArLQogZHJpdmVycy9tdGQvbmFuZC9yYXcv
bXhjX25hbmQuYyAgICAgICAgICAgICAgIHwgIDIzICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9u
YW5kX2Jhc2UuYyAgICAgICAgICAgICAgfCAzMzYgKysrKysrKystLS0tLS0tLS0tCiBkcml2ZXJz
L210ZC9uYW5kL3Jhdy9uYW5kX21pY3Jvbi5jICAgICAgICAgICAgfCAgIDQgKy0KIGRyaXZlcnMv
bXRkL25hbmQvcmF3L25hbmRfdG9zaGliYS5jICAgICAgICAgICB8ICAgMyArLQogZHJpdmVycy9t
dGQvbmFuZC9yYXcvbmFuZHNpbS5jICAgICAgICAgICAgICAgIHwgICA0ICstCiBkcml2ZXJzL210
ZC9uYW5kL3Jhdy9uZGZjLmMgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvbXRk
L25hbmQvcmF3L29tYXAyLmMgICAgICAgICAgICAgICAgICB8ICAyMCArLQogZHJpdmVycy9tdGQv
bmFuZC9yYXcvb3Jpb25fbmFuZC5jICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL210ZC9u
YW5kL3Jhdy9wYXNlbWlfbmFuZC5jICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvbXRkL25h
bmQvcmF3L3BsYXRfbmFuZC5jICAgICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9tdGQvbmFu
ZC9yYXcvcWNvbV9uYW5kYy5jICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL210ZC9uYW5k
L3Jhdy9yODUyLmMgICAgICAgICAgICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvbXRkL25hbmQv
cmF3L3MzYzI0MTAuYyAgICAgICAgICAgICAgICB8ICAxNiArLQogZHJpdmVycy9tdGQvbmFuZC9y
YXcvc2hfZmxjdGwuYyAgICAgICAgICAgICAgIHwgICA0ICstCiBkcml2ZXJzL210ZC9uYW5kL3Jh
dy9zaGFycHNsLmMgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3
L3NvY3JhdGVzX25hbmQuYyAgICAgICAgICB8ICAgMyArLQogZHJpdmVycy9tdGQvbmFuZC9yYXcv
c3RtMzJfZm1jMl9uYW5kLmMgICAgICAgIHwgICA5ICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9z
dW54aV9uYW5kLmMgICAgICAgICAgICAgfCAgMTggKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L3Rh
bmdvX25hbmQuYyAgICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvdGVn
cmFfbmFuZC5jICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy90bWlv
X25hbmQuYyAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L3R4eDlu
ZGZtYy5jICAgICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvdmY2MTBf
bmZjLmMgICAgICAgICAgICAgIHwgICA0ICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy94d2F5X25h
bmQuYyAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvbXRkL25hbmQvc3BpL2NvcmUuYyAg
ICAgICAgICAgICAgICAgICB8ICAgNCArLQogaW5jbHVkZS9saW51eC9tdGQvbmFuZC5oICAgICAg
ICAgICAgICAgICAgICAgIHwgIDMwICstCiBpbmNsdWRlL2xpbnV4L210ZC9yYXduYW5kLmggICAg
ICAgICAgICAgICAgICAgfCAgNDYgKystCiBpbmNsdWRlL2xpbnV4L210ZC9zcGluYW5kLmggICAg
ICAgICAgICAgICAgICAgfCAgIDIgKy0KIGluY2x1ZGUvbGludXgvcGxhdGZvcm1fZGF0YS9tdGQt
ZGF2aW5jaS5oICAgICB8ICAgOSArLQogLi4uL2xpbnV4L3BsYXRmb3JtX2RhdGEvbXRkLW5hbmQt
czNjMjQxMC5oICAgIHwgICAyICstCiA4NyBmaWxlcyBjaGFuZ2VkLCA1MjkgaW5zZXJ0aW9ucygr
KSwgNDIwIGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1tdGQvCg==
