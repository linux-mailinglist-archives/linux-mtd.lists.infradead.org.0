Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383D110CC1D
	for <lists+linux-mtd@lfdr.de>; Thu, 28 Nov 2019 16:52:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mx6j05n/AKuUtq1mnc/7LVTXJhgayBkyrciij+PmXqM=; b=Q2oQF3GHSiYE+sGihnQluILbo
	j19Q8uMaIAFavvEGstfOuG9j5J4X3iQ9LiVaDj9s6ihgUZcPHhtIqwgSR5LFKA2gZMZpasa0zK6M0
	RD9zALolT+EZKRen5YbcbjGGe9boDdh9nS0uxEioMNVG2WmdCKxXjEMmzfPlN5KsCUEB2trF+jk/i
	Q/gJRFgm3cDgONXtCljBH6k06vqX3Evf+rNTCYUw9ImE7n2GsVSWwh6YLPmnu+NHkyt4nLG3DMpN8
	PCVGL+HXJV06ejFSqrdtVlmYKYuX0t4JdwKExOlTL5LAYhbixeOHbjzmLHUPt8QUnrMJ+2XibqpsN
	qXpL0PDgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaM67-0008Af-Ud; Thu, 28 Nov 2019 15:52:51 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaM5y-00089u-3i
 for linux-mtd@lists.infradead.org; Thu, 28 Nov 2019 15:52:44 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xASFfhvb011866; Thu, 28 Nov 2019 16:52:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=uZxHaoWzODz6bcYUYGGf3FPtR/YYwM5HK1xVVnnETUc=;
 b=rVcbcOdSr+ZZyamHhUPIishbOE/Zq7/Pzl+sbFjP232MAw32Rx6aYUbutP3ev4xFGe9X
 OUo6et9j9t3SSWycLHGZe7348HXQiQlDnm/nnI+G6qrEhHbHUbbFsD8f3l6Wx35UYLuD
 t2becxLz5AXAXxrxrqL4YJtLxrY3ucyJH3bUPAgPcwzEEFiT6xagwlcLJzkZ9QnYPIzm
 elEaRK9W1Unkd23pOUXIUq04wIt7m8ZtOzBN6ZlgVburk/yoazYGiiqhEPAXkjXK1szK
 ZP7aGyyXx/mmTMQp5GIYXvQoE9HwCNtG5HOjlaXLRioqayYt+o04Xy9WbTG/LxWmBfmR Dg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2whcxsjxw4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 28 Nov 2019 16:52:35 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 89ED310002A;
 Thu, 28 Nov 2019 16:52:33 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6F4C22BF9BF;
 Thu, 28 Nov 2019 16:52:33 +0100 (CET)
Received: from [10.201.23.29] (10.75.127.44) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 28 Nov
 2019 16:52:32 +0100
Subject: Re: mtd: Use mtd device name instead of mtd->name when registering
 nvmem device
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <1574442222-19759-1-git-send-email-christophe.kerello@st.com>
 <20191125160503.1243f817@xps13> <20191125163745.26095b68@xps13>
From: Christophe Kerello <christophe.kerello@st.com>
Message-ID: <d3c42dfc-8eb6-b6d1-de96-f7ded3830341@st.com>
Date: Thu, 28 Nov 2019 16:52:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191125163745.26095b68@xps13>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-28_04:2019-11-28,2019-11-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_075242_452858_5A918FFA 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vigneshr@ti.com, Boris Brezillon <bbrezillon@kernel.org>, richard@nod.at,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLAoKT24gMTEvMjUvMTkgNDozNyBQTSwgTWlxdWVsIFJheW5hbCB3cm90ZToKPiBN
aXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZSBvbiBNb24sIDI1
IE5vdiAyMDE5Cj4gMTY6MDU6MDMgKzAxMDA6Cj4gCj4+IEhpIENocmlzdG9waGUsCj4+Cj4+IENo
cmlzdG9waGUgS2VyZWxsbyA8Y2hyaXN0b3BoZS5rZXJlbGxvQHN0LmNvbT4gd3JvdGUgb24gRnJp
LCAyMiBOb3YKPj4gMjAxOSAxODowMzo0MiArMDEwMDoKPj4KPj4+IE1URCBjdXJyZW50bHkgYWxs
b3dzIHRvIGhhdmUgc2FtZSBwYXJ0aXRpb24gbmFtZSBvbiBkaWZmZXJlbnQgZGV2aWNlcy4KPj4+
IFNpbmNlIG52bWVuIGRldmljZSByZWdpc3RyYXRpb24gaGFzIGJlZW4gYWRkZWQsIGl0IGlzIG5v
dCBtb3JlIHBvc3NpYmxlCj4+PiB0byBoYXZlIHNhbWUgcGFydGl0aW9uIG5hbWUgb24gZGlmZmVy
ZW50IGRldmljZXMuIFdlIGdldCBmb2xsb3dpbmcKPj4+IGxvZ3M6Cj4+PiBzeXNmczogY2Fubm90
IGNyZWF0ZSBkdXBsaWNhdGUgZmlsZW5hbWUgWFhYCj4+PiBGYWlsZWQgdG8gcmVnaXN0ZXIgTlZN
RU0gZGV2aWNlCj4+Pgo+Pj4gVG8gYXZvaWQgc3VjaCBpc3N1ZSwgdGhlIHByb3Bvc2VkIHBhdGNo
IHVzZXMgdGhlIG10ZCBkZXZpY2UgbmFtZSBpbnN0ZWFkIG9mCj4+PiB0aGUgcGFydGl0aW9uIG5h
bWUuCj4+Pgo+Pj4gRml4ZXM6IGM0ZGZhMjVhYjMwNyAoIm10ZDogYWRkIHN1cHBvcnQgZm9yIHJl
YWRpbmcgTVREIGRldmljZXMgdmlhIHRoZSBudm1lbSBBUEkiKQo+Pj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXN0b3BoZSBLZXJlbGxvIDxjaHJpc3RvcGhlLmtlcmVsbG9Ac3QuY29tPgo+Pj4gLS0tCj4+
PiBIaSwKPj4+Cj4+PiBXaXRoIGxhdGVzdCBtdGQtbmV4dCBicmFuY2gsIHdlIGdldCBmb2xsb3dp
bmcgbG9ncyBvbiBvdXIgU1RNMzJNUDEgZXZhbCBib2FyZC4KPj4+Cj4+PiBbICAgIDEuOTc5MDg5
XSBuYW5kOiBkZXZpY2UgZm91bmQsIE1hbnVmYWN0dXJlciBJRDogMHgyYywgQ2hpcCBJRDogMHhk
Mwo+Pj4gWyAgICAxLjk4NDA1NV0gbmFuZDogTWljcm9uIE1UMjlGOEcwOEFCQUNBSDQKPj4+IFsg
ICAgMS45ODgwMDBdIG5hbmQ6IDEwMjQgTWlCLCBTTEMsIGVyYXNlIHNpemU6IDI1NiBLaUIsIHBh
Z2Ugc2l6ZTogNDA5NiwgT09CIHNpemU6IDIyNAo+Pj4gWyAgICAxLjk5NjM3OF0gQmFkIGJsb2Nr
IHRhYmxlIGZvdW5kIGF0IHBhZ2UgMjYyMDgwLCB2ZXJzaW9uIDB4MDEKPj4+IFsgICAgMi4wMDE5
NDVdIEJhZCBibG9jayB0YWJsZSBmb3VuZCBhdCBwYWdlIDI2MjAxNiwgdmVyc2lvbiAweDAxCj4+
PiBbICAgIDIuMDA4MDAyXSA0IGZpeGVkLXBhcnRpdGlvbnMgcGFydGl0aW9ucyBmb3VuZCBvbiBN
VEQgZGV2aWNlIDU4MDAyMDAwLm5hbmQtY29udHJvbGxlcgo+Pj4gWyAgICAyLjAxNTM5OF0gQ3Jl
YXRpbmcgNCBNVEQgcGFydGl0aW9ucyBvbiAiNTgwMDIwMDAubmFuZC1jb250cm9sbGVyIjoKPj4+
IFsgICAgMi4wMjE3NTFdIDB4MDAwMDAwMDAwMDAwLTB4MDAwMDAwMjAwMDAwIDogImZzYmwiCj4+
PiBbICAgIDIuMDI4NTA2XSAweDAwMDAwMDIwMDAwMC0weDAwMDAwMDQwMDAwMCA6ICJzc2JsMSIK
Pj4+IFsgICAgMi4wMzM3NDFdIDB4MDAwMDAwNDAwMDAwLTB4MDAwMDAwNjAwMDAwIDogInNzYmwy
Igo+Pj4gWyAgICAyLjAzODkyNF0gMHgwMDAwMDA2MDAwMDAtMHgwMDAwNDAwMDAwMDAgOiAiVUJJ
Igo+Pj4gWyAgICAyLjA1MTMzNl0gc3BpLW5vciBzcGkwLjA6IG14NjZsNTEyMzVsICg2NTUzNiBL
Ynl0ZXMpCj4+PiBbICAgIDIuMDU1MTIzXSA0IGZpeGVkLXBhcnRpdGlvbnMgcGFydGl0aW9ucyBm
b3VuZCBvbiBNVEQgZGV2aWNlIHNwaTAuMAo+Pj4gWyAgICAyLjA2MTM3OF0gQ3JlYXRpbmcgNCBN
VEQgcGFydGl0aW9ucyBvbiAic3BpMC4wIjoKPj4+IFsgICAgMi4wNjYyNDNdIDB4MDAwMDAwMDAw
MDAwLTB4MDAwMDAwMDQwMDAwIDogImZzYmwiCj4+PiBbICAgIDIuMDcxNDI5XSBzeXNmczogY2Fu
bm90IGNyZWF0ZSBkdXBsaWNhdGUgZmlsZW5hbWUgJy9idXMvbnZtZW0vZGV2aWNlcy9mc2JsJwo+
Pj4gWyAgICAyLjA3ODE1N10gQ1BVOiAwIFBJRDogMSBDb21tOiBzd2FwcGVyLzAgTm90IHRhaW50
ZWQgNS40LjAtcmM0LTAwMDMxLWc1ODllMWI2ICMxNzYKPj4+IFsgICAgMi4wODU3ODFdIEhhcmR3
YXJlIG5hbWU6IFNUTTMyIChEZXZpY2UgVHJlZSBTdXBwb3J0KQo+Pj4gWyAgICAyLjA5MDk1N10g
WzxjMDMxMjgzMD5dICh1bndpbmRfYmFja3RyYWNlKSBmcm9tIFs8YzAzMGNiZTQ+XSAoc2hvd19z
dGFjaysweDEwLzB4MTQpCj4+PiBbICAgIDIuMDk4NjkzXSBbPGMwMzBjYmU0Pl0gKHNob3dfc3Rh
Y2spIGZyb20gWzxjMGU4ZDM0MD5dIChkdW1wX3N0YWNrKzB4YjQvMHhjOCkKPj4+IFsgICAgMi4x
MDU5MjldIFs8YzBlOGQzNDA+XSAoZHVtcF9zdGFjaykgZnJvbSBbPGMwNTBmY2RjPl0gKHN5c2Zz
X3dhcm5fZHVwKzB4NTgvMHg2NCkKPj4+IFsgICAgMi4xMTM1MDldIFs8YzA1MGZjZGM+XSAoc3lz
ZnNfd2Fybl9kdXApIGZyb20gWzxjMDUxMDAxMD5dIChzeXNmc19kb19jcmVhdGVfbGlua19zZCsw
eGU0LzB4ZTgpCj4+PiBbICAgIDIuMTIyMjI0XSBbPGMwNTEwMDEwPl0gKHN5c2ZzX2RvX2NyZWF0
ZV9saW5rX3NkKSBmcm9tIFs8YzA5NTZmNjA+XSAoYnVzX2FkZF9kZXZpY2UrMHg4MC8weGZjKQo+
Pj4gWyAgICAyLjEzMDkzOF0gWzxjMDk1NmY2MD5dIChidXNfYWRkX2RldmljZSkgZnJvbSBbPGMw
OTUzZjU0Pl0gKGRldmljZV9hZGQrMHgzNWMvMHg2MDgpCj4+PiBbICAgIDIuMTM4Njk3XSBbPGMw
OTUzZjU0Pl0gKGRldmljZV9hZGQpIGZyb20gWzxjMGQxMmUwYz5dIChudm1lbV9yZWdpc3Rlci5w
YXJ0LjIrMHgxODAvMHg2MjQpCj4+PiBbICAgIDIuMTQ3MDY1XSBbPGMwZDEyZTBjPl0gKG52bWVt
X3JlZ2lzdGVyLnBhcnQuMikgZnJvbSBbPGMwOWVhNWM4Pl0gKGFkZF9tdGRfZGV2aWNlKzB4MmQ4
LzB4NGI4KQo+Pj4gWyAgICAyLjE1NTc3Nl0gWzxjMDllYTVjOD5dIChhZGRfbXRkX2RldmljZSkg
ZnJvbSBbPGMwOWVkYmQ0Pl0gKGFkZF9tdGRfcGFydGl0aW9ucysweDg0LzB4MTZjKQo+Pj4gWyAg
ICAyLjE2NDE0MF0gWzxjMDllZGJkND5dIChhZGRfbXRkX3BhcnRpdGlvbnMpIGZyb20gWzxjMDll
ZDlhYz5dIChwYXJzZV9tdGRfcGFydGl0aW9ucysweDIyMC8weDNjNCkKPj4+IFsgICAgMi4xNzMx
MThdIFs8YzA5ZWQ5YWM+XSAocGFyc2VfbXRkX3BhcnRpdGlvbnMpIGZyb20gWzxjMDllYThkND5d
IChtdGRfZGV2aWNlX3BhcnNlX3JlZ2lzdGVyKzB4NDAvMHgxNjQpCj4+PiBbICAgIDIuMTgyNjIy
XSBbPGMwOWVhOGQ0Pl0gKG10ZF9kZXZpY2VfcGFyc2VfcmVnaXN0ZXIpIGZyb20gWzxjMGEyMmRm
Yz5dIChzcGlfbm9yX3Byb2JlKzB4ZDAvMHgxOTApCj4+PiBbICAgIDIuMTkxNTEzXSBbPGMwYTIy
ZGZjPl0gKHNwaV9ub3JfcHJvYmUpIGZyb20gWzxjMGEzNzBhMD5dIChzcGlfZHJ2X3Byb2JlKzB4
ODAvMHhhNCkKPj4+IFsgICAgMi4xOTkyNjhdIFs8YzBhMzcwYTA+XSAoc3BpX2Rydl9wcm9iZSkg
ZnJvbSBbPGMwOTU3ZjhjPl0gKHJlYWxseV9wcm9iZSsweDIzNC8weDM0YykKPj4+IFsgICAgMi4y
MDcxMTFdIFs8YzA5NTdmOGM+XSAocmVhbGx5X3Byb2JlKSBmcm9tIFs8YzA5NTgyMWM+XSAoZHJp
dmVyX3Byb2JlX2RldmljZSsweDYwLzB4MTc0KQo+Pj4gWyAgICAyLjIxNTM5MV0gWzxjMDk1ODIx
Yz5dIChkcml2ZXJfcHJvYmVfZGV2aWNlKSBmcm9tIFs8YzA5NTYzNzg+XSAoYnVzX2Zvcl9lYWNo
X2RydisweDU4LzB4YjgpCj4+PiBbICAgIDIuMjIzOTMyXSBbPGMwOTU2Mzc4Pl0gKGJ1c19mb3Jf
ZWFjaF9kcnYpIGZyb20gWzxjMDk1N2NlND5dIChfX2RldmljZV9hdHRhY2grMHhkMC8weDEzYykK
Pj4+IFsgICAgMi4yMzIyMTJdIFs8YzA5NTdjZTQ+XSAoX19kZXZpY2VfYXR0YWNoKSBmcm9tIFs8
YzA5NTcwNjA+XSAoYnVzX3Byb2JlX2RldmljZSsweDg0LzB4OGMpCj4+PiBbICAgIDIuMjQwNDA0
XSBbPGMwOTU3MDYwPl0gKGJ1c19wcm9iZV9kZXZpY2UpIGZyb20gWzxjMDk1M2ZiND5dIChkZXZp
Y2VfYWRkKzB4M2JjLzB4NjA4KQo+Pj4gWyAgICAyLjI0ODMzNF0gWzxjMDk1M2ZiND5dIChkZXZp
Y2VfYWRkKSBmcm9tIFs8YzBhMzc3YjQ+XSAoc3BpX2FkZF9kZXZpY2UrMHg5Yy8weDE0YykKPj4+
IFsgICAgMi4yNTYwMDNdIFs8YzBhMzc3YjQ+XSAoc3BpX2FkZF9kZXZpY2UpIGZyb20gWzxjMGEz
N2I5OD5dIChvZl9yZWdpc3Rlcl9zcGlfZGV2aWNlKzB4MjM0LzB4MzcwKQo+Pj4gWyAgICAyLjI2
NDgwN10gWzxjMGEzN2I5OD5dIChvZl9yZWdpc3Rlcl9zcGlfZGV2aWNlKSBmcm9tIFs8YzBhMzg0
ZWM+XSAoc3BpX3JlZ2lzdGVyX2NvbnRyb2xsZXIrMHg1NzgvMHg3MzQpCj4+PiBbICAgIDIuMjc0
Mzk0XSBbPGMwYTM4NGVjPl0gKHNwaV9yZWdpc3Rlcl9jb250cm9sbGVyKSBmcm9tIFs8YzBhMzg2
ZGM+XSAoZGV2bV9zcGlfcmVnaXN0ZXJfY29udHJvbGxlcisweDM0LzB4NmMpCj4+PiBbICAgIDIu
Mjg0MzMxXSBbPGMwYTM4NmRjPl0gKGRldm1fc3BpX3JlZ2lzdGVyX2NvbnRyb2xsZXIpIGZyb20g
WzxjMGE0ZDBiOD5dIChzdG0zMl9xc3BpX3Byb2JlKzB4MzM4LzB4M2JjKQo+Pj4gWyAgICAyLjI5
MzgzMV0gWzxjMGE0ZDBiOD5dIChzdG0zMl9xc3BpX3Byb2JlKSBmcm9tIFs8YzA5NTllZTA+XSAo
cGxhdGZvcm1fZHJ2X3Byb2JlKzB4NDgvMHg5OCkKPj4+IFsgICAgMi4zMDIyODVdIFs8YzA5NTll
ZTA+XSAocGxhdGZvcm1fZHJ2X3Byb2JlKSBmcm9tIFs8YzA5NTdmOGM+XSAocmVhbGx5X3Byb2Jl
KzB4MjM0LzB4MzRjKQo+Pj4gWyAgICAyLjMxMDU2Nl0gWzxjMDk1N2Y4Yz5dIChyZWFsbHlfcHJv
YmUpIGZyb20gWzxjMDk1ODIxYz5dIChkcml2ZXJfcHJvYmVfZGV2aWNlKzB4NjAvMHgxNzQpCj4+
PiBbICAgIDIuMzE4ODQ3XSBbPGMwOTU4MjFjPl0gKGRyaXZlcl9wcm9iZV9kZXZpY2UpIGZyb20g
WzxjMDk1ODRkOD5dIChkZXZpY2VfZHJpdmVyX2F0dGFjaCsweDU4LzB4NjApCj4+PiBbICAgIDIu
MzI3NzM1XSBbPGMwOTU4NGQ4Pl0gKGRldmljZV9kcml2ZXJfYXR0YWNoKSBmcm9tIFs8YzA5NTg1
NjA+XSAoX19kcml2ZXJfYXR0YWNoKzB4ODAvMHhiYykKPj4+IFsgICAgMi4zMzYyNzZdIFs8YzA5
NTg1NjA+XSAoX19kcml2ZXJfYXR0YWNoKSBmcm9tIFs8YzA5NTYyY2M+XSAoYnVzX2Zvcl9lYWNo
X2RldisweDc0LzB4YjQpCj4+PiBbICAgIDIuMzQ0NDY5XSBbPGMwOTU2MmNjPl0gKGJ1c19mb3Jf
ZWFjaF9kZXYpIGZyb20gWzxjMDk1NzJjND5dIChidXNfYWRkX2RyaXZlcisweDE2NC8weDFlOCkK
Pj4+IFsgICAgMi4zNTI3NDldIFs8YzA5NTcyYzQ+XSAoYnVzX2FkZF9kcml2ZXIpIGZyb20gWzxj
MDk1OGZkOD5dIChkcml2ZXJfcmVnaXN0ZXIrMHg3NC8weDEwOCkKPj4+IFsgICAgMi4zNjA4NTRd
IFs8YzA5NThmZDg+XSAoZHJpdmVyX3JlZ2lzdGVyKSBmcm9tIFs8YzAzMDJlYzg+XSAoZG9fb25l
X2luaXRjYWxsKzB4NTQvMHgyMmMpCj4+PiBbICAgIDIuMzY5MDQ3XSBbPGMwMzAyZWM4Pl0gKGRv
X29uZV9pbml0Y2FsbCkgZnJvbSBbPGMxNTAxMDI0Pl0gKGtlcm5lbF9pbml0X2ZyZWVhYmxlKzB4
MTUwLzB4MWVjKQo+Pj4gWyAgICAyLjM3Nzc2Ml0gWzxjMTUwMTAyND5dIChrZXJuZWxfaW5pdF9m
cmVlYWJsZSkgZnJvbSBbPGMwZWE1ZTc0Pl0gKGtlcm5lbF9pbml0KzB4OC8weDExNCkKPj4+IFsg
ICAgMi4zODU5NTFdIFs8YzBlYTVlNzQ+XSAoa2VybmVsX2luaXQpIGZyb20gWzxjMDMwMTBlOD5d
IChyZXRfZnJvbV9mb3JrKzB4MTQvMHgyYykKPj4+IFsgICAgMi4zOTM1MjVdIEV4Y2VwdGlvbiBz
dGFjaygweGU2OGMxZmIwIHRvIDB4ZTY4YzFmZjgpCj4+PiBbICAgIDIuMzk4NTgzXSAxZmEwOiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAwMDAwMDAwMCAwMDAwMDAwMCAwMDAw
MDAwMCAwMDAwMDAwMAo+Pj4gWyAgICAyLjQwNjc3N10gMWZjMDogMDAwMDAwMDAgMDAwMDAwMDAg
MDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAKPj4+
IFsgICAgMi40MTQ5NjddIDFmZTA6IDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAw
IDAwMDAwMDEzIDAwMDAwMDAwCj4+PiBbICAgIDIuNDIxODc5XSBtdGQgbXRkNDogRmFpbGVkIHRv
IHJlZ2lzdGVyIE5WTUVNIGRldmljZQo+Pj4KPj4+IEJlZm9yZSBudm1lbiBkZXZpY2UgcmVnaXN0
cmF0aW9uIHdhcyBhZGRlZCwgaXQgd2FzIHBvc3NpYmxlIHRvIGhhdmUgc2FtZSBwYXJ0aXRpb24g
bmFtZSBvbiBkaWZmZXJlbnQgZGV2aWNlcy4KPj4+IEluc3RlYWQgb2YgdXNpbmcgdGhlIHBhcnRp
dGlvbiBuYW1lLCB0aGlzIHBhdGNoIHByb3Bvc2VzIHRvIHVzZSB0aGUgTVREIGRldmljZSBuYW1l
IChtdGRYKS4KPj4+Cj4+PiBSZWdhcmRzLAo+Pj4gQ2hyaXN0b3BoZSBLZXJlbGxvLgo+Pj4KPj4+
ICAgZHJpdmVycy9tdGQvbXRkY29yZS5jIHwgMiArLQo+Pj4gICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
dGQvbXRkY29yZS5jIGIvZHJpdmVycy9tdGQvbXRkY29yZS5jCj4+PiBpbmRleCA1ZmFjNDM1Li41
NTliNjkzIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9tdGQvbXRkY29yZS5jCj4+PiArKysgYi9k
cml2ZXJzL210ZC9tdGRjb3JlLmMKPj4+IEBAIC01NTEsNyArNTUxLDcgQEAgc3RhdGljIGludCBt
dGRfbnZtZW1fYWRkKHN0cnVjdCBtdGRfaW5mbyAqbXRkKQo+Pj4gICAKPj4+ICAgCWNvbmZpZy5p
ZCA9IC0xOwo+Pj4gICAJY29uZmlnLmRldiA9ICZtdGQtPmRldjsKPj4+IC0JY29uZmlnLm5hbWUg
PSBtdGQtPm5hbWU7Cj4+PiArCWNvbmZpZy5uYW1lID0gZGV2X25hbWUoJm10ZC0+ZGV2KTsKPj4K
Pj4gV2hhdCBhYm91dCBjcmVhdGluZyBhbiBtdGQtPmZ1bGxuYW1lIGZpZWxkIHdoaWNoIHdvdWxk
IGJlLCBmb3IKPj4gcGFydGl0aW9uczogbXRkWDo8cGFydGl0aW9uLW5hbWU+IGFuZCB3b3VsZCBi
ZSB1bmlxdWU/Cj4gCj4gVGhlIGFjdHVhbCBtdGQtPm5hbWUgKGRyaXZlciBuYW1lIG9yIGxhYmVs
IGlmIGdpdmVuKSBpbnN0ZWFkIG9mIHRoZSBtdGQKPiBudW1iZXIgd291bGQgYmUgYmV0dGVyLiBU
aGF0IHdvdWxkIGdpdmUgdGhpbmdzIGxpa2UgIm5hbmQwOm15cGFydCIuCgpCYXNlZCBvbiBTdGV2
ZSdzIGNvbW1lbnQsIGl0IHNlZW1zIGJldHRlciB0byBhYmFuZG9uIHRoaXMgcHJvcG9zZWQgZml4
LiAKV2Ugd2lsbCB1c2UgdW5pcXVlIHBhcnRpdGlvbiBuYW1lcyBvbiBvdXIgc2lkZS4KClJlZ2Fy
ZHMsCkNocmlzdG9waGUgS2VyZWxsby4KCj4gCj4+Cj4+PiAgIAljb25maWcub3duZXIgPSBUSElT
X01PRFVMRTsKPj4+ICAgCWNvbmZpZy5yZWdfcmVhZCA9IG10ZF9udm1lbV9yZWdfcmVhZDsKPj4+
ICAgCWNvbmZpZy5zaXplID0gbXRkLT5zaXplOwo+Pgo+PiBUaGFua3MsCj4+IE1pcXXDqGwKPiAK
PiBUaGFua3MsCj4gTWlxdcOobAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
