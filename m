Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E790555349
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Jun 2019 17:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3jqT3CB1PlzofLInnfj2t/nXiEn98bFWsGCJLuNEiV8=; b=DKytgThCRqqZdI
	9WX9NnS9i6agM8Q45cZ/YFX1JKS44MgYUwvfbP82z0bjZuXQLQaGo3rmzWUCC5Gd6bTQKauKyvLCc
	Y7s00BDUW54uTg1p8M+SAJB0j9LsEKcycH8a/6j2ghwCggdjRkkr4pfvq/DXl89YufEtJkZWjfy2X
	ljOAlLhhIimIzbtMazqszO0wMv7EAj0dOVQTT1G1+vdlyY8sg/6zieFd4/IXoGPx1ZWB7uYKswxhP
	Ews06PfWyjw9jwE454CkxvLTHb+nTSFwpVFjeJo1JW3fQsctejyJ3ey69O/Kahx2XsXoaP3fRC6Ww
	KEwDpX/fpA1lyqUSwbZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnI7-0005Dq-LZ; Tue, 25 Jun 2019 15:23:27 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnHv-00059s-Ts
 for linux-mtd@lists.infradead.org; Tue, 25 Jun 2019 15:23:17 +0000
Received: by mail-ot1-f68.google.com with SMTP id s20so17669700otp.4
 for <linux-mtd@lists.infradead.org>; Tue, 25 Jun 2019 08:23:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gRnFrYoEfNfsdoVhVQW0Fet9FOWwAVGxt1dsfE11KLs=;
 b=rLdirDixUBT25LKCftQLDRef7kW60uPDrvKRwO8qTdzbbGMSysseNSapwpo8/m+kvm
 Lv5AN7fhzoc2/UYrk0Z3Q5/Ntkn/8hzjYi39wT54tKHpPWseOm98Z40xAgNeM6gpQV6b
 B2DHZ4mbmNlh/MHE1oGvxZjH+dsTkX35GY/rQ5dFO9VLb9AL7/Fiw3KBOUD7ggC57N2B
 PwDSepIpti5557Xc5vGMSbuufzc2kUmsKQt77BUstleaYgkKOs3eLlXWD1PwTj8kG1fh
 SJzXZRtEJLemjwhzliVGmfP/SZO49g0tySmM1bGRukEBWvYajjSe6jTXSeq11q1QXBnA
 FwEg==
X-Gm-Message-State: APjAAAWvzy2TLqM36HoLjMKJrZT6jzq4i3M3C+ydFz44+aMMNf3rOXVc
 C3mRl7IzXgQ6n/XPBLjqSCacXpdKFrBmOk8fiHo=
X-Google-Smtp-Source: APXvYqx7FUyHJAxzoNmkzQVpQoKhqHv22N+bGY9kRSc3sstmCdqnILXmddt697oOtVxwiUyqQV69PSEDOuLGztoUKmQ=
X-Received: by 2002:a9d:2f03:: with SMTP id h3mr91953526otb.107.1561476193134; 
 Tue, 25 Jun 2019 08:23:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190614150638.28383-1-piotrs@cadence.com>
 <20190614150956.31244-1-piotrs@cadence.com>
 <dd96bd1b-e944-e95d-31c9-6dd1d0b5720f@gmail.com>
 <20190625130231.GA31865@global.cadence.com>
 <20110899-d456-8403-f9be-663be5fcd07e@gmail.com>
In-Reply-To: <20110899-d456-8403-f9be-663be5fcd07e@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 25 Jun 2019 17:23:01 +0200
Message-ID: <CAMuHMdXJ=DQgNzvwXiZd2-Xm=GwO0gFywOxpuX+xwHc3J7q+3g@mail.gmail.com>
Subject: Re: [v3 1/2] mtd: nand: Add Cadence NAND controller driver
To: Dmitry Osipenko <digetx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_082316_000989_7E6A24D0 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, Boris Brezillon <bbrezillon@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Marek Vasut <marek.vasut@gmail.com>,
 Paul Burton <paul.burton@mips.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, Piotr Sroka <piotrs@cadence.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMjUsIDIwMTkgYXQgNDo0NSBQTSBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBn
bWFpbC5jb20+IHdyb3RlOgo+IDI1LjA2LjIwMTkgMTY6MDIsIFBpb3RyIFNyb2thINC/0LjRiNC1
0YI6Cj4gPiBUaGUgMDYvMTYvMjAxOSAxNjo0MiwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+ID4+
IDE0LjA2LjIwMTkgMTg6MDksIFBpb3RyIFNyb2thINC/0LjRiNC10YI6Cj4gPj4+ICsvKiBDYWRu
ZW5jZSBOQU5EIGZsYXNoIGNvbnRyb2xsZXIgY2FwYWJpbGl0aWVzIGdldCBmcm9tIGRyaXZlciBk
YXRhLiAqLwo+ID4+PiArc3RydWN0IGNhZGVuY2VfbmFuZF9kdF9kZXZkYXRhIHsKPiA+Pj4gKyAg
ICAvKiBTa2V3IHZhbHVlIG9mIHRoZSBvdXRwdXQgc2lnbmFscyBvZiB0aGUgTkFORCBGbGFzaCBp
bnRlcmZhY2UuICovCj4gPj4+ICsgICAgdTMyIGlmX3NrZXc7Cj4gPj4+ICsgICAgLyogSXQgaW5m
b3JtcyBpZiBhZ2luZyBmZWF0dXJlIGluIHRoZSBETEwgUEhZIHN1cHBvcnRlZC4gKi8KPiA+Pj4g
KyAgICB1OCBwaHlfZGxsX2FnaW5nOwo+ID4+PiArICAgIC8qCj4gPj4+ICsgICAgICogSXQgaW5m
b3JtcyBpZiBwZXIgYml0IGRlc2tldyBmb3IgcmVhZCBhbmQgd3JpdGUgcGF0aCBpbgo+ID4+PiAr
ICAgICAqIHRoZSBQSFkgaXMgc3VwcG9ydGVkLgo+ID4+PiArICAgICAqLwo+ID4+PiArICAgIHU4
IHBoeV9wZXJfYml0X2Rlc2tldzsKPiA+Pj4gKyAgICAvKiBJdCBpbmZvcm1zIGlmIHNsYXZlIERN
QSBpbnRlcmZhY2UgaXMgY29ubmVjdGVkIHRvIERNQSBlbmdpbmUuICovCj4gPj4+ICsgICAgdTgg
aGFzX2RtYTsKPiA+Pgo+ID4+IFRoZXJlIGlzIG5vIG5lZWRlZCB0byBkZWRpY2F0ZSA4IGJpdHMg
dG8gYSB2YXJpYWJsZSBpZiB5b3Ugb25seSBjYXJlIGFib3V0IGEgc2luZ2xlCj4gPj4gYml0LiBZ
b3UgbWF5IHdyaXRlIHRoaXMgYXM6Cj4gPj4KPiA+PiBib29sIGhhc19kbWEgOiAxOwo+ID4gSSBt
b2RpZmllZCBpdCBsb2NhbGx5IGJ1dCBpdCBsb29rcyB0aGF0IGNoZWNrcGF0Y2ggZG9lcyBub3Qg
bGlrZSBzdWNoCj4gPiBub3RhdGlvbgo+ID4gIldBUk5JTkc6IEF2b2lkIHVzaW5nIGJvb2wgYXMg
Yml0ZmllbGQuICBQcmVmZXIgYm9vbCBiaXRmaWVsZHMgYXMKPiA+IHVuc2lnbmVkIGludCBvciB1
PDh8MTZ8MzI+Igo+ID4gU28gbWF5YmUgSSB3aWxsIGxlYXZlIGl0IGFzIGlzLgo+Cj4gWW91IG1h
eSBhbHNvIHVzZSB0aGUgInU4IDogMSIgZm9ybSB0aGVuLCB0byBzYXRpc2Z5IHRoZSBjaGVja3Bh
dGNoLiBQcm9iYWJseQo+ICJ1bnNpZ25lZCBpbnQgOiAxIiB3aWxsIGJlIHRoZSBiZXN0IGluIHRo
aXMgY2FzZSwgaXQncyB1cCB0byB5b3UuCgpFeGFjdGx5LiBUaGUgY29tcGlsZXIgd2lsbCBhbGxv
Y2F0ZSB0aGUgc3VmZmljaWVudCBhbW91bnQgb2Ygc3BhY2UgdG8gc3RvcmUgdGhlCmJpdGZpZWxk
LgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0g
CkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIg
LS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0
ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFs
a2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcg
bGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZh
bGRzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
