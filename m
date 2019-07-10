Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE586339E
	for <lists+linux-mtd@lfdr.de>; Tue,  9 Jul 2019 11:43:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BPjAA8Gn8awGCp7eDq/yNWbtcaFAoWYvtUlS541N6eI=; b=Eumdl6ooP3PTrC
	pwFo4t8OtmBrKJ1BpuR9VjXF+CcDL0yddWIoNw1S2pLClTTolLZwiv7uUgs+q9IPT+iRp2tIXJj6c
	lKKeQD8POzpMmYTJOS04UJdta7CCycyMcrbQjJhxMAkA5sQgLewl/Gs1QvDJswGjnGu0ZnJoLHFzv
	tqG+kFLJ2QH1xGykYnEHvSyU0HZz4xs91S6to5//X2VOqi268zxRNaFCtp2Q+vq/kMo6yDWeSgTWn
	PRS5Qmdqpe39BvyP+FUWUVANA5rJBvl1NH8ueKcUyjjpQmgw+xchHco0zkNFJGPEGeLqS8Hx2MimM
	ekIbyLburr6hwQX96r1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkmeH-0008KP-K2; Tue, 09 Jul 2019 09:42:57 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkmdy-0008JA-C1
 for linux-mtd@lists.infradead.org; Tue, 09 Jul 2019 09:42:40 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x699cLYh003072; Tue, 9 Jul 2019 11:42:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=Hhmk6iW9AOz9YZht32O3NNPIHCz1mwLLYsAq3kZA/eQ=;
 b=NOa5eozY9SNJGT1VQCEUJRBC+EASTP/H01RPGT9EJiKuqy+jrUk+OzqJmqzp4zGXBoUC
 v/oTa9UjqFmZ+E5UXYVCVpEwTeIWzBOCgTFTw1oX9FwmCm4acMd2JzS/KWLxPgorvEIN
 lEUBWGV/pkMmwrSABRLD9mdvoyxqCixbJbupuhl3OpsYduWGuGXngRjccj+a9ubnZCY5
 K/Npm7q/rWObonHPpB69dnZ0XWuhxI7jOSjqwNb78uyMYj/DMYIwtk1vlQM00/FQnrmg
 wESPGThwGouh10OIcUiJTdTOvuv2OwMj4PHUJgvGSKsFBLtOWll2UibDTaIrii0jphlm SA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2tjgs9vnex-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 09 Jul 2019 11:42:27 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 47D2E34;
 Tue,  9 Jul 2019 09:42:26 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 173FF2CE4;
 Tue,  9 Jul 2019 09:42:26 +0000 (GMT)
Received: from localhost (10.75.127.45) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Tue, 9 Jul 2019 11:42:25 +0200
From: Christophe Kerello <christophe.kerello@st.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <dwmw2@infradead.org>,
 <computersforpeace@gmail.com>, <marek.vasut@gmail.com>, <vigneshr@ti.com>
Subject: [PATCH v2] mtd: rawnand: stm32_fmc2: avoid warnings when building
 with W=1 option
Date: Tue, 9 Jul 2019 11:41:45 +0200
Message-ID: <1562665305-31031-1-git-send-email-christophe.kerello@st.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-09_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_024238_862454_B5D98913 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christophe Kerello <christophe.kerello@st.com>, bbrezillon@kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBzb2x2ZXMgd2FybmluZ3MgZGV0ZWN0ZWQgYnkgc2V0dGluZyBXPTEgd2hlbiBi
dWlsZGluZy4KCldhcm5pbmdzIHR5cGUgZGV0ZWN0ZWQ6CmRyaXZlcnMvbXRkL25hbmQvcmF3L3N0
bTMyX2ZtYzJfbmFuZC5jOiBJbiBmdW5jdGlvbiDigJhzdG0zMl9mbWMyX2NhbGNfdGltaW5nc+KA
mToKZHJpdmVycy9tdGQvbmFuZC9yYXcvc3RtMzJfZm1jMl9uYW5kLmM6MTQxNzoyMzogd2Fybmlu
ZzogY29tcGFyaXNvbiBpcwphbHdheXMgZmFsc2UgZHVlIHRvIGxpbWl0ZWQgcmFuZ2Ugb2YgZGF0
YSB0eXBlIFstV3R5cGUtbGltaXRzXQogIGVsc2UgaWYgKHRpbXMtPnR3YWl0ID4gRk1DMl9QTUVN
X1BBVFRfVElNSU5HX01BU0spCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlIEtlcmVsbG8gPGNo
cmlzdG9waGUua2VyZWxsb0BzdC5jb20+CkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCkZpeGVz
OiAyY2Q0NTdmMzI4YzEgKCJtdGQ6IHJhd25hbmQ6IHN0bTMyX2ZtYzI6IGFkZCBTVE0zMiBGTUMy
IE5BTkQgZmxhc2gKY29udHJvbGxlciBkcml2ZXIiKQotLS0KQ2hhbmdlcyBpbiB2MjoKICAtIEZp
eGVzL3N0YWJsZSB0YWcgYWRkZWQKCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9zdG0zMl9mbWMyX25h
bmQuYyB8IDkwICsrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAyOSBpbnNlcnRpb25zKCspLCA2MSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL210ZC9uYW5kL3Jhdy9zdG0zMl9mbWMyX25hbmQuYyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3
L3N0bTMyX2ZtYzJfbmFuZC5jCmluZGV4IGU2M2FjYzAuLjhjYzg1MmQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvbXRkL25hbmQvcmF3L3N0bTMyX2ZtYzJfbmFuZC5jCisrKyBiL2RyaXZlcnMvbXRkL25h
bmQvcmF3L3N0bTMyX2ZtYzJfbmFuZC5jCkBAIC0xNDI3LDIxICsxNDI3LDE2IEBAIHN0YXRpYyB2
b2lkIHN0bTMyX2ZtYzJfY2FsY190aW1pbmdzKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsCiAJc3Ry
dWN0IHN0bTMyX2ZtYzJfdGltaW5ncyAqdGltcyA9ICZuYW5kLT50aW1pbmdzOwogCXVuc2lnbmVk
IGxvbmcgaGNsayA9IGNsa19nZXRfcmF0ZShmbWMyLT5jbGspOwogCXVuc2lnbmVkIGxvbmcgaGNs
a3AgPSBOU0VDX1BFUl9TRUMgLyAoaGNsayAvIDEwMDApOwotCWludCB0YXIsIHRjbHIsIHRoaXos
IHR3YWl0LCB0c2V0X21lbSwgdHNldF9hdHQsIHRob2xkX21lbSwgdGhvbGRfYXR0OwotCi0JdGFy
ID0gaGNsa3A7Ci0JaWYgKHRhciA8IHNkcnQtPnRBUl9taW4pCi0JCXRhciA9IHNkcnQtPnRBUl9t
aW47Ci0JdGltcy0+dGFyID0gRElWX1JPVU5EX1VQKHRhciwgaGNsa3ApIC0gMTsKLQlpZiAodGlt
cy0+dGFyID4gRk1DMl9QQ1JfVElNSU5HX01BU0spCi0JCXRpbXMtPnRhciA9IEZNQzJfUENSX1RJ
TUlOR19NQVNLOwotCi0JdGNsciA9IGhjbGtwOwotCWlmICh0Y2xyIDwgc2RydC0+dENMUl9taW4p
Ci0JCXRjbHIgPSBzZHJ0LT50Q0xSX21pbjsKLQl0aW1zLT50Y2xyID0gRElWX1JPVU5EX1VQKHRj
bHIsIGhjbGtwKSAtIDE7Ci0JaWYgKHRpbXMtPnRjbHIgPiBGTUMyX1BDUl9USU1JTkdfTUFTSykK
LQkJdGltcy0+dGNsciA9IEZNQzJfUENSX1RJTUlOR19NQVNLOworCXVuc2lnbmVkIGxvbmcgdGlt
aW5nLCB0YXIsIHRjbHIsIHRoaXosIHR3YWl0OworCXVuc2lnbmVkIGxvbmcgdHNldF9tZW0sIHRz
ZXRfYXR0LCB0aG9sZF9tZW0sIHRob2xkX2F0dDsKKworCXRhciA9IG1heF90KHVuc2lnbmVkIGxv
bmcsIGhjbGtwLCBzZHJ0LT50QVJfbWluKTsKKwl0aW1pbmcgPSBESVZfUk9VTkRfVVAodGFyLCBo
Y2xrcCkgLSAxOworCXRpbXMtPnRhciA9IG1pbl90KHVuc2lnbmVkIGxvbmcsIHRpbWluZywgRk1D
Ml9QQ1JfVElNSU5HX01BU0spOworCisJdGNsciA9IG1heF90KHVuc2lnbmVkIGxvbmcsIGhjbGtw
LCBzZHJ0LT50Q0xSX21pbik7CisJdGltaW5nID0gRElWX1JPVU5EX1VQKHRjbHIsIGhjbGtwKSAt
IDE7CisJdGltcy0+dGNsciA9IG1pbl90KHVuc2lnbmVkIGxvbmcsIHRpbWluZywgRk1DMl9QQ1Jf
VElNSU5HX01BU0spOwogCiAJdGltcy0+dGhpeiA9IEZNQzJfVEhJWjsKIAl0aGl6ID0gKHRpbXMt
PnRoaXogKyAxKSAqIGhjbGtwOwpAQCAtMTQ1MSwxOCArMTQ0NiwxMSBAQCBzdGF0aWMgdm9pZCBz
dG0zMl9mbWMyX2NhbGNfdGltaW5ncyhzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLAogCSAqIHRXQUlU
ID4gdFdQCiAJICogdFdBSVQgPiB0UkVBICsgdElPCiAJICovCi0JdHdhaXQgPSBoY2xrcDsKLQlp
ZiAodHdhaXQgPCBzZHJ0LT50UlBfbWluKQotCQl0d2FpdCA9IHNkcnQtPnRSUF9taW47Ci0JaWYg
KHR3YWl0IDwgc2RydC0+dFdQX21pbikKLQkJdHdhaXQgPSBzZHJ0LT50V1BfbWluOwotCWlmICh0
d2FpdCA8IHNkcnQtPnRSRUFfbWF4ICsgRk1DMl9USU8pCi0JCXR3YWl0ID0gc2RydC0+dFJFQV9t
YXggKyBGTUMyX1RJTzsKLQl0aW1zLT50d2FpdCA9IERJVl9ST1VORF9VUCh0d2FpdCwgaGNsa3Ap
OwotCWlmICh0aW1zLT50d2FpdCA9PSAwKQotCQl0aW1zLT50d2FpdCA9IDE7Ci0JZWxzZSBpZiAo
dGltcy0+dHdhaXQgPiBGTUMyX1BNRU1fUEFUVF9USU1JTkdfTUFTSykKLQkJdGltcy0+dHdhaXQg
PSBGTUMyX1BNRU1fUEFUVF9USU1JTkdfTUFTSzsKKwl0d2FpdCA9IG1heF90KHVuc2lnbmVkIGxv
bmcsIGhjbGtwLCBzZHJ0LT50UlBfbWluKTsKKwl0d2FpdCA9IG1heF90KHVuc2lnbmVkIGxvbmcs
IHR3YWl0LCBzZHJ0LT50V1BfbWluKTsKKwl0d2FpdCA9IG1heF90KHVuc2lnbmVkIGxvbmcsIHR3
YWl0LCBzZHJ0LT50UkVBX21heCArIEZNQzJfVElPKTsKKwl0aW1pbmcgPSBESVZfUk9VTkRfVVAo
dHdhaXQsIGhjbGtwKTsKKwl0aW1zLT50d2FpdCA9IGNsYW1wX3ZhbCh0aW1pbmcsIDEsIEZNQzJf
UE1FTV9QQVRUX1RJTUlOR19NQVNLKTsKIAogCS8qCiAJICogdFNFVFVQX01FTSA+IHRDUyAtIHRX
QUlUCkBAIC0xNDc3LDIwICsxNDY1LDE1IEBAIHN0YXRpYyB2b2lkIHN0bTMyX2ZtYzJfY2FsY190
aW1pbmdzKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsCiAJaWYgKHR3YWl0ID4gdGhpeiAmJiAoc2Ry
dC0+dERTX21pbiA+IHR3YWl0IC0gdGhpeikgJiYKIAkgICAgKHRzZXRfbWVtIDwgc2RydC0+dERT
X21pbiAtICh0d2FpdCAtIHRoaXopKSkKIAkJdHNldF9tZW0gPSBzZHJ0LT50RFNfbWluIC0gKHR3
YWl0IC0gdGhpeik7Ci0JdGltcy0+dHNldF9tZW0gPSBESVZfUk9VTkRfVVAodHNldF9tZW0sIGhj
bGtwKTsKLQlpZiAodGltcy0+dHNldF9tZW0gPT0gMCkKLQkJdGltcy0+dHNldF9tZW0gPSAxOwot
CWVsc2UgaWYgKHRpbXMtPnRzZXRfbWVtID4gRk1DMl9QTUVNX1BBVFRfVElNSU5HX01BU0spCi0J
CXRpbXMtPnRzZXRfbWVtID0gRk1DMl9QTUVNX1BBVFRfVElNSU5HX01BU0s7CisJdGltaW5nID0g
RElWX1JPVU5EX1VQKHRzZXRfbWVtLCBoY2xrcCk7CisJdGltcy0+dHNldF9tZW0gPSBjbGFtcF92
YWwodGltaW5nLCAxLCBGTUMyX1BNRU1fUEFUVF9USU1JTkdfTUFTSyk7CiAKIAkvKgogCSAqIHRI
T0xEX01FTSA+IHRDSAogCSAqIHRIT0xEX01FTSA+IHRSRUggLSB0U0VUVVBfTUVNCiAJICogdEhP
TERfTUVNID4gbWF4KHRSQywgdFdDKSAtICh0U0VUVVBfTUVNICsgdFdBSVQpCiAJICovCi0JdGhv
bGRfbWVtID0gaGNsa3A7Ci0JaWYgKHRob2xkX21lbSA8IHNkcnQtPnRDSF9taW4pCi0JCXRob2xk
X21lbSA9IHNkcnQtPnRDSF9taW47CisJdGhvbGRfbWVtID0gbWF4X3QodW5zaWduZWQgbG9uZywg
aGNsa3AsIHNkcnQtPnRDSF9taW4pOwogCWlmIChzZHJ0LT50UkVIX21pbiA+IHRzZXRfbWVtICYm
CiAJICAgICh0aG9sZF9tZW0gPCBzZHJ0LT50UkVIX21pbiAtIHRzZXRfbWVtKSkKIAkJdGhvbGRf
bWVtID0gc2RydC0+dFJFSF9taW4gLSB0c2V0X21lbTsKQEAgLTE1MDAsMTEgKzE0ODMsOCBAQCBz
dGF0aWMgdm9pZCBzdG0zMl9mbWMyX2NhbGNfdGltaW5ncyhzdHJ1Y3QgbmFuZF9jaGlwICpjaGlw
LAogCWlmICgoc2RydC0+dFdDX21pbiA+IHRzZXRfbWVtICsgdHdhaXQpICYmCiAJICAgICh0aG9s
ZF9tZW0gPCBzZHJ0LT50V0NfbWluIC0gKHRzZXRfbWVtICsgdHdhaXQpKSkKIAkJdGhvbGRfbWVt
ID0gc2RydC0+dFdDX21pbiAtICh0c2V0X21lbSArIHR3YWl0KTsKLQl0aW1zLT50aG9sZF9tZW0g
PSBESVZfUk9VTkRfVVAodGhvbGRfbWVtLCBoY2xrcCk7Ci0JaWYgKHRpbXMtPnRob2xkX21lbSA9
PSAwKQotCQl0aW1zLT50aG9sZF9tZW0gPSAxOwotCWVsc2UgaWYgKHRpbXMtPnRob2xkX21lbSA+
IEZNQzJfUE1FTV9QQVRUX1RJTUlOR19NQVNLKQotCQl0aW1zLT50aG9sZF9tZW0gPSBGTUMyX1BN
RU1fUEFUVF9USU1JTkdfTUFTSzsKKwl0aW1pbmcgPSBESVZfUk9VTkRfVVAodGhvbGRfbWVtLCBo
Y2xrcCk7CisJdGltcy0+dGhvbGRfbWVtID0gY2xhbXBfdmFsKHRpbWluZywgMSwgRk1DMl9QTUVN
X1BBVFRfVElNSU5HX01BU0spOwogCiAJLyoKIAkgKiB0U0VUVVBfQVRUID4gdENTIC0gdFdBSVQK
QEAgLTE1MjYsMTEgKzE1MDYsOCBAQCBzdGF0aWMgdm9pZCBzdG0zMl9mbWMyX2NhbGNfdGltaW5n
cyhzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLAogCWlmICh0d2FpdCA+IHRoaXogJiYgKHNkcnQtPnRE
U19taW4gPiB0d2FpdCAtIHRoaXopICYmCiAJICAgICh0c2V0X2F0dCA8IHNkcnQtPnREU19taW4g
LSAodHdhaXQgLSB0aGl6KSkpCiAJCXRzZXRfYXR0ID0gc2RydC0+dERTX21pbiAtICh0d2FpdCAt
IHRoaXopOwotCXRpbXMtPnRzZXRfYXR0ID0gRElWX1JPVU5EX1VQKHRzZXRfYXR0LCBoY2xrcCk7
Ci0JaWYgKHRpbXMtPnRzZXRfYXR0ID09IDApCi0JCXRpbXMtPnRzZXRfYXR0ID0gMTsKLQllbHNl
IGlmICh0aW1zLT50c2V0X2F0dCA+IEZNQzJfUE1FTV9QQVRUX1RJTUlOR19NQVNLKQotCQl0aW1z
LT50c2V0X2F0dCA9IEZNQzJfUE1FTV9QQVRUX1RJTUlOR19NQVNLOworCXRpbWluZyA9IERJVl9S
T1VORF9VUCh0c2V0X2F0dCwgaGNsa3ApOworCXRpbXMtPnRzZXRfYXR0ID0gY2xhbXBfdmFsKHRp
bWluZywgMSwgRk1DMl9QTUVNX1BBVFRfVElNSU5HX01BU0spOwogCiAJLyoKIAkgKiB0SE9MRF9B
VFQgPiB0QUxICkBAIC0xNTQ1LDE3ICsxNTIyLDExIEBAIHN0YXRpYyB2b2lkIHN0bTMyX2ZtYzJf
Y2FsY190aW1pbmdzKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsCiAJICogdEhPTERfQVRUID4gdFJD
IC0gKHRTRVRVUF9BVFQgKyB0V0FJVCkKIAkgKiB0SE9MRF9BVFQgPiB0V0MgLSAodFNFVFVQX0FU
VCArIHRXQUlUKQogCSAqLwotCXRob2xkX2F0dCA9IGhjbGtwOwotCWlmICh0aG9sZF9hdHQgPCBz
ZHJ0LT50QUxIX21pbikKLQkJdGhvbGRfYXR0ID0gc2RydC0+dEFMSF9taW47Ci0JaWYgKHRob2xk
X2F0dCA8IHNkcnQtPnRDSF9taW4pCi0JCXRob2xkX2F0dCA9IHNkcnQtPnRDSF9taW47Ci0JaWYg
KHRob2xkX2F0dCA8IHNkcnQtPnRDTEhfbWluKQotCQl0aG9sZF9hdHQgPSBzZHJ0LT50Q0xIX21p
bjsKLQlpZiAodGhvbGRfYXR0IDwgc2RydC0+dENPSF9taW4pCi0JCXRob2xkX2F0dCA9IHNkcnQt
PnRDT0hfbWluOwotCWlmICh0aG9sZF9hdHQgPCBzZHJ0LT50REhfbWluKQotCQl0aG9sZF9hdHQg
PSBzZHJ0LT50REhfbWluOworCXRob2xkX2F0dCA9IG1heF90KHVuc2lnbmVkIGxvbmcsIGhjbGtw
LCBzZHJ0LT50QUxIX21pbik7CisJdGhvbGRfYXR0ID0gbWF4X3QodW5zaWduZWQgbG9uZywgdGhv
bGRfYXR0LCBzZHJ0LT50Q0hfbWluKTsKKwl0aG9sZF9hdHQgPSBtYXhfdCh1bnNpZ25lZCBsb25n
LCB0aG9sZF9hdHQsIHNkcnQtPnRDTEhfbWluKTsKKwl0aG9sZF9hdHQgPSBtYXhfdCh1bnNpZ25l
ZCBsb25nLCB0aG9sZF9hdHQsIHNkcnQtPnRDT0hfbWluKTsKKwl0aG9sZF9hdHQgPSBtYXhfdCh1
bnNpZ25lZCBsb25nLCB0aG9sZF9hdHQsIHNkcnQtPnRESF9taW4pOwogCWlmICgoc2RydC0+dFdC
X21heCArIEZNQzJfVElPICsgRk1DMl9UU1lOQyA+IHRzZXRfbWVtKSAmJgogCSAgICAodGhvbGRf
YXR0IDwgc2RydC0+dFdCX21heCArIEZNQzJfVElPICsgRk1DMl9UU1lOQyAtIHRzZXRfbWVtKSkK
IAkJdGhvbGRfYXR0ID0gc2RydC0+dFdCX21heCArIEZNQzJfVElPICsgRk1DMl9UU1lOQyAtIHRz
ZXRfbWVtOwpAQCAtMTU3NCwxMSArMTU0NSw4IEBAIHN0YXRpYyB2b2lkIHN0bTMyX2ZtYzJfY2Fs
Y190aW1pbmdzKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsCiAJaWYgKChzZHJ0LT50V0NfbWluID4g
dHNldF9hdHQgKyB0d2FpdCkgJiYKIAkgICAgKHRob2xkX2F0dCA8IHNkcnQtPnRXQ19taW4gLSAo
dHNldF9hdHQgKyB0d2FpdCkpKQogCQl0aG9sZF9hdHQgPSBzZHJ0LT50V0NfbWluIC0gKHRzZXRf
YXR0ICsgdHdhaXQpOwotCXRpbXMtPnRob2xkX2F0dCA9IERJVl9ST1VORF9VUCh0aG9sZF9hdHQs
IGhjbGtwKTsKLQlpZiAodGltcy0+dGhvbGRfYXR0ID09IDApCi0JCXRpbXMtPnRob2xkX2F0dCA9
IDE7Ci0JZWxzZSBpZiAodGltcy0+dGhvbGRfYXR0ID4gRk1DMl9QTUVNX1BBVFRfVElNSU5HX01B
U0spCi0JCXRpbXMtPnRob2xkX2F0dCA9IEZNQzJfUE1FTV9QQVRUX1RJTUlOR19NQVNLOworCXRp
bWluZyA9IERJVl9ST1VORF9VUCh0aG9sZF9hdHQsIGhjbGtwKTsKKwl0aW1zLT50aG9sZF9hdHQg
PSBjbGFtcF92YWwodGltaW5nLCAxLCBGTUMyX1BNRU1fUEFUVF9USU1JTkdfTUFTSyk7CiB9CiAK
IHN0YXRpYyBpbnQgc3RtMzJfZm1jMl9zZXR1cF9pbnRlcmZhY2Uoc3RydWN0IG5hbmRfY2hpcCAq
Y2hpcCwgaW50IGNoaXBuciwKLS0gCjEuOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcg
bGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10
ZC8K
