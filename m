Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4E6F9293
	for <lists+linux-mtd@lfdr.de>; Tue, 12 Nov 2019 15:31:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kVsSjNp7sV1MKjkXaTEyvU26ja1Xw+q/vrmNZ6TNLeE=; b=gYfjhFRQnLJhtt
	RXEUc4jdek5e2/wv+cHnGfiyLB1hE318UVXrwhQMdrHK31E3BG+Xo4dXW2F/HqKVuw9YDwf8rcxqc
	6MAgDTwWXZRtnNGDGNUXVQauLceLQmLfrBLgzqNzjomgblXwlRXdfJRslSx6241D5pcBqq+dgd2/H
	EtrCHAbQm0wBv24Xmqb/a8Ow4xC4ma87yL07jb3CxuMy7gFy9joc5aD+s+vnt1JoF/1cyloLZ1a6b
	T/LtO8+QJkmQQMqSxjqzidNU9CZsAcXEiP8EZNSNn4W0PMoBlcXOLFg7Fdqnvgigw4AF9ryzsSEL1
	UZaoYUDFQBBxXtQOWuAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXCh-0006wl-U0; Tue, 12 Nov 2019 14:31:35 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXCX-0006wB-G3
 for linux-mtd@lists.infradead.org; Tue, 12 Nov 2019 14:31:27 +0000
Received: from xps13 (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr
 [86.206.246.123]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 4112A200015;
 Tue, 12 Nov 2019 14:31:17 +0000 (UTC)
Date: Tue, 12 Nov 2019 15:31:16 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>
Subject: [GIT PULL] mtd: nand: Changes for 5.5
Message-ID: <20191112153116.03d7c885@xps13>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_063125_675797_35867AE4 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIGlzIHRoZSBOQU5EIFBSIGZvciA1LjUuCgpUaGFua3MsCk1pcXXDqGwKCgpU
aGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDU0ZWNiOGY3MDI4YzVlYjNkNzQwYmI4
MmIwZjFkOTBmMmRmNjNjNWM6CgogIExpbnV4IDUuNC1yYzEgKDIwMTktMDktMzAgMTA6MzU6NDAg
LTA3MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoKCiAgaHR0cHM6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbXRkL2xpbnV4LmdpdCBu
YW5kL25leHQKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byA3NzcyNjBhNWM5OTIyNmNm
YTU4MzI1YjZhN2MyZjM5YmI0NmY1YWFmOgoKICBtdGQ6IHJhd25hbmQ6IHJlbW92ZSB1bmVjZXNz
YXJ5IGNoZWNraW5nIGlmIGRtYWMgaXMgTlVMTCAoMjAxOS0xMC0zMCAwOToyMjoxMyArMDEwMCkK
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KRmxvcmlhbiBGYWluZWxsaSAoMSk6CiAgICAgIG10ZDogcmF3bmFuZDogYnJjbW5h
bmQ6IEZpeCBOVUxMIHBvaW50ZXIgYXNzaWdubWVudAoKS2FtYWwgRGFzdSAoMSk6CiAgICAgIG10
ZDogbmFuZDogYnJjbW5hbmQ6IEFkZCBzdXBwb3J0IGZvciBmbGFzaC1kbWEgdjAKCk1hc2FoaXJv
IFlhbWFkYSAoMSk6CiAgICAgIG10ZDogcmF3bmFuZDogZGVuYWxpOiByZW1vdmUgdGhlIG9sZCB1
bmlmaWVkIGNvbnRyb2xsZXIvY2hpcCBEVCBzdXBwb3J0CgpQaW90ciBTcm9rYSAoNCk6CiAgICAg
IG10ZDogcmF3bmFuZDogQ2hhbmdlIGNhbGN1bGF0aW5nIG9mIHBvc2l0aW9uIHBhZ2UgY29udGFp
bmluZyBCQk0KICAgICAgbXRkOiByYXduYW5kOiBBZGQgbmV3IENhZGVuY2UgTkFORCBkcml2ZXIg
dG8gTVREIHN1YnN5c3RlbQogICAgICBkdC1iaW5kaW5nczogbXRkOiBBZGQgQ2FkZW5jZSBOQU5E
IGNvbnRyb2xsZXIgZHJpdmVyCiAgICAgIG10ZDogcmF3bmFuZDogcmVtb3ZlIHVuZWNlc3Nhcnkg
Y2hlY2tpbmcgaWYgZG1hYyBpcyBOVUxMCgpZdWVIYWliaW5nICgyKToKICAgICAgbXRkOiByYXdu
YW5kOiBteGljOiBSZW1vdmUgZGV2X2VycigpIG9uIHBsYXRmb3JtX2dldF9pcnEoKSBmYWlsdXJl
CiAgICAgIG10ZDogcmF3bmFuZDogY2FkZW5jZTogUmVtb3ZlIGRldl9lcnIoKSBvbiBwbGF0Zm9y
bV9nZXRfaXJxKCkgZmFpbHVyZQoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9t
dGQvY2FkZW5jZS1uYW5kLWNvbnRyb2xsZXIudHh0IHwgICA1MyArCiBNQUlOVEFJTkVSUyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgIDcg
KwogZHJpdmVycy9tdGQvbmFuZC9yYXcvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgICA3ICsKIGRyaXZlcnMvbXRkL25hbmQvcmF3L01ha2VmaWxlICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgMSArCiBkcml2ZXJzL210ZC9uYW5k
L3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMjMg
Ky0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L2NhZGVuY2UtbmFuZC1jb250cm9sbGVyLmMgICAgICAg
ICAgICAgICAgICAgIHwgMzAzMCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9kZW5hbGlfZHQuYyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgNTUgKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3
L214aWNfbmFuZC5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgNCArLQog
ZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9iYXNlLmMgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgICA4ICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX21pY3Jvbi5jICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgIDQgKy0KIDEwIGZpbGVzIGNoYW5nZWQs
IDMxMzIgaW5zZXJ0aW9ucygrKSwgNjAgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9jYWRlbmNlLW5hbmQtY29udHJv
bGxlci50eHQKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWRlbmNl
LW5hbmQtY29udHJvbGxlci5jCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
