Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CCE67C22
	for <lists+linux-mtd@lfdr.de>; Sat, 13 Jul 2019 23:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vRYBIP18j3iLFCjRZ5ozS/8jCdS8w4X21yGZpA4H7U8=; b=QI31nAK9c0IoZ/
	gE3OyGw4B/B9BQSFkHkW2uqZ/JZo7dslUFuUEVv0LENhf0YsAmXUV+AJBLVV0DDH5ZJxodW2HhkOU
	sYxyH1XImrueXWTWiD7gh7aJcEQD1dfhP55Wo3ndD/d93eryJQztZBRQHMIpKCT1axCrDQOQbdqty
	z+XHBHy5pIUlYEcCpeGaz9jFSkyI3fAdWW+dSKMh7HWs/tsBEfaahyxDELgm3BmmRO+9e8BCoF+gy
	eDqUBE6B+5aP/POLtGf0vSk5euHuCGbgTwnFMLTn/qAmV44wy8HXykyFz3rKl2fp97VPD3MYj1sr+
	qD70UqBufRqvDd7yzjnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmPnm-0004Bm-MH; Sat, 13 Jul 2019 21:43:30 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmPnV-0004B8-Dh
 for linux-mtd@lists.infradead.org; Sat, 13 Jul 2019 21:43:15 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 53E486000A;
 Sat, 13 Jul 2019 21:43:00 +0000 (UTC)
Date: Sat, 13 Jul 2019 23:42:58 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] mtd: Changes for 5.3
Message-ID: <20190713234258.413d71e9@xps13>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_144313_780726_D2548232 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Richard Weinberger <richard@nod.at>,
 Frieder Schrempf <frieder.schrempf@exceet.de>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8gTGludXMsCgoKVGhpcyBpcyB0aGUgTVREIFBSIGZvciA1LjMuCgpCZWNhdXNlIG9mIHRy
ZWV3aWRlIGNoYW5nZXMsIHlvdSB3aWxsIGVuY291bnRlciBjb25mbGljdHMgd2hlbiBtZXJnaW5n
CnRoZSBQUiwgaGVyZSBhcmUgdGhlIGRldGFpbHMuCgoxLyBUaGUgZmlyc3QgY29uZmxpY3QgaXMg
aW4gZHJpdmVycy9tdGQvc3BpLW5vci9zdG0zMi1xdWFkc3BpLmMgYmV0d2Vlbgpjb21taXQgY2Fh
YjI3N2IxZGUwICgidHJlZXdpZGU6IFJlcGxhY2UgR1BMdjIgYm9pbGVycGxhdGUvcmVmZXJlbmNl
CndpdGggU1BEWCAtIHJ1bGUgMjM0IikgYW5kIGNvbW1pdCAiZGY2YmQ2YzAwMmE0IG10ZDogc3Bp
LW5vcjogc3RtMzI6CnJlbW92ZSB0aGUgZHJpdmVyIGFzIGl0IHdhcyByZXBsYWNlZCBieSBzcGkt
c3RtMzItcXNwaS5jIi4KCi0+IFRoZSBmaXggaXMgdG8gcmVtb3ZlIGRyaXZlcnMvbXRkL3NwaS1u
b3Ivc3RtMzItcXVhZHNwaS5jIGFzIHRoZQpkcml2ZXIgd2FzIHJlcGxhY2VkIGJ5IHNwaS1zdG0z
Mi1xc3BpLmMKCjIvIFRoZSBzZWNvbmQgY29uZmxpY3QgaXMgaW46Cglkcml2ZXJzL210ZC9zcGkt
bm9yL2ludGVsLXNwaS1wY2kuYwoJZHJpdmVycy9tdGQvc3BpLW5vci9pbnRlbC1zcGktcGxhdGZv
cm0uYwoJZHJpdmVycy9tdGQvc3BpLW5vci9pbnRlbC1zcGkuYwoJZHJpdmVycy9tdGQvc3BpLW5v
ci9pbnRlbC1zcGkuaAoJaW5jbHVkZS9saW51eC9wbGF0Zm9ybV9kYXRhL2ludGVsLXNwaS5oCmJl
dHdlZW4gY29tbWl0IGQyOTEyY2IxNWJkZCAoInRyZWV3aWRlOiBSZXBsYWNlIEdQTHYyCmJvaWxl
cnBsYXRlL3JlZmVyZW5jZSB3aXRoIFNQRFggLSBydWxlIDUwMCIpIGFuZCBjb21taXQKNjJkZTM3
ZGE5ZjM4ICgibXRkOiBzcGktbm9yOiBpbnRlbC1zcGk6IENvbnZlcnQgdG8gdXNlIFNQRFgKaWRl
bnRpZmllciIpLgoKLT4gVGhlIGZpeCBpcyB0byBrZWVwIHRoZSBTUERYIHRyZWV3aWRlIGNoYW5n
ZS4KCjMvIEZpbmFsbHksIHRoZXJlIGlzIGEgY29uZmxpY3QgaW4gZHJpdmVycy9tdGQvbmFuZC9y
YXcvbXRrX2VjYy5oCmJldHdlZW4gY29tbWl0IGQyOTEyY2IxNWJkZCAoInRyZWV3aWRlOiBSZXBs
YWNlIEdQTHYyCmJvaWxlcnBsYXRlL3JlZmVyZW5jZSB3aXRoIFNQRFggLSBydWxlIDUwMCIpIGFu
ZCBjb21taXQgIm10ZDogcmF3bmFuZDoKbXRrOiBSZS1saWNlbnNlIE1USyBOQU5EIGRyaXZlciBh
cyBEdWFsIE1JVC9HUEwiLgoKLT4gVGhlcmUsIHRoZSBmaXggaXMgdG8ga2VlcCB0aGUgbmV3IGxp
Y2Vuc2UgKGR1YWwgTUlUL0dQTCkuCgoKVGhhbmtzLApNaXF1w6hsCgoKVGhlIGZvbGxvd2luZyBj
aGFuZ2VzIHNpbmNlIGNvbW1pdCBmMmM3Yzc2YzVkMGE0NDMwNTNlOTRhZGI5ZjA5MThmYTJmYjg1
YzNhOgoKICBMaW51eCA1LjItcmMzICgyMDE5LTA2LTAyIDEzOjU1OjMzIC0wNzAwKQoKYXJlIGF2
YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9tdGQvbGludXguZ2l0IHRhZ3MvbXRkL2Zvci01LjMK
CmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byA0NmNlMTBkZjc5OWZiMDY0N2E5YzBlM2Y3
OTNlNjY0NjNhOGQ2NzczOgoKICBNZXJnZSB0YWcgJ3NwaS1ub3IvZm9yLTUuMy12Micgb2YgZ2l0
b2xpdGUua2VybmVsLm9yZzpwdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbXRkL2xpbnV4IGludG8g
bXRkL25leHQgKDIwMTktMDctMDcgMjI6NTM6MTUgKzAyMDApCgotLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClRoaXMgcHVsbC1y
ZXF1ZXN0IGNvbnRhaW5zIHRoZSBmb2xsb3dpbmcgY2hhbmdlcyBmb3IgTVREOgoKTVREIGNvcmUg
Y2hhbmdlczoKLSBOZXcgSHlwZXJidXMgZnJhbWV3b3JrCi0gTmV3IF9pc19sb2NrZWQgKGNvbmNh
dCkgaW1wbGVtZW50YXRpb24KLSBWYXJpb3VzIGNsZWFudXBzCgpOQU5EIGNvcmUgY2hhbmdlczoK
LSB1c2UgbG9uZ2VzdCBtYXRjaGluZyBwYXR0ZXJuIGluIC0+ZXhlY19vcCgpIGRlZmF1bHQgcGFy
c2VyCi0gZXhwb3J0IE5BTkQgb3BlcmF0aW9uIHRyYWNlcgotIGFkZCBmbGFnIHRvIGluZGljYXRl
IHBhbmljX3dyaXRlIGluIE1URAotIHVzZSBremFsbG9jKCkgaW5zdGVhZCBvZiBrbWFsbG9jKCkg
YW5kIG1lbXNldCgpCgpSYXcgTkFORCBjb250cm9sbGVyIGRyaXZlcnMgY2hhbmdlczoKLSBicmNt
bmFuZDoKICAqIGZpeCBCQ0ggRUNDIGxheW91dCBmb3IgbGFyZ2UgcGFnZSBOQU5EIHBhcnRzCiAg
KiBmYWxsYmFjayB0byBkZXRlY3RlZCBlY2Mtc3RyZW5ndGgsIGVjYy1zdGVwLXNpemUKICAqIHdo
ZW4gb29wcyBpbiBwcm9ncmVzcyB1c2UgcGlvIGFuZCBpbnRlcnJ1cHQgcG9sbGluZwogICogY29k
ZSByZWZhY3RvciBjb2RlIHRvIGludHJvZHVjZSBoZWxwZXIgZnVuY3Rpb25zCiAgKiBhZGQgc3Vw
cG9ydCBmb3IgdjcuMyBjb250cm9sbGVyCi0gRlNNQzoKICAqIHVzZSBuYW5kX29wX3RyYWNlIGZv
ciBvcGVyYXRpb24gdHJhY2luZwotIEdQTUk6CiAgKiBtb3ZlIGFsbCBkcml2ZXIgY29kZSBpbnRv
IHNpbmdsZSBmaWxlCiAgKiB2YXJpb3VzIGNsZWFudXBzIChpbmNsdWRpbmcgZG1hZW5naW5lIGNo
YW5nZXMpCiAgKiB1c2UgcnVudGltZSBQTSB0byBtYW5hZ2UgY2xvY2tzCiAgKiBpbXBsZW1lbnQg
ZXhlY19vcAotIE1USzoKICAqIGNvcnJlY3QgbG93IGxldmVsIHRpbWUgY2FsY3VsYXRpb24gb2Yg
ci93IGN5Y2xlCiAgKiBpbXByb3ZlIGRhdGEgc2FtcGxpbmcgdGltaW5nIGZvciByZWFkIGN5Y2xl
CiAgKiBhZGQgdmFsaWRpdHkgY2hlY2sgZm9yIENFIyBwaW4gc2V0dGluZwogICogZml4IHdyb25n
bHkgYXNzaWduZWQgT09CIGJ1ZmZlciBwb2ludGVyIGlzc3VlCiAgKiByZS1saWNlbnNlIE1USyBO
QU5EIGRyaXZlciBhcyBEdWFsIE1JVC9HUEwKLSBTVE0zMjoKICAqIG1hbmFnZSB0aGUgZ2V0X2ly
cSBlcnJvciBjYXNlCiAgKiBpbmNyZWFzZSBETUEgY29tcGxldGlvbiB0aW1lb3V0cwoKUmF3IE5B
TkQgY2hpcHMgZHJpdmVycyBjaGFuZ2VzOgotIE1hY3Jvbml4OiBhZGQgcmVhZC1yZXRyeSBzdXBw
b3J0CgpPbmVuYW5kIGRyaXZlciBjaGFuZ2VzOgotIGFkZCBzdXBwb3J0IGZvciA4R2IgZGF0YXNp
emUgY2hpcHMKLSBhdm9pZCBmYWxsLXRocm91Z2ggd2FybmluZ3MKClNQSS1OQU5EIGNoYW5nZXM6
Ci0gZGVmaW5lIG1hY3JvcyBmb3IgcGFnZS1yZWFkIG9wcyB3aXRoIHRocmVlLWJ5dGUgYWRkcmVz
c2VzCi0gYWRkIHN1cHBvcnQgZm9yIHR3by1ieXRlIGRldmljZSBJRHMgYW5kIHRoZW4gZm9yIEdp
Z2FEZXZpY2UKICBHRDVGMUdRNFVGeHhHCi0gYWRkIGluaXRpYWwgc3VwcG9ydCBmb3IgUGFyYWdv
biBQTjI2RzB4QQotIGhhbmRsZSB0aGUgY2FzZSB3aGVyZSB0aGUgbGFzdCBwYWdlIHJlYWQgaGFz
IGJpdGZsaXBzCgpTUEktTk9SIGNvcmUgY2hhbmdlczoKLSBhZGQgc3VwcG9ydCBmb3IgdGhlIG10
MjVxbDAyZyBhbmQgdzI1cTE2anYgZmxhc2hlcwotIHByaW50IGVycm9yIGluIGNhc2Ugb2YgamVk
ZWMgcmVhZCBpZCBmYWlscwotIGlzMjVscDI1NjogYWRkIHBvc3QgQkZQVCBmaXggdG8gY29ycmVj
dCB0aGUgYWRkcl93aWR0aAoKU1BJIE5PUiBjb250cm9sbGVyIGRyaXZlcnMgY2hhbmdlczoKLSBp
bnRlbC1zcGk6IEFkZCBzdXBwb3J0IGZvciBJbnRlbCBFbGtoYXJ0IExha2UgU1BJIHNlcmlhbCBm
bGFzaAotIHNtdDMyOiByZW1vdmUgdGhlIGRyaXZlciBhcyB0aGUgZHJpdmVyIHdhcyByZXBsYWNl
ZCBieSBzcGktc3RtMzItcXNwaS5jCi0gY2FkZW5jZS1xdWFkc3BpOiBhZGQgcmVzZXQgY29udHJv
bAoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQpBbWVsaWUgRGVsYXVuYXkgKDEpOgogICAgICBtdGQ6IHJhd25hbmQ6IHN0bTMy
X2ZtYzI6IGluY3JlYXNlIERNQSBjb21wbGV0aW9uIHRpbWVvdXRzCgpBbmRyZXkgU21pcm5vdiAo
MSk6CiAgICAgIG10ZDogc3BpLW5vcjogQWRkIE1pY3JvbiBNVDI1UUwwMiBzdXBwb3J0CgpDaHJp
cyBQYWNraGFtICgzKToKICAgICAgbXRkOiBjZmlfY21kc2V0XzAwMDI6IGR5bmFtaWNhbGx5IGRl
dGVybWluZSB0aGUgbWF4IHNlY3RvcnMKICAgICAgbXRkOiBjb25jYXQ6IHJlZmFjdG9yIGNvbmNh
dF9sb2NrL2NvbmNhdF91bmxvY2sKICAgICAgbXRkOiBjb25jYXQ6IGltcGxlbWVudCBfaXNfbG9j
a2VkIG10ZCBvcGVyYXRpb24KCkNvbGluIElhbiBLaW5nICgxKToKICAgICAgbXRkOiByYXduYW5k
OiBncG1pOiByZW1vdmUgZG91YmxlIGFzc2lnbm1lbnQgdG8gYmxvY2tfc2l6ZQoKRGluZyBYaWFu
ZyAoMSk6CiAgICAgIG10ZDogYWZzOiByZW1vdmUgdW5uZWVkZWQgTlVMTCBjaGVjawoKRGluaCBO
Z3V5ZW4gKDIpOgogICAgICBkdC1iaW5kaW5nczogY2FkZW5jZS1xdWFkc3BpOiBhZGQgb3B0aW9u
cyByZXNldCBwcm9wZXJ0eQogICAgICBtdGQ6IHNwaS1ub3I6IGNhZGVuY2UtcXVhZHNwaTogYWRk
IHJlc2V0IGNvbnRyb2wKCkZhYmllbiBEZXNzZW5uZSAoMSk6CiAgICAgIG10ZDogcmF3bmFuZDog
c3RtMzJfZm1jMjogbWFuYWdlIHRoZSBnZXRfaXJxIGVycm9yIGNhc2UKCkZsYXZpbyBTdWxpZ29p
ICgxKToKICAgICAgbXRkOiBzcGktbm9yOiBjaGFuZ2UgImVycm9yIHJlYWRpbmcgSkVERUMgaWQi
IGZyb20gZGJnIHRvIGVycgoKRnVxaWFuIEh1YW5nICgxKToKICAgICAgbXRkOiByYXduYW5kOiBV
c2Uga3phbGxvYygpIGluc3RlYWQgb2Yga21hbGxvYygpIGFuZCBtZW1zZXQoKQoKR2VlcnQgVXl0
dGVyaG9ldmVuICgxKToKICAgICAgbXRkOiBzcGktbm9yOiBTcGVsbGluZyBzL1dyaXQvV3JpdGUv
CgpHdXN0YXZvIEEuIFIuIFNpbHZhICgxKToKICAgICAgbXRkOiBvbmVuYW5kOiBBdm9pZCBmYWxs
LXRocm91Z2ggd2FybmluZ3MKCkplZmYgS2xldHNreSAoNCk6CiAgICAgIG10ZDogc3BpbmFuZDog
RGVmaW5lIG1hY3JvcyBmb3IgcGFnZS1yZWFkIG9wcyB3aXRoIHRocmVlLWJ5dGUgYWRkcmVzc2Vz
CiAgICAgIG10ZDogc3BpbmFuZDogQWRkIHN1cHBvcnQgZm9yIHR3by1ieXRlIGRldmljZSBJRHMK
ICAgICAgbXRkOiBzcGluYW5kOiBBZGQgc3VwcG9ydCBmb3IgR2lnYURldmljZSBHRDVGMUdRNFVG
eHhHCiAgICAgIG10ZDogc3BpbmFuZDogQWRkIGluaXRpYWwgc3VwcG9ydCBmb3IgUGFyYWdvbiBQ
TjI2RzB4QQoKSm9uYXRoYW4gQmFra2VyICgxKToKICAgICAgbXRkOiBvbmVuYW5kOiBBZGQgc3Vw
cG9ydCBmb3IgOEdiIGRhdGFzaXplIG9uZW5hbmQKCkthbWFsIERhc3UgKDgpOgogICAgICBtdGQ6
IHJhd25hbmQ6IGJyY21uYW5kOiBGaXggQkNIIEVDQyBsYXlvdXQgZm9yIGxhcmdlIHBhZ2UgTkFO
RCBwYXJ0cwogICAgICBkdC1iaW5kaW5nczogbXRkOiBicmNtbmFuZDogTWFrZSBuYW5kLWVjYy1z
dHJlbmd0aCBhbmQgbmFuZC1lY2Mtc3RlcC1zaXplIG9wdGlvbmFsCiAgICAgIG10ZDogcmF3bmFu
ZDogYnJjbW5hbmQ6IGZhbGxiYWNrIHRvIGRldGVjdGVkIGVjYy1zdHJlbmd0aCwgZWNjLXN0ZXAt
c2l6ZQogICAgICBtdGQ6IEFkZCBmbGFnIHRvIGluZGljYXRlIHBhbmljX3dyaXRlCiAgICAgIG10
ZDogcmF3bmFuZDogYnJjbW5hbmQ6IFdoZW4gb29wcyBpbiBwcm9ncmVzcyB1c2UgcGlvIGFuZCBp
bnRlcnJ1cHQgcG9sbGluZwogICAgICBtdGQ6IHJhd25hbmQ6IGJyY21uYW5kOiBSZWZhY3RvcmVk
IGNvZGUgdG8gaW50cm9kdWNlIGhlbHBlciBmdW5jdGlvbnMKICAgICAgbXRkOiByYXduYW5kOiBi
cmNtbmFuZDogQWRkIHN1cHBvcnQgZm9yIHY3LjMgY29udHJvbGxlcgogICAgICBkdC1iaW5kaW5n
czogbXRkOiBicmNtbmFuZDogQWRkIGJyY21uYW5kLCBicmNtbmFuZC12Ny4zIHN1cHBvcnQKCkxp
dSBYaWFuZyAoMSk6CiAgICAgIG10ZDogc3BpLW5vcjogZml4IG5vci0+YWRkcl93aWR0aCB3aGVu
IGl0cyB2YWx1ZSBjb25maWd1cmVkIGZyb20gU0ZEUCBkb2VzIG5vdCBtYXRjaCB0aGUgYWN0dWFs
IHdpZHRoCgpMdWRvdmljIEJhcnJlICgxKToKICAgICAgbXRkOiBzcGktbm9yOiBzdG0zMjogcmVt
b3ZlIHRoZSBkcml2ZXIgYXMgaXQgd2FzIHJlcGxhY2VkIGJ5IHNwaS1zdG0zMi1xc3BpLmMKCk1h
c2FoaXJvIFlhbWFkYSAoMSk6CiAgICAgIG10ZDogYWJpOiBkbyBub3QgdXNlIEMrKyBzdHlsZSBj
b21tZW50cyBpbiB1YXBpIGhlYWRlcgoKTWFzb24gWWFuZyAoMSk6CiAgICAgIG10ZDogcmF3bmFu
ZDogQWRkIE1hY3Jvbml4IE5BTkQgcmVhZCByZXRyeSBzdXBwb3J0CgpNaWthIFdlc3RlcmJlcmcg
KDIpOgogICAgICBtdGQ6IHNwaS1ub3I6IGludGVsLXNwaTogQWRkIHN1cHBvcnQgZm9yIEludGVs
IEVsa2hhcnQgTGFrZSBTUEkgc2VyaWFsIGZsYXNoCiAgICAgIG10ZDogc3BpLW5vcjogaW50ZWwt
c3BpOiBDb252ZXJ0IHRvIHVzZSBTUERYIGlkZW50aWZpZXIKCk1pcXVlbCBSYXluYWwgKDEpOgog
ICAgICBNZXJnZSB0YWcgJ3NwaS1ub3IvZm9yLTUuMy12Micgb2YgZ2l0b2xpdGUua2VybmVsLm9y
ZzpwdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbXRkL2xpbnV4IGludG8gbXRkL25leHQKClJpY2hh
cmQgV2VpbmJlcmdlciAoMSk6CiAgICAgIE1lcmdlIHRhZyAnbmFuZC9mb3ItNS4zJyBvZiBnaXQ6
Ly9naXQua2VybmVsLm9yZy8uLi4vbXRkL2xpbnV4IGludG8gbXRkL25leHQKClJvYmVydCBNYXJr
byAoMSk6CiAgICAgIG10ZDogc3BpLW5vcjogQWRkIFdpbmJvbmQgdzI1cTE2anYgc3VwcG9ydAoK
U2FzY2hhIEhhdWVyICgxNCk6CiAgICAgIG10ZDogcmF3bmFuZDogZXhwb3J0IE5BTkQgb3BlcmF0
aW9uIHRyYWNlcgogICAgICBtdGQ6IHJhd25hbmQ6IGZzbWM6IFVzZSBuYW5kX29wX3RyYWNlIGZv
ciBvcGVyYXRpb24gdHJhY2luZwogICAgICBtdGQ6IHJhd25hbmQ6IGdwbWk6IG1vdmUgYWxsIGRy
aXZlciBjb2RlIGludG8gc2luZ2xlIGZpbGUKICAgICAgbXRkOiByYXduYW5kOiBncG1pOiByZW1v
dmUgdW51c2VkIHZhcmlhYmxlCiAgICAgIG10ZDogcmF3bmFuZDogZ3BtaTogUmVtb3ZlIHVubmVj
ZXNzYXJ5IHZhcmlhYmxlcwogICAgICBtdGQ6IHJhd25hbmQ6IGdwbWk6IHJlYWQgYnVmIGluIG5h
bmRfcmVhZF9wYWdlX29wCiAgICAgIG10ZDogcmF3bmFuZDogZ3BtaTogcmVtb3ZlIHVudXNlZCBw
YXJhbWV0ZXJzCiAgICAgIG10ZDogcmF3bmFuZDogZ3BtaTogRHJvcCB1bm5lY2Vzc2FyeSByZXN0
b3Jpbmcgb2YgcHJldmlvdXMgY2hpcHNlbGVjdGlvbgogICAgICBtdGQ6IHJhd25hbmQ6IGdwbWk6
IHVzZSBydW50aW1lIFBNIHRvIG1hbmFnZSBjbG9ja3MKICAgICAgZG1hZW5naW5lOiBteHM6IERy
b3AgdW5uZWNlc3NhcnkgZmxhZwogICAgICBtdGQ6IHJhd25hbmQ6IGdwbWk6IGRyb3AgdW5uZWNl
c3NhcnkgZmxhZwogICAgICBkbWFlbmdpbmU6IG14czogQWRkIGhlYWRlciBmaWxlIHRvIGJlIHNo
YXJlZCB3aXRoIGdwbWkgbmFuZCBkcml2ZXIKICAgICAgZG1hZW5naW5lOiBteHM6IHJlbmFtZSBj
dXN0b20gZmxhZwogICAgICBtdGQ6IHJhd25hbmQ6IGdwbWk6IEltcGxlbWVudCBleGVjX29wCgpT
dGVmYW4gQWduZXIgKDEpOgogICAgICBtdGQ6IHJhd25hbmQ6IHVzZSBsb25nZXN0IG1hdGNoaW5n
IHBhdHRlcm4KClZpZ25lc2ggUmFnaGF2ZW5kcmEgKDUpOgogICAgICBtdGQ6IGNmaV9jbWRzZXRf
MDAwMjogQWRkIHN1cHBvcnQgZm9yIHBvbGxpbmcgc3RhdHVzIHJlZ2lzdGVyCiAgICAgIGR0LWJp
bmRpbmdzOiBtdGQ6IEFkZCBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIEh5cGVyRmxhc2gKICAg
ICAgbXRkOiBBZGQgc3VwcG9ydCBmb3IgSHlwZXJCdXMgbWVtb3J5IGRldmljZXMKICAgICAgZHQt
YmluZGluZ3M6IG10ZDogQWRkIGJpbmRpbmdzIGZvciBUSSdzIEFNNjU0IEh5cGVyQnVzIG1lbW9y
eSBjb250cm9sbGVyCiAgICAgIG10ZDogaHlwZXJidXM6IEFkZCBkcml2ZXIgZm9yIFRJJ3MgSHlw
ZXJCdXMgbWVtb3J5IGNvbnRyb2xsZXIKClhpYW9sZWkgTGkgKDUpOgogICAgICBtdGQ6IHJhd25h
bmQ6IG10azogQ29ycmVjdCBsb3cgbGV2ZWwgdGltZSBjYWxjdWxhdGlvbiBvZiByL3cgY3ljbGUK
ICAgICAgbXRkOiByYXduYW5kOiBtdGs6IEltcHJvdmUgZGF0YSBzYW1wbGluZyB0aW1pbmcgZm9y
IHJlYWQgY3ljbGUKICAgICAgbXRkOiByYXduYW5kOiBtdGs6IEFkZCB2YWxpZGl0eSBjaGVjayBm
b3IgQ0UjIHBpbiBzZXR0aW5nCiAgICAgIG10ZDogcmF3bmFuZDogbXRrOiBGaXggd3JvbmdseSBh
c3NpZ25lZCBPT0IgYnVmZmVyIHBvaW50ZXIgaXNzdWUKICAgICAgbXRkOiByYXduYW5kOiBtdGs6
IFJlLWxpY2Vuc2UgTVRLIE5BTkQgZHJpdmVyIGFzIER1YWwgTUlUL0dQTAoKbGlhb3dlaXhpb25n
ICgxKToKICAgICAgbXRkOiBzcGluYW5kOiByZWFkIHJldHVybnMgYmFkbHkgaWYgdGhlIGxhc3Qg
cGFnZSBoYXMgYml0ZmxpcHMKCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRk
L2JyY20sYnJjbW5hbmQudHh0IHwgICAgNSArLQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbXRk
L2NhZGVuY2UtcXVhZHNwaS50eHQgICAgICAgICB8ICAgIDUgKwogLi4uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbXRkL2N5cHJlc3MsaHlwZXJmbGFzaC50eHQgICAgICB8ICAgMTMgKwogRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9zdG0zMi1xdWFkc3BpLnR4dCB8ICAgNDMgLQog
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC90aSxhbTY1NC1oYm1jLnR4dCB8
ICAgNTEgKwogTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgIDggKwogZHJpdmVycy9kbWEvbXhzLWRtYS5jICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAgMjUgKy0KIGRyaXZlcnMvbXRkL0tjb25maWcgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAyICsKIGRyaXZlcnMvbXRkL01ha2VmaWxl
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAxICsKIGRyaXZlcnMvbXRk
L2NoaXBzL2NmaV9jbWRzZXRfMDAwMi5jICAgICAgICAgICAgICAgICAgICAgfCAgMTQzICstCiBk
cml2ZXJzL210ZC9oeXBlcmJ1cy9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICAyMyArCiBkcml2ZXJzL210ZC9oeXBlcmJ1cy9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAgNCArCiBkcml2ZXJzL210ZC9oeXBlcmJ1cy9oYm1jLWFtNjU0LmMgICAgICAg
ICAgICAgICAgICAgICAgIHwgIDE0NyArKwogZHJpdmVycy9tdGQvaHlwZXJidXMvaHlwZXJidXMt
Y29yZS5jICAgICAgICAgICAgICAgICAgICB8ICAxNTMgKysKIGRyaXZlcnMvbXRkL210ZGNvbmNh
dC5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDkzICstCiBkcml2ZXJzL210
ZC9tdGRjb3JlLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgMyArCiBk
cml2ZXJzL210ZC9uYW5kL29uZW5hbmQvb25lbmFuZF9iYXNlLmMgICAgICAgICAgICAgICAgIHwg
ICAgNSArCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jICAgICAgICAg
ICAgICAgIHwgIDI2MyArKystCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9mc21jX25hbmQuYyAgICAg
ICAgICAgICAgICAgICAgICAgIHwgICAxOSArLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvZ3BtaS1u
YW5kL01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgIDEgLQogZHJpdmVycy9tdGQvbmFuZC9y
YXcvZ3BtaS1uYW5kL2dwbWktbGliLmMgICAgICAgICAgICAgICB8ICA5MzQgLS0tLS0tLS0tLS0t
CiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9ncG1pLW5hbmQvZ3BtaS1uYW5kLmMgICAgICAgICAgICAg
IHwgMTczMSArKysrKysrKysrKysrKystLS0tLS0tCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9ncG1p
LW5hbmQvZ3BtaS1uYW5kLmggICAgICAgICAgICAgIHwgICA2NCArLQogZHJpdmVycy9tdGQvbmFu
ZC9yYXcvbXRrX2VjYy5jICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgIDQgKy0KIGRyaXZl
cnMvbXRkL25hbmQvcmF3L210a19lY2MuaCAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICA0
ICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfbmFuZC5jICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICA4OCArLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9iYXNlLmMgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAgODAgKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfYmNoLmMg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAzICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9u
YW5kX21hY3Jvbml4LmMgICAgICAgICAgICAgICAgICAgIHwgICA0NSArCiBkcml2ZXJzL210ZC9u
YW5kL3Jhdy9zdG0zMl9mbWMyX25hbmQuYyAgICAgICAgICAgICAgICAgIHwgICAyMSArLQogZHJp
dmVycy9tdGQvbmFuZC9zcGkvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAg
IDIgKy0KIGRyaXZlcnMvbXRkL25hbmQvc3BpL2NvcmUuYyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgICA1ICstCiBkcml2ZXJzL210ZC9uYW5kL3NwaS9naWdhZGV2aWNlLmMgICAgICAg
ICAgICAgICAgICAgICAgIHwgICA4MSArLQogZHJpdmVycy9tdGQvbmFuZC9zcGkvcGFyYWdvbi5j
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxNDcgKysKIGRyaXZlcnMvbXRkL3BhcnNlcnMv
YWZzLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAzICstCiBkcml2ZXJzL210
ZC9zcGktbm9yL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgNyAtCiBk
cml2ZXJzL210ZC9zcGktbm9yL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICAgMSAtCiBkcml2ZXJzL210ZC9zcGktbm9yL2NhZGVuY2UtcXVhZHNwaS5jICAgICAgICAgICAg
ICAgICAgIHwgICAyMSArCiBkcml2ZXJzL210ZC9zcGktbm9yL2ludGVsLXNwaS1wY2kuYyAgICAg
ICAgICAgICAgICAgICAgIHwgICAgNiArLQogZHJpdmVycy9tdGQvc3BpLW5vci9pbnRlbC1zcGkt
cGxhdGZvcm0uYyAgICAgICAgICAgICAgICB8ICAgIDUgKy0KIGRyaXZlcnMvbXRkL3NwaS1ub3Iv
aW50ZWwtc3BpLmMgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICA1ICstCiBkcml2ZXJzL210
ZC9zcGktbm9yL2ludGVsLXNwaS5oICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgNSArLQog
ZHJpdmVycy9tdGQvc3BpLW5vci9zcGktbm9yLmMgICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAgMzcgKy0KIGRyaXZlcnMvbXRkL3NwaS1ub3Ivc3RtMzItcXVhZHNwaS5jICAgICAgICAgICAg
ICAgICAgICAgfCAgNzIwIC0tLS0tLS0tLQogaW5jbHVkZS9saW51eC9kbWEvbXhzLWRtYS5oICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMjQgKwogaW5jbHVkZS9saW51eC9tdGQvY2Zp
LmggICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgIDcgKwogaW5jbHVkZS9saW51
eC9tdGQvaHlwZXJidXMuaCAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgODQgKysKIGlu
Y2x1ZGUvbGludXgvbXRkL210ZC5oICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
ICA2ICsKIGluY2x1ZGUvbGludXgvbXRkL29uZW5hbmRfcmVncy5oICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgICAxICsKIGluY2x1ZGUvbGludXgvbXRkL3Jhd25hbmQuaCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgIDM2ICsKIGluY2x1ZGUvbGludXgvbXRkL3NwaW5hbmQuaCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDM1ICstCiBpbmNsdWRlL2xpbnV4L3BsYXRmb3Jt
X2RhdGEvaW50ZWwtc3BpLmggICAgICAgICAgICAgICAgIHwgICAgNSArLQogaW5jbHVkZS91YXBp
L210ZC9tdGQtYWJpLmggICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMTAgKy0KIDUz
IGZpbGVzIGNoYW5nZWQsIDI2NjkgaW5zZXJ0aW9ucygrKSwgMjU2NSBkZWxldGlvbnMoLSkKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2N5
cHJlc3MsaHlwZXJmbGFzaC50eHQKIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbXRkL3N0bTMyLXF1YWRzcGkudHh0CiBjcmVhdGUgbW9kZSAxMDA2
NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC90aSxhbTY1NC1oYm1jLnR4
dAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbXRkL2h5cGVyYnVzL0tjb25maWcKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL210ZC9oeXBlcmJ1cy9NYWtlZmlsZQogY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvbXRkL2h5cGVyYnVzL2hibWMtYW02NTQuYwogY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvbXRkL2h5cGVyYnVzL2h5cGVyYnVzLWNvcmUuYwogZGVsZXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvbXRkL25hbmQvcmF3L2dwbWktbmFuZC9ncG1pLWxpYi5jCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9tdGQvbmFuZC9zcGkvcGFyYWdvbi5jCiBkZWxldGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9tdGQvc3BpLW5vci9zdG0zMi1xdWFkc3BpLmMKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBpbmNsdWRlL2xpbnV4L2RtYS9teHMtZG1hLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRl
L2xpbnV4L210ZC9oeXBlcmJ1cy5oCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
