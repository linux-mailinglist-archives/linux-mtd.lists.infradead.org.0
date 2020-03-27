Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B4319535A
	for <lists+linux-mtd@lfdr.de>; Fri, 27 Mar 2020 09:53:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dR2rQ3akBVY4B8rLnJLfvjuQ8sOoQ4U+afcna9MtoZk=; b=TEv65mbStZqZyT
	f6iFJ/kBp0Wx69T9GcS3r0TS0daRvgtnsH6z5uoiPZ4HSuiOX/ptuf3UsL6MxOucgnD8VUb8vZ4EA
	i2/UwXdY2s1EvA2orAIY2i727w6heofD6ocGFMPtxdMkZrvEaq9QBt3/6RmoU3VVPpzl6gfe4ocgt
	nukBiCKHhrrWceVTnlon5o0KZiv+7b4Amze0EWXehBUWmnwNbAqQoE/0vi4waRSi17Plq8ZlvD72f
	zCSM17FVTQusyYZaAE9wuuQpr/FzkGAp8SCATUb2cZZBg2oP7BviCqoma768UFiuxf7I3IV7oaBCJ
	hOHAFDD22toS2eE2+zjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHkkJ-0008Um-6i; Fri, 27 Mar 2020 08:53:43 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHkk9-0008UR-Pb
 for linux-mtd@lists.infradead.org; Fri, 27 Mar 2020 08:53:35 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 95AA2240006;
 Fri, 27 Mar 2020 08:53:25 +0000 (UTC)
Date: Fri, 27 Mar 2020 09:53:23 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v2] mtd: Convert fallthrough comments into statements
Message-ID: <20200327095323.2f0ea693@xps13>
In-Reply-To: <11409771.dsHhkDzkrP@192.168.0.120>
References: <20200325212115.14170-1-miquel.raynal@bootlin.com>
 <11409771.dsHhkDzkrP@192.168.0.120>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_015334_099661_B3820CF5 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, vigneshr@ti.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgVHVkb3IsCgo8VHVkb3IuQW1iYXJ1c0BtaWNyb2NoaXAuY29tPiB3cm90ZSBvbiBGcmksIDI3
IE1hciAyMDIwIDA4OjQzOjUyICswMDAwOgoKPiBPbiBXZWRuZXNkYXksIE1hcmNoIDI1LCAyMDIw
IDExOjIxOjE1IFBNIEVFVCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+ID4gLS0tIGEvZHJpdmVycy9t
dGQvc3BpLW5vci9zZmRwLmMKPiA+ICsrKyBiL2RyaXZlcnMvbXRkL3NwaS1ub3Ivc2ZkcC5jCj4g
PiBAQCAtNjIzLDcgKzYyMyw2IEBAIHN0YXRpYyB1OCBzcGlfbm9yX3NtcHRfYWRkcl93aWR0aChj
b25zdCBzdHJ1Y3Qgc3BpX25vcgo+ID4gKm5vciwgY29uc3QgdTMyIHNldHRpbmdzKSBjYXNlIFNN
UFRfQ01EX0FERFJFU1NfTEVOXzQ6Cj4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIDQ7Cj4gPiAg
ICAgICAgIGNhc2UgU01QVF9DTURfQUREUkVTU19MRU5fVVNFX0NVUlJFTlQ6Cj4gPiAtICAgICAg
ICAgICAgICAgLyogZmFsbCB0aHJvdWdoICovICAKPiAKPiBqdXN0IG5vdGljZWQgdGhhdCB5b3Ug
Zm9yZ290IHRoZSBzdGF0ZW1lbnQgaGVyZS4KPiAKPiA+ICAgICAgICAgZGVmYXVsdDoKPiA+ICAg
ICAgICAgICAgICAgICByZXR1cm4gbm9yLT5hZGRyX3dpZHRoOwo+ID4gICAgICAgICB9ICAKPiAK
PiAKPiAKCkkgdGhpbmsgdGhpcyBvbmUgaXMgbm90IG5lZWRlZCwgeW91IGRvbid0IG5lZWQgYSBm
YWxsdGhyb3VnaCBzdGF0ZW1lbnQKd2hlbiB0aGVyZSBhcmUgbXVsdGlwbGVzIGNhc2Ugc3RhdGVt
ZW50cyBpbiBhIHJhdyAoZGVmYXVsdCBtaWdodCBiZQpzZWVuIGFzIGEgY2FzZSBzdGF0ZW1lbnQp
LiBTbyBpdCB3YXMgcmVtb3ZlZCBvbiBwdXJwb3NlLgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVRE
IGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbXRkLwo=
