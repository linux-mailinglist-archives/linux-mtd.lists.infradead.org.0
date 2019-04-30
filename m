Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6F3F1B1
	for <lists+linux-mtd@lfdr.de>; Tue, 30 Apr 2019 09:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pu3x5+XfaD2T2+cKgQyS+b1fz/DKwSOBMc554ONeGaQ=; b=JBFNXoSscAfsnB
	P9f+v5TtxDxPDEegftDVysvRFjX+dBpgiBBAj5iW0hddkJnlD43bRP5iTdjfk9F+sMo0y4ZML5wrV
	qgKnN7wjqzxcYZCTnS0rdSmJO5bZ/+w7GUMV+pNSx+jT0LZDZc8IYwUV9/HowYSrhWo1KL+ig/xyI
	uMkzKyJuJC/sdNrPk1qawtYnZtOacCSkE+YWJ8fXplvazvYpemmkfK9rNtlCS0MEXmoixcctF8qcc
	fe+BfttWCdpIAzfmDtT5hRg/IH2dPll8l0yckJl2YrEjMdZUCfI6K3p6LabS8EdijZxDE+mGB+mTD
	vtjL2w1xb8Ktss0pJxWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLNeY-0008NI-NW; Tue, 30 Apr 2019 07:58:14 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLNeQ-0008M6-Eg
 for linux-mtd@lists.infradead.org; Tue, 30 Apr 2019 07:58:08 +0000
X-Originating-IP: 90.88.147.33
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 7BA3460004;
 Tue, 30 Apr 2019 07:58:00 +0000 (UTC)
Date: Tue, 30 Apr 2019 09:57:59 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
Subject: Re: [PATCH 4/4] mtd: spinand: micron: Support for new Micron SPI
 NAND flashes
Message-ID: <20190430095759.07a3ca6d@xps13>
In-Reply-To: <MN2PR08MB5951DEE6417F39426483CF45B85F0@MN2PR08MB5951.namprd08.prod.outlook.com>
References: <MN2PR08MB5951DEE6417F39426483CF45B85F0@MN2PR08MB5951.namprd08.prod.outlook.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_005807_095433_7A3BEF64 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
 Richard Weinberger <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU2hpdmFtdXJ0aHksCgoiU2hpdmFtdXJ0aHkgU2hhc3RyaSAoc3NoaXZhbXVydGh5KSIgPHNz
aGl2YW11cnRoeUBtaWNyb24uY29tPiB3cm90ZSBvbgpUdWUsIDI2IE1hciAyMDE5IDEwOjUyOjA0
ICswMDAwOgoKPiBEcml2ZXIgaXMgcmVkZXNpZ25lZCB1c2luZyBwYXJhbWV0ZXIgcGFnZSB0byBz
dXBwb3J0IE1pY3JvbiBTUEkgTkFORAo+IGZsYXNoZXMuCj4gCj4gU3VwcG9ydCBmb3Igc2VsZWN0
aW5nIGRpZSBpcyBlbmFibGVkIGZvciBtdWx0aS1kaWUgZmxhc2hlcy4KPiBUdXJuIE9PQiBsYXlv
dXQgZ2VuZXJpYy4KPiAKPiBGaXh1cCBzb21lIG9mIHRoZSBwYXJhbWV0ZXIgcGFnZSBkYXRhIGFz
IHBlciBNaWNyb24gZGF0YXNoZWV0Lgo+IAoKU2FtZSByZW1hcms6IEkgdGhpbmsgdGhpcyBwYXRj
aCB3b3VsZCBiZXR0ZXIgYmUgc3BsaXQuCgo+IFNpZ25lZC1vZmYtYnk6IFNoaXZhbXVydGh5IFNo
YXN0cmkgPHNzaGl2YW11cnRoeUBtaWNyb24uY29tPgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVRE
IGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbXRkLwo=
