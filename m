Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F052318C554
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Mar 2020 03:33:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=crOSLHSm/bPVXeljXIc/p+UjQRRAHCMNWDwnu4qrv4I=; b=qYEytIAtCErYy7W597nI+9fB1
	IkQVsQYSZPVvrcQFaosBAvedFpGiKJG/fRSTtQ8yoQM9exVyF5RbpxGhQSQDsbZ/kXkD79qO36S5e
	V3NtPqJ39QfCkQ1jX76s+IPVh40UJDSq/hXRsXtkkwfsVrQWNiyt9LmP4mt7qHHjT3oqE4Y35kaPb
	y4crvGVhnfBf+/dAWsihUP/hfouYoLp50ad/wKaKK6QOuvCCu4mqwpgCgkR/Ohfl39+tkmiqKjxDV
	OkMRgyIVoTnaMsB7RTq7tCpp6tioYr0+M89CqOk58FBoz1y8LcUgw1bccPhXdyqdJ5YMOUextbw4o
	LIVc5cTfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF7TW-0000qx-F4; Fri, 20 Mar 2020 02:33:30 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF7TO-0000px-2G
 for linux-mtd@lists.infradead.org; Fri, 20 Mar 2020 02:33:24 +0000
IronPort-SDR: ArS/Zj0DwIybxV073QCPX7TtyAsiGyYAP3Ac8Y8LUZSCjzeg9MQTac1pEU22pX4Fiz8pzEtsgU
 z3C1z/hsu/Tw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 19:33:20 -0700
IronPort-SDR: 3gLzar50WJh58Au/dPfS6lx/T+v8IZQKDkiOwfTZeGclg81UlL5H5XPgqdBU8Slfy0mjCfpB43
 XBZJWWCaLDQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,282,1580803200"; d="scan'208";a="239106177"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 19 Mar 2020 19:33:20 -0700
Received: from [10.215.159.127] (vramuthx-mobl1.gar.corp.intel.com
 [10.215.159.127])
 by linux.intel.com (Postfix) with ESMTP id 0E21358058B;
 Thu, 19 Mar 2020 19:33:13 -0700 (PDT)
Subject: Re: [PATCH v12 1/4] dt-bindings: spi: Add schema for Cadence QSPI
 Controller driver
To: Rob Herring <robh@kernel.org>
References: <20200310015213.1734-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200310015213.1734-2-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200319184448.GA25121@bogus>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <7b12612b-17b2-3bab-5c58-57dd46b7d44d@linux.intel.com>
Date: Fri, 20 Mar 2020 10:33:12 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200319184448.GA25121@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_193322_177739_BA0F91A6 
X-CRM114-Status: GOOD (  22.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: marex@denx.de, devicetree@vger.kernel.org, tien.fong.chee@intel.com,
 tudor.ambarus@gmail.com, vigneshr@ti.com, boris.brezillon@free-electrons.com,
 richard@nod.at, qi-ming.wu@intel.com, simon.k.r.goldschmidt@gmail.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, dinguyen@kernel.org,
 broonie@kernel.org, linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 cheol.yong.kim@intel.com, cyrille.pitchen@atmel.com,
 computersforpeace@gmail.com, dwmw2@infradead.org,
 david.oberhollenzer@sigma-star.at
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUm9iLAoKIMKgwqDCoMKgIFRoYW5rIHlvdSBmb3IgdGhlIHJldmlldyBjb21tZW50cy4uLgoK
T24gMjAvMy8yMDIwIDI6NDQgYW0sIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIFR1ZSwgTWFyIDEw
LCAyMDIwIGF0IDA5OjUyOjEwQU0gKzA4MDAsIFJhbXV0aGV2YXIsVmFkaXZlbCBNdXJ1Z2FuWCB3
cm90ZToKPj4gRnJvbTogUmFtdXRoZXZhciBWYWRpdmVsIE11cnVnYW4gPHZhZGl2ZWwubXVydWdh
bngucmFtdXRoZXZhckBsaW51eC5pbnRlbC5jb20+Cj4+Cj4+IEFkZCBkdC1iaW5kaW5ncyBkb2N1
bWVudGF0aW9uIGZvciBDYWRlbmNlLVFTUEkgY29udHJvbGxlciB0byBzdXBwb3J0Cj4+IHNwaSBi
YXNlZCBmbGFzaCBtZW1vcmllcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogUmFtdXRoZXZhciBWYWRp
dmVsIE11cnVnYW4gPHZhZGl2ZWwubXVydWdhbngucmFtdXRoZXZhckBsaW51eC5pbnRlbC5jb20+
Cj4+IC0tLQo+PiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9jYWRlbmNlLXF1YWRzcGku
dHh0ICAgIHwgIDY3IC0tLS0tLS0tLS0tCj4+ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3Mvc3Bp
L2NkbnMscXNwaS1ub3IueWFtbCAgICAgfCAxMjcgKysrKysrKysrKysrKysrKysrKysrCj4+ICAg
MiBmaWxlcyBjaGFuZ2VkLCAxMjcgaW5zZXJ0aW9ucygrKSwgNjcgZGVsZXRpb25zKC0pCj4+ICAg
ZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQv
Y2FkZW5jZS1xdWFkc3BpLnR4dAo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL2NkbnMscXNwaS1ub3IueWFtbAo+Pgo+PiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9jYWRlbmNlLXF1YWRz
cGkudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9jYWRlbmNlLXF1
YWRzcGkudHh0Cj4+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCA5NDViZTdkNWIy
MzYuLjAwMDAwMDAwMDAwMAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbXRkL2NhZGVuY2UtcXVhZHNwaS50eHQKPj4gKysrIC9kZXYvbnVsbAo+PiBAQCAtMSw2NyAr
MCwwIEBACj4+IC0qIENhZGVuY2UgUXVhZCBTUEkgY29udHJvbGxlcgo+PiAtCj4+IC1SZXF1aXJl
ZCBwcm9wZXJ0aWVzOgo+PiAtLSBjb21wYXRpYmxlIDogc2hvdWxkIGJlIG9uZSBvZiB0aGUgZm9s
bG93aW5nOgo+PiAtCUdlbmVyaWMgZGVmYXVsdCAtICJjZG5zLHFzcGktbm9yIi4KPj4gLQlGb3Ig
VEkgNjZBSzJHIFNvQyAtICJ0aSxrMmctcXNwaSIsICJjZG5zLHFzcGktbm9yIi4KPj4gLQlGb3Ig
VEkgQU02NTQgU29DICAtICJ0aSxhbTY1NC1vc3BpIiwgImNkbnMscXNwaS1ub3IiLgo+PiAtLSBy
ZWcgOiBDb250YWlucyB0d28gZW50cmllcywgZWFjaCBvZiB3aGljaCBpcyBhIHR1cGxlIGNvbnNp
c3Rpbmcgb2YgYQo+PiAtCXBoeXNpY2FsIGFkZHJlc3MgYW5kIGxlbmd0aC4gVGhlIGZpcnN0IGVu
dHJ5IGlzIHRoZSBhZGRyZXNzIGFuZAo+PiAtCWxlbmd0aCBvZiB0aGUgY29udHJvbGxlciByZWdp
c3RlciBzZXQuIFRoZSBzZWNvbmQgZW50cnkgaXMgdGhlCj4+IC0JYWRkcmVzcyBhbmQgbGVuZ3Ro
IG9mIHRoZSBRU1BJIENvbnRyb2xsZXIgZGF0YSBhcmVhLgo+PiAtLSBpbnRlcnJ1cHRzIDogVW5p
dCBpbnRlcnJ1cHQgc3BlY2lmaWVyIGZvciB0aGUgY29udHJvbGxlciBpbnRlcnJ1cHQuCj4+IC0t
IGNsb2NrcyA6IHBoYW5kbGUgdG8gdGhlIFF1YWQgU1BJIGNsb2NrLgo+PiAtLSBjZG5zLGZpZm8t
ZGVwdGggOiBTaXplIG9mIHRoZSBkYXRhIEZJRk8gaW4gd29yZHMuCj4+IC0tIGNkbnMsZmlmby13
aWR0aCA6IEJ1cyB3aWR0aCBvZiB0aGUgZGF0YSBGSUZPIGluIGJ5dGVzLgo+PiAtLSBjZG5zLHRy
aWdnZXItYWRkcmVzcyA6IDMyLWJpdCBpbmRpcmVjdCBBSEIgdHJpZ2dlciBhZGRyZXNzLgo+PiAt
Cj4+IC1PcHRpb25hbCBwcm9wZXJ0aWVzOgo+PiAtLSBjZG5zLGlzLWRlY29kZWQtY3MgOiBGbGFn
IHRvIGluZGljYXRlIHdoZXRoZXIgZGVjb2RlciBpcyB1c2VkIG9yIG5vdC4KPj4gLS0gY2Rucyxy
Y2xrLWVuIDogRmxhZyB0byBpbmRpY2F0ZSB0aGF0IFFTUEkgcmV0dXJuIGNsb2NrIGlzIHVzZWQg
dG8gbGF0Y2gKPj4gLSAgdGhlIHJlYWQgZGF0YSByYXRoZXIgdGhhbiB0aGUgUVNQSSBjbG9jay4g
TWFrZSBzdXJlIHRoYXQgUVNQSSByZXR1cm4KPj4gLSAgY2xvY2sgaXMgcG9wdWxhdGVkIG9uIHRo
ZSBib2FyZCBiZWZvcmUgdXNpbmcgdGhpcyBwcm9wZXJ0eS4KPj4gLQo+PiAtT3B0aW9uYWwgc3Vi
bm9kZXM6Cj4+IC1TdWJub2RlcyBvZiB0aGUgQ2FkZW5jZSBRdWFkIFNQSSBjb250cm9sbGVyIGFy
ZSBzcGkgc2xhdmUgbm9kZXMgd2l0aCBhZGRpdGlvbmFsCj4+IC1jdXN0b20gcHJvcGVydGllczoK
Pj4gLS0gY2RucyxyZWFkLWRlbGF5IDogRGVsYXkgZm9yIHJlYWQgY2FwdHVyZSBsb2dpYywgaW4g
Y2xvY2sgY3ljbGVzCj4+IC0tIGNkbnMsdHNoc2wtbnMgOiBEZWxheSBpbiBuYW5vc2Vjb25kcyBm
b3IgdGhlIGxlbmd0aCB0aGF0IHRoZSBtYXN0ZXIKPj4gLSAgICAgICAgICAgICAgICAgIG1vZGUg
Y2hpcCBzZWxlY3Qgb3V0cHV0cyBhcmUgZGUtYXNzZXJ0ZWQgYmV0d2Vlbgo+PiAtCQkgIHRyYW5z
YWN0aW9ucy4KPj4gLS0gY2Rucyx0c2QyZC1ucyA6IERlbGF5IGluIG5hbm9zZWNvbmRzIGJldHdl
ZW4gb25lIGNoaXAgc2VsZWN0IGJlaW5nCj4+IC0gICAgICAgICAgICAgICAgICBkZS1hY3RpdmF0
ZWQgYW5kIHRoZSBhY3RpdmF0aW9uIG9mIGFub3RoZXIuCj4+IC0tIGNkbnMsdGNoc2gtbnMgOiBE
ZWxheSBpbiBuYW5vc2Vjb25kcyBiZXR3ZWVuIGxhc3QgYml0IG9mIGN1cnJlbnQKPj4gLSAgICAg
ICAgICAgICAgICAgIHRyYW5zYWN0aW9uIGFuZCBkZWFzc2VydGluZyB0aGUgZGV2aWNlIGNoaXAg
c2VsZWN0Cj4+IC0JCSAgKHFzcGlfbl9zc19vdXQpLgo+PiAtLSBjZG5zLHRzbGNoLW5zIDogRGVs
YXkgaW4gbmFub3NlY29uZHMgYmV0d2VlbiBzZXR0aW5nIHFzcGlfbl9zc19vdXQgbG93Cj4+IC0g
ICAgICAgICAgICAgICAgICBhbmQgZmlyc3QgYml0IHRyYW5zZmVyLgo+PiAtLSByZXNldHMJOiBN
dXN0IGNvbnRhaW4gYW4gZW50cnkgZm9yIGVhY2ggZW50cnkgaW4gcmVzZXQtbmFtZXMuCj4+IC0J
CSAgU2VlIC4uL3Jlc2V0L3Jlc2V0LnR4dCBmb3IgZGV0YWlscy4KPj4gLS0gcmVzZXQtbmFtZXMJ
OiBNdXN0IGluY2x1ZGUgZWl0aGVyICJxc3BpIiBhbmQvb3IgInFzcGktb2NwIi4KPj4gLQo+PiAt
RXhhbXBsZToKPj4gLQo+PiAtCXFzcGk6IHNwaUBmZjcwNTAwMCB7Cj4+IC0JCWNvbXBhdGlibGUg
PSAiY2Rucyxxc3BpLW5vciI7Cj4+IC0JCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+PiAtCQkjc2l6
ZS1jZWxscyA9IDwwPjsKPj4gLQkJcmVnID0gPDB4ZmY3MDUwMDAgMHgxMDAwPiwKPj4gLQkJICAg
ICAgPDB4ZmZhMDAwMDAgMHgxMDAwPjsKPj4gLQkJaW50ZXJydXB0cyA9IDwwIDE1MSA0PjsKPj4g
LQkJY2xvY2tzID0gPCZxc3BpX2Nsaz47Cj4+IC0JCWNkbnMsaXMtZGVjb2RlZC1jczsKPj4gLQkJ
Y2RucyxmaWZvLWRlcHRoID0gPDEyOD47Cj4+IC0JCWNkbnMsZmlmby13aWR0aCA9IDw0PjsKPj4g
LQkJY2Rucyx0cmlnZ2VyLWFkZHJlc3MgPSA8MHgwMDAwMDAwMD47Cj4+IC0JCXJlc2V0cyA9IDwm
cnN0IFFTUElfUkVTRVQ+LCA8JnJzdCBRU1BJX09DUF9SRVNFVD47Cj4+IC0JCXJlc2V0LW5hbWVz
ID0gInFzcGkiLCAicXNwaS1vY3AiOwo+PiAtCj4+IC0JCWZsYXNoMDogbjI1cTAwQDAgewo+PiAt
CQkJLi4uCj4+IC0JCQljZG5zLHJlYWQtZGVsYXkgPSA8ND47Cj4+IC0JCQljZG5zLHRzaHNsLW5z
ID0gPDUwPjsKPj4gLQkJCWNkbnMsdHNkMmQtbnMgPSA8NTA+Owo+PiAtCQkJY2Rucyx0Y2hzaC1u
cyA9IDw0PjsKPj4gLQkJCWNkbnMsdHNsY2gtbnMgPSA8ND47Cj4+IC0JCX07Cj4+IC0JfTsKPj4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvY2Rucyxx
c3BpLW5vci55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9jZG5z
LHFzcGktbm9yLnlhbWwKPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMDAw
MDAwLi5kMjFmODA2MDRhZjQKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL2NkbnMscXNwaS1ub3IueWFtbAo+PiBAQCAtMCwwICsx
LDEyNyBAQAo+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTIt
Q2xhdXNlKQo+PiArJVlBTUwgMS4yCj4+ICstLS0KPj4gKyRpZDogImh0dHA6Ly9kZXZpY2V0cmVl
Lm9yZy9zY2hlbWFzL3NwaS9jZG5zLHFzcGktbm9yLnlhbWwjIgo+PiArJHNjaGVtYTogImh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIyIKPj4gKwo+PiArdGl0bGU6
IENhZGVuY2UgUVNQSSBGbGFzaCBDb250cm9sbGVyIHN1cHBvcnQKPj4gKwo+PiArbWFpbnRhaW5l
cnM6Cj4+ICsgIC0gUmFtdXRoZXZhciBWYWRpdmVsIE11cnVnYW4gPHZhZGl2ZWwubXVydWdhbngu
cmFtdXRoZXZhckBsaW51eC5pbnRlbC5jb20+Cj4+ICsKPj4gK2FsbE9mOgo+PiArICAtICRyZWY6
ICJzcGktY29udHJvbGxlci55YW1sIyIKPj4gKwo+PiArZGVzY3JpcHRpb246IHwKPj4gKyAgQmlu
ZGluZyBEb2N1bWVudGF0aW9uIGZvciBDYWRlbmNlIFFTUEkgY29udHJvbGxlcixUaGlzIGNvbnRy
b2xsZXIgaXMKPj4gKyAgcHJlc2VudCBpbiB0aGUgSW50ZWwgTEdNLCBBbHRlcmEgU29DRlBHQSBh
bmQgVEkgU29DcyBhbmQgdGhpcyBkcml2ZXIKPj4gKyAgaGFzIGJlZW4gdGVzdGVkIE9uIEludGVs
J3MgTEdNIFNvQy4KPj4gKwo+PiArcHJvcGVydGllczoKPj4gKyAgY29tcGF0aWJsZToKPj4gKyAg
ICAgZW51bToKPj4gKyAgICAgICAtIGNkbnMscXNwaS1ub3IKPj4gKyAgICAgICAtIHRpLGsyZy1x
c3BpCj4+ICsgICAgICAgLSB0aSxhbTY1NC1vc3BpCj4+ICsgICAgICAgLSBpbnRlbCxsZ20tcXNw
aQo+PiArCj4+ICsgIHJlZzoKPj4gKyAgICBtYXhJdGVtczogMgo+PiArCj4+ICsgIGludGVycnVw
dHM6Cj4+ICsgICAgbWF4SXRlbXM6IDEKPj4gKwo+PiArICBjbG9ja3M6Cj4+ICsgICAgbWF4SXRl
bXM6IDEKPj4gKwo+PiArICBjZG5zLGZpZm8tZGVwdGg6Cj4+ICsgICAgZGVzY3JpcHRpb246Cj4+
ICsgICAgIERlcHRoIG9mIGhhcmR3YXJlIEZJRk9zLgo+PiArICAgIGFsbE9mOgo+PiArICAgICAg
LSAkcmVmOiAiL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvdWludDMyIgo+PiArICAg
ICAgLSBlbnVtOiBbIDEyOCwgMjU2IF0KPj4gKyAgICAgIC0gZGVmYXVsdDogMTI4Cj4+ICsKPj4g
KyAgY2RucyxmaWZvLXdpZHRoOgo+PiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2Rl
ZmluaXRpb25zL3VpbnQzMgo+PiArICAgIGRlc2NyaXB0aW9uOgo+PiArICAgICAgNCBieXRlIGJ1
cyB3aWR0aCBvZiB0aGUgZGF0YSBGSUZPIGluIGJ5dGVzLgo+PiArCj4+ICsgIGNkbnMsdHJpZ2dl
ci1hZGRyZXNzOgo+PiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25z
L3VpbnQzMgo+PiArICAgIGRlc2NyaXB0aW9uOgo+PiArICAgICAgMzItYml0IGluZGlyZWN0IEFI
QiB0cmlnZ2VyIGFkZHJlc3MuCj4+ICsKPj4gKyAgY2RucyxyY2xrLWVuOgo+PiArICAgICRyZWY6
IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMgo+PiArICAgIGRlc2NyaXB0
aW9uOiB8Cj4+ICsgICAgICBGbGFnIHRvIGluZGljYXRlIHRoYXQgUVNQSSByZXR1cm4gY2xvY2sg
aXMgdXNlZCB0byBsYXRjaCB0aGUgcmVhZCBkYXRhCj4+ICsgICAgICByYXRoZXIgdGhhbiB0aGUg
UVNQSSBjbG9jay4gTWFrZSBzdXJlIHRoYXQgUVNQSSByZXR1cm4gY2xvY2sgaXMgcG9wdWxhdGVk
Cj4+ICsgICAgICBvbiB0aGUgYm9hcmQgYmVmb3JlIHVzaW5nIHRoaXMgcHJvcGVydHkuCj4gU291
bmRzIGxpa2UgYSBib29sZWFuIHJhdGhlciB0aGFuIGEgdWludDMyPyBJZiBub3QsIHRoZW4gY29u
c3RyYWludHMgb24KPiB0aGUgdmFsdWVzPwpHb29kIGNhdGNoLCB3aWxsIHVwZGF0ZS4KPj4gKyMg
c3Vibm9kZSdzIHByb3BlcnRpZXMKPj4gK3BhdHRlcm5Qcm9wZXJ0aWVzOgo+PiArICAiXi4qQFsw
LTlhLWZBLUZdKyQiOgo+IEhvdyBtYW55IGNoaXAgc2VsZWN0cyBkbyB5b3Ugc3VwcG9ydD8gVGhl
IHVuaXQtYWRkcmVzcyBjYW4gYmUgbGltaXRlZCBhcwo+IEknZCBndWVzcyBpdCdzIGxlc3MgdGhh
biAxNi4gQWxzbywgc2hvdWxkIGJlIGxvd2VyY2FzZSBoZXguCk1BWCAxNiAsIHdpbGwgdXBkYXRl
Lgo+PiArICAgIHR5cGU6IG9iamVjdAo+PiArICAgIGRlc2NyaXB0aW9uOgo+PiArICAgICAgZmxh
c2ggZGV2aWNlIHVzZXMgdGhlIHN1Ym5vZGVzIGJlbG93IGRlZmluZWQgcHJvcGVydGllcy4KPj4g
Kwo+PiArICBjZG5zLHJlYWQtZGVsYXk6Cj4+ICsgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFt
bCMvZGVmaW5pdGlvbnMvdWludDMyCj4+ICsgICAgZGVzY3JpcHRpb246Cj4+ICsgICAgICBEZWxh
eSBpbiA0IG1pY3Jvc2Vjb25kcywgcmVhZCBjYXB0dXJlIGxvZ2ljLCBpbiBjbG9jayBjeWNsZXMu
Cj4gNHVzIG9yIGNsb2NrIGN5Y2xlcz8KY2xvY2sgY3ljbGVzCj4+ICsKPj4gKyAgY2Rucyx0c2hz
bC1uczoKPj4gKyAgICBkZXNjcmlwdGlvbjogfAo+PiArICAgICAgRGVsYXkgaW4gNTAgbmFub3Nl
Y29uZHMsIGZvciB0aGUgbGVuZ3RoIHRoYXQgdGhlIG1hc3RlciBtb2RlIGNoaXAgc2VsZWN0Cj4+
ICsgICAgICBvdXRwdXRzIGFyZSBkZS1hc3NlcnRlZCBiZXR3ZWVuIHRyYW5zYWN0aW9ucy4KPiBT
b3VuZHMgbGlrZSB5b3UgY2FuIGFkZDoKPgo+IG11bHRpcGxlT2Y6IDUwCj4KPj4gKwo+PiArICBj
ZG5zLHRzZDJkLW5zOgo+PiArICAgIGRlc2NyaXB0aW9uOiB8Cj4+ICsgICAgICBEZWxheSBpbiA1
MCBuYW5vc2Vjb25kcywgYmV0d2VlbiBvbmUgY2hpcCBzZWxlY3QgYmVpbmcgZGUtYWN0aXZhdGVk
Cj4+ICsgICAgICBhbmQgdGhlIGFjdGl2YXRpb24gb2YgYW5vdGhlci4KPiBTYW1lIGhlcmUKPgo+
PiArCj4+ICsgIGNkbnMsdGNoc2gtbnM6Cj4+ICsgICAgZGVzY3JpcHRpb246IHwKPj4gKyAgICAg
IERlbGF5IGluIDQgbmFub3NlY29uZHMsIGJldHdlZW4gbGFzdCBiaXQgb2YgY3VycmVudCB0cmFu
c2FjdGlvbiBhbmQKPj4gKyAgICAgIGRlYXNzZXJ0aW5nIHRoZSBkZXZpY2UgY2hpcCBzZWxlY3Qg
KHFzcGlfbl9zc19vdXQpLgo+IG11bHRpcGxlT2Y6IDQKPgo+PiArCj4+ICsgIGNkbnMsdHNsY2gt
bnM6Cj4+ICsgICAgZGVzY3JpcHRpb246IHwKPj4gKyAgICAgIERlbGF5IGluIDQgbmFub3NlY29u
ZHMsIGJldHdlZW4gc2V0dGluZyBxc3BpX25fc3Nfb3V0IGxvdyBhbmQKPj4gKyAgICAgIGZpcnN0
IGJpdCB0cmFuc2Zlci4KPiBtdWx0aXBsZU9mOiA0Ck5vdGVkLCB3aWxsIHVwZGF0ZSBhbGwgb2Yg
dGhlIGFib3ZlLgo+PiArCj4+ICtyZXF1aXJlZDoKPj4gKyAgLSBjb21wYXRpYmxlCj4+ICsgIC0g
cmVnCj4+ICsgIC0gaW50ZXJydXB0cwo+PiArICAtIGNsb2Nrcwo+PiArICAtIGNkbnMsZmlmby1k
ZXB0aAo+PiArICAtIGNkbnMsZmlmby13aWR0aAo+PiArICAtIGNkbnMsdHJpZ2dlci1hZGRyZXNz
Cj4+ICsKPj4gK2V4YW1wbGVzOgo+PiArICAtIHwKPj4gKyAgICBxc3BpOiBzcGlAZmY3MDUwMDAg
ewo+IERyb3AgdGhlIGxhYmVsLgpBZ3JlZWQhCj4+ICsgICAgICAgICAgY29tcGF0aWJsZSA9ICJj
ZG5zLHFzcGktbm9yIjsKPj4gKyAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4gKyAg
ICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKPj4gKyAgICAgICAgICByZWcgPSA8MHhmZjcwNTAw
MCAweDEwMDA+LAo+PiArICAgICAgICAgICAgICAgIDwweGZmYTAwMDAwIDB4MTAwMD47Cj4+ICsg
ICAgICAgICAgaW50ZXJydXB0cyA9IDwwIDE1MSA0PjsKPj4gKyAgICAgICAgICBjbG9ja3MgPSA8
JnFzcGlfY2xrPjsKPj4gKyAgICAgICAgICBjZG5zLGZpZm8tZGVwdGggPSA8MTI4PjsKPj4gKyAg
ICAgICAgICBjZG5zLGZpZm8td2lkdGggPSA8ND47Cj4+ICsgICAgICAgICAgY2Rucyx0cmlnZ2Vy
LWFkZHJlc3MgPSA8MHgwMDAwMDAwMD47Cj4+ICsKPj4gKyAgICAgICAgICBmbGFzaDA6IG4yNXEw
MEAwIHsKPiBmbGFzaEAwCgpBZ3JlZWQhCgpSZWdhcmRzClZhZGl2ZWwKPj4gKyAgICAgICAgICAg
ICAgY29tcGF0aWJsZSA9ICJqZWRlYyxzcGktbm9yIjsKPj4gKyAgICAgICAgICAgICAgcmVnID0g
PDB4MD47Cj4+ICsgICAgICAgICAgICAgIGNkbnMscmVhZC1kZWxheSA9IDw0PjsKPj4gKyAgICAg
ICAgICAgICAgY2Rucyx0c2hzbC1ucyA9IDw1MD47Cj4+ICsgICAgICAgICAgICAgIGNkbnMsdHNk
MmQtbnMgPSA8NTA+Owo+PiArICAgICAgICAgICAgICBjZG5zLHRjaHNoLW5zID0gPDQ+Owo+PiAr
ICAgICAgICAgICAgICBjZG5zLHRzbGNoLW5zID0gPDQ+Owo+PiArICAgICAgICAgIH07Cj4+ICsg
ICAgfTsKPj4gKwo+PiAtLSAKPj4gMi4xMS4wCj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGlu
ZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bXRkLwo=
