Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B17713B0DC
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 18:28:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DQyL6EaUUIZxxp0nJqNKJk88+pLyvr3JemYEvKPh1M=; b=iOxF6dRMJwAU7q
	YAajg8kbGkCz7LScQZd6s1SHGczoA7E5xGTVAHyuQDIAOTdN1FDomAhMT6V+4zfSyrcylU62zaaFC
	ay4FyJPncXAvOJnvzUT4kZpP/JkC/7L85pi4Mb683OzB/B6pKH5seCzazldYmB4spEVsYmnsj5lQk
	sq90sKYz/oROYL/tWSQHnAO0zoOuMYScp3lyBhYTOHiIswFYJIGWJ7OGE45rKTdDzSmeEgONuPLDU
	NbaJ4TDRlsSH3+/EGjpg3j4bp3bjRhe5hBuzcDgPIR1Ageqawhs5aJvQVOmXkXL0szIOjcsz8uIIv
	uCr0K7PYLFKlQGrOUvXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPzU-0004DX-V2; Tue, 14 Jan 2020 17:28:32 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPzL-0004DA-7x
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 17:28:27 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C8D0D24000A;
 Tue, 14 Jan 2020 17:28:18 +0000 (UTC)
Date: Tue, 14 Jan 2020 18:28:17 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Robert Marko <robert.marko@sartura.hr>, miquel.raynal@bootlin.com,
 richard@nod.at, dwmw2@infradead.org, computersforpeace@gmail.com,
 marek.vasut@gmail.com, vigneshr@ti.com, frieder.schrempf@kontron.de,
 bbrezillon@kernel.org, tmcmc-mb-yfuruyama7@ml.toshiba.co.jp,
 linux-mtd@lists.infradead.org
Subject: Re: [PATCH] mtd: nand: spi: add support for Toshiba TC58CVG2S0HRAIJ
Message-ID: <20200114182817.3e905882@xps13>
In-Reply-To: <20200114170431.1201-1-miquel.raynal@bootlin.com>
References: <20200103161427.2630067-1-robert.marko@sartura.hr>
 <20200114170431.1201-1-miquel.raynal@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_092823_418089_2919E578 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Luka Perkov <luka.perkov@sartura.hr>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZSBv
biBUdWUsIDE0IEphbiAyMDIwCjE4OjA0OjMxICswMTAwOgoKPiBPbiBGcmksIDIwMjAtMDEtMDMg
YXQgMTY6MTQ6MjcgVVRDLCBSb2JlcnQgTWFya28gd3JvdGU6Cj4gPiBUb3NoaWJhIHJlY2VudGx5
IGxhdW5jaGVkIG5ldyByZXZpc2lvbnMgb2YgdGhlaXIgc2VyaWFsIFNMQyBOQU5EIHNlcmllcy4K
PiA+IFRDNThDVkcyUzBIUkFJSiBpcyBhIHJlZnJlc2ggb2YgcHJldmlvdXMgc2VyaWVzIHdpdGgg
bWlub3IgaW1wcm92ZW1lbnRzLgo+ID4gQmFzaWMgcGFyYW1ldGVycyBhcmUgc2FtZSBzbyBsZXRz
IGFkZCBzdXBwb3J0IGZvciB0aGlzIG5ldyByZXZpc2lvbi4KPiA+IAo+ID4gRGF0YXNoZWV0OiBo
dHRwczovL2J1c2luZXNzLmtpb3hpYS5jb20vaW5mby9kb2NnZXQuanNwP2RpZD01ODYwMSZwcm9k
TmFtZT1UQzU4Q1ZHMlMwSFJBSUoKPiA+IAo+ID4gVGVzdGVkIHVuZGVyIGtlcm5lbCA1LjQuNy4K
PiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogUm9iZXJ0IE1hcmtvIDxyb2JlcnQubWFya29Ac2FydHVy
YS5ocj4KPiA+IENjOiBMdWthIFBlcmtvdiA8bHVrYS5wZXJrb3ZAc2FydHVyYS5ocj4gIAo+IAo+
IEFwcGxpZWQgdG8gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvbXRkL2xpbnV4LmdpdCBuYW5kL25leHQsIHRoYW5rcy4KCkFzIGFuIEZZSSwgdGhlIHN1Ympl
Y3QgcHJlZml4IHNob3VsZCBoYXZlIGJlZW4gIm10ZDogc3BpbmFuZDoiLiBJCmNoYW5nZWQgaXQg
YmVmb3JlIGFwcGx5aW5nLgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFp
bGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbXRkLwo=
