Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BD67D8AD
	for <lists+linux-mtd@lfdr.de>; Thu,  1 Aug 2019 11:36:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WLERrBOp+GPnGTg5vvLQqRTPimNBXhC3VK6v59KWWqk=; b=ERsysqd3J9093h
	vtspvJK++gTcXDYzCMxu3tHui0G2CsWqx+FAWy1MikOtke9C9fSu4QnoyvayhxxvOJKIRO6eQgqST
	XLZTvZtKw2tZVLvUJozZ+knKs63hj81r4lLy383SYWROLmG80YEP9q6g9bj9ou/Lh4noOz1sus7tr
	eFV2IcpsGnL1kxqRpJj7i+YbOW0PzwBN9EXW66fltSEjwTPKFtqLtV+Ve126OxmD5vaZJvkrH6Ka+
	NhmdSICFi4g36nO3Dbh00OLkmL3Uq43iN+2ibCeoi2KdTc9gYrctgRschKRbAs4Cr1a3KazdesOTc
	DJ/P7dTH8/RFyxuQPzdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht7W1-0004lX-Lj; Thu, 01 Aug 2019 09:36:53 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht7Vt-0004kF-VI
 for linux-mtd@lists.infradead.org; Thu, 01 Aug 2019 09:36:47 +0000
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id A37A2200003;
 Thu,  1 Aug 2019 09:36:32 +0000 (UTC)
Date: Thu, 1 Aug 2019 11:36:31 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: masonccyang@mxic.com.tw
Subject: Re: [PATCH v6 2/2] dt-bindings: mtd: Document Macronix raw NAND
 controller bindings
Message-ID: <20190801113631.0dcbbf2a@xps13>
In-Reply-To: <OF6FA21ABA.C0DF9C78-ON48258449.00331EB3-48258449.0034600D@mxic.com.tw>
References: <1564631710-30276-1-git-send-email-masonccyang@mxic.com.tw>
 <1564631710-30276-3-git-send-email-masonccyang@mxic.com.tw>
 <20190801091310.035bc824@xps13>
 <OF6FA21ABA.C0DF9C78-ON48258449.00331EB3-48258449.0034600D@mxic.com.tw>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_023646_323396_333DF8F1 
X-CRM114-Status: GOOD (  22.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, christophe.kerello@st.com,
 vigneshr@ti.com, bbrezillon@kernel.org, juliensu@mxic.com.tw,
 lee.jones@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 paul@crapouillou.net, marek.vasut@gmail.com, paul.burton@mips.com,
 liang.yang@amlogic.com, linux-mtd@lists.infradead.org, stefan@agner.ch,
 richard@nod.at, anders.roxell@linaro.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFzb24sCgptYXNvbmNjeWFuZ0BteGljLmNvbS50dyB3cm90ZSBvbiBUaHUsIDEgQXVnIDIw
MTkgMTc6MzI6MDQgKzA4MDA6Cgo+IEhpIE1pcXVlbCwKPiAKPiA+ID4gRG9jdW1lbnQgdGhlIGJp
bmRpbmdzIHVzZWQgYnkgdGhlIE1hY3Jvbml4IHJhdyBOQU5EIGNvbnRyb2xsZXIuCj4gPiA+IAo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBNYXNvbiBZYW5nIDxtYXNvbmNjeWFuZ0BteGljLmNvbS50dz4K
PiA+ID4gLS0tCj4gPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL214
aWMtbmFuZC50eHQgfCAxOSAgIAo+ICsrKysrKysrKysrKysrKysrKysKPiA+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgICAKPiBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL214aWMtbmFuZC50eHQKPiA+ID4g
Cj4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRk
L214aWMtbmFuZC50eHQgYi8gIAo+ID4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L210ZC9teGljLW5hbmQudHh0ICAKPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+ID4gaW5k
ZXggMDAwMDAwMC4uZGUzN2Q2MAo+ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvbXhpYy1uYW5kLnR4dAo+ID4gPiBAQCAt
MCwwICsxLDE5IEBACj4gPiA+ICtNYWNyb25peCBSYXcgTkFORCBDb250cm9sbGVyIERldmljZSBU
cmVlIEJpbmRpbmdzCj4gPiA+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gPiA+ICsKPiA+ID4gK1JlcXVpcmVkIHByb3BlcnRpZXM6Cj4gPiA+ICst
IGNvbXBhdGlibGU6IHNob3VsZCBiZSAibXhpY3ksbXVsdGktaXRmYy12MDA5LW5hbmQtbW9ycGgi
Cj4gPiA+ICstIHJlZzogc2hvdWxkIGNvbnRhaW4gMSBlbnRyeSBmb3IgdGhlIHJlZ2lzdGVycwo+
ID4gPiArLSBpbnRlcnJ1cHRzOiBpbnRlcnJ1cHQgbGluZSBjb25uZWN0ZWQgdG8gdGhpcyByYXcg
TkFORCBjb250cm9sbGVyCj4gPiA+ICstIGNsb2NrLW5hbWVzOiBzaG91bGQgY29udGFpbiAicHMi
LCAic2VuZCIgYW5kICJzZW5kX2RseSIKPiA+ID4gKy0gY2xvY2tzOiBzaG91bGQgY29udGFpbiAz
IHBoYW5kbGVzIGZvciB0aGUgInBzIiwgInNlbmQiIGFuZAo+ID4gPiArICAgICJzZW5kX2RseSIg
Y2xvY2tzCj4gPiA+ICsKPiA+ID4gK0V4YW1wbGU6Cj4gPiA+ICsKPiA+ID4gKyAgIG5hbmQ6IG5h
bmQtY29udHJvbGxlckA0M2MzMDAwMCB7Cj4gPiA+ICsgICAgICBjb21wYXRpYmxlID0gIm14aWN5
LG11bHRpLWl0ZmMtdjAwOS1uYW5kLW1vcnBoIjsgIAo+ID4gCj4gPiAibXhpY3kiIGxvb2tzIHN0
cmFuZ2UgdG8gbWUsIEkga25vdyBpdCBoYXMgYmVlbiB1c2VkIGluIHRoZSBwYXN0IGFuZAo+ID4g
Y2Fubm90IGJlIHJlbW92ZWQsIGJ1dCBJIGRvbid0IHRoaW5rIGl0IGlzIHdpc2UgdG8gY29udGlu
dWUgdXNpbmcgaXQKPiA+IHdoaWxlIHlvdXIgdXNlICJteGljIiBpbiBhbGwgeW91ciBvdGhlciBj
b250cmlidXRpb25zLiBJIHdvdWxkIHVwZGF0ZQo+ID4gdGhlIHByZWZpeCB0byBteGljIGhlcmUg
YW5kIGZpbGwtaW4gdGhlIHJlbGV2YW50IGRvYy4KPiA+IAo+ID4gQWxzbywgd2hhdCBpcyBuYW5k
LW1vcnBoPyBJIHRob3VnaHQgd2Ugd2VyZSBva2F5IGZvcgo+ID4gdGhlICItbmFuZC1jb250cm9s
bGVyIiBzdWZmaXguCj4gPiAgIAo+IAo+IEkgdGhvdWdodCB0aGVyZSBpcyBhIG5vZGUgbmFtZSAi
bmFuZC1jb250cm9sbGVyQDQzYzMwMDAwIiBhbmQgdGhlCj4gIi1uYW5kLWNvbnRyb2xsZXIiIHN1
ZmZpeCBpbiBjb21wYXRpYmxlIHByb3BlcnR5IHNlZW1zIHJlcGVhdGVkLgoKSXQgaXMgcmVwZWF0
ZWQgYmVjYXVzZSBpdCB3b24ndCBiZSB1c2VkIHRoZSBzYW1lIHdheS4gVGhlIG5vZGUgbmFtZQp3
aWxsIG9ubHkgYmUgcmVsZXZhbnQgaW4gdGhlIERUIGl0c2VsZiAodG8gcmVmZXJlbmNlIGEgbm9k
ZSBmb3IKaW5zdGFuY2UpLiBJIHdpbGwgYWxzbyBhcHBlYXIgaW4gdGhlIHN5c2ZzLgoKVGhlIGNv
bXBhdGlibGVzIGFyZSBsaXN0ZWQgaW4gZHJpdmVycyBhbmQgImdpdmVuIiB0byB0aGUga2VybmVs
IGNvcmUgc28KdGhhdCB0aGUgZGV2aWNlLWRyaXZlciBhc3NvY2lhdGlvbiBjYW4gdGFrZSBwbGFj
ZS4KCj4gCj4gSW4gYWRkaXRpb24sIEkgd291bGQgbGlrZSB0byBpbmRpY2F0ZSBpdCdzIGEgbXVs
dGkgZnVuY3Rpb24gY29udHJvbGxlci4KPiAKPiBuYW5kLW1vcnBoIG1lYW5zIHRoaXMgbXVsdGkg
aW50ZXJmYWNlIGNvbnRyb2xsZXIgKG11bHRpLWl0ZmMpIHdvcmtzIGluCj4gcmF3IE5BTkQgY29u
dHJvbGxlci4KCkkgdGhpbmsgdGhpcyBpcyBjbGVhciBhcyB5b3UgYWxyZWFkeSBwdXQgIm11bHRp
LWl0ZmMiIGluIHRoZSBuYW1lLiBJZgp5b3Ugd2FudCB5b3UgY2FuIHN3aXRjaCB0byAibW9ycGgi
IGluIHRoZSBwcmVmaXgsIGJ1dCBJIHdhbnQgdGhlIHN1ZmZpeAp0byBiZSAiLW5hbmQtY29udHJv
bGxlciIuCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
