Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CE14EAF8
	for <lists+linux-mtd@lfdr.de>; Fri, 21 Jun 2019 16:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3s7AVR25RdkyxQWS3jCR2efGTXO4hvz9aQrmVi6Gd/o=; b=u+DQ+jHoC+jyPl
	aV+xU77TfU9QFp30PKhqg64xqFpgg4PdY8CQ81MWLD+6aLHCh6XrNEhZqbMsPOACXnT8g4W8APsKe
	8nrs0cQH60hfIwt3dkqbPuBOVbs4bVfsWWDlKxKLpcG5jop3+HUAik7puRRgbx2hBdKlwZsJecGyE
	ZbX9zOfgUu2x/nlhORgNDAaoQZZNT28KuL7FcunhUpKaYMpBS1LAzwzs+rwz/iPpSS4FfiXl2xQ6l
	sK2Ap5ZwTa+sUmHUvh4FjANfQpeUwdOSaVBcJv1yMjXopHU37ZkOQUPEkHUCIwIDit8uzctxCDSqd
	loq4oW3ylLrf0kDoQrpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heKnZ-0005Av-Ex; Fri, 21 Jun 2019 14:45:53 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heKnL-0005AE-Cl
 for linux-mtd@lists.infradead.org; Fri, 21 Jun 2019 14:45:43 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5LEaLfB015683; Fri, 21 Jun 2019 16:45:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=WqjY9zs9zCZq8+Hm3pdFJcA/p5+E2O4pVwcMcnboFME=;
 b=Sx474+o2VtzFrHIKl9vcqK4Pzg7C7Z+iP5MPbcN8QCBd5PwqSE+6Bqz0NG7rtAcbmEwE
 HGjfzSLd2F9YHmkc4UHZdTCpXWDhHXVuLENNIFeFYxJb5UVZ0OsTXJ9+iAGR8MkvDWf/
 5XZML2hegjUX+40B6Me6XxkV7O1E76sKgMaIZX17v+laZB/dshFt+JA5Jrkjj0bEW94V
 yqOf8e/UhwllruOkYqpDdv6h8wHSM4XDkKa2kENVHCQpgLLpbHrVkWTftGEuMc9yRnjt
 UdHopoZc7hd3JZ4syPdXRHya5MG2ABQCflPIxGF8hAsrmjC7d/EHLpoov1l4wK6AQnWX Eg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t7813qt03-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 21 Jun 2019 16:45:24 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E052338;
 Fri, 21 Jun 2019 14:45:23 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id ACEE32BA7;
 Fri, 21 Jun 2019 14:45:23 +0000 (GMT)
Received: from localhost (10.75.127.49) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 21 Jun 2019 16:45:23 +0200
From: Christophe Kerello <christophe.kerello@st.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <dwmw2@infradead.org>,
 <computersforpeace@gmail.com>, <marek.vasut@gmail.com>, <vigneshr@ti.com>
Subject: [PATCH] mtd: rawnand: stm32_fmc2: avoid warnings when building with
 W=1 option
Date: Fri, 21 Jun 2019 16:43:09 +0200
Message-ID: <1561128189-14411-1-git-send-email-christophe.kerello@st.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-21_10:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_074542_196500_2EC98A3E 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christophe Kerello <christophe.kerello@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, bbrezillon@kernel.org
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
cmlzdG9waGUua2VyZWxsb0BzdC5jb20+Ci0tLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvc3RtMzJf
Zm1jMl9uYW5kLmMgfCA5MCArKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgNjEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvc3RtMzJfZm1jMl9uYW5kLmMgYi9kcml2ZXJzL210ZC9u
YW5kL3Jhdy9zdG0zMl9mbWMyX25hbmQuYwppbmRleCA0YWFiZWEyLi5lZDZlN2UyIDEwMDY0NAot
LS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9zdG0zMl9mbWMyX25hbmQuYworKysgYi9kcml2ZXJz
L210ZC9uYW5kL3Jhdy9zdG0zMl9mbWMyX25hbmQuYwpAQCAtMTQyNCwyMSArMTQyNCwxNiBAQCBz
dGF0aWMgdm9pZCBzdG0zMl9mbWMyX2NhbGNfdGltaW5ncyhzdHJ1Y3QgbmFuZF9jaGlwICpjaGlw
LAogCXN0cnVjdCBzdG0zMl9mbWMyX3RpbWluZ3MgKnRpbXMgPSAmbmFuZC0+dGltaW5nczsKIAl1
bnNpZ25lZCBsb25nIGhjbGsgPSBjbGtfZ2V0X3JhdGUoZm1jMi0+Y2xrKTsKIAl1bnNpZ25lZCBs
b25nIGhjbGtwID0gTlNFQ19QRVJfU0VDIC8gKGhjbGsgLyAxMDAwKTsKLQlpbnQgdGFyLCB0Y2xy
LCB0aGl6LCB0d2FpdCwgdHNldF9tZW0sIHRzZXRfYXR0LCB0aG9sZF9tZW0sIHRob2xkX2F0dDsK
LQotCXRhciA9IGhjbGtwOwotCWlmICh0YXIgPCBzZHJ0LT50QVJfbWluKQotCQl0YXIgPSBzZHJ0
LT50QVJfbWluOwotCXRpbXMtPnRhciA9IERJVl9ST1VORF9VUCh0YXIsIGhjbGtwKSAtIDE7Ci0J
aWYgKHRpbXMtPnRhciA+IEZNQzJfUENSX1RJTUlOR19NQVNLKQotCQl0aW1zLT50YXIgPSBGTUMy
X1BDUl9USU1JTkdfTUFTSzsKLQotCXRjbHIgPSBoY2xrcDsKLQlpZiAodGNsciA8IHNkcnQtPnRD
TFJfbWluKQotCQl0Y2xyID0gc2RydC0+dENMUl9taW47Ci0JdGltcy0+dGNsciA9IERJVl9ST1VO
RF9VUCh0Y2xyLCBoY2xrcCkgLSAxOwotCWlmICh0aW1zLT50Y2xyID4gRk1DMl9QQ1JfVElNSU5H
X01BU0spCi0JCXRpbXMtPnRjbHIgPSBGTUMyX1BDUl9USU1JTkdfTUFTSzsKKwl1bnNpZ25lZCBs
b25nIHRpbWluZywgdGFyLCB0Y2xyLCB0aGl6LCB0d2FpdDsKKwl1bnNpZ25lZCBsb25nIHRzZXRf
bWVtLCB0c2V0X2F0dCwgdGhvbGRfbWVtLCB0aG9sZF9hdHQ7CisKKwl0YXIgPSBtYXhfdCh1bnNp
Z25lZCBsb25nLCBoY2xrcCwgc2RydC0+dEFSX21pbik7CisJdGltaW5nID0gRElWX1JPVU5EX1VQ
KHRhciwgaGNsa3ApIC0gMTsKKwl0aW1zLT50YXIgPSBtaW5fdCh1bnNpZ25lZCBsb25nLCB0aW1p
bmcsIEZNQzJfUENSX1RJTUlOR19NQVNLKTsKKworCXRjbHIgPSBtYXhfdCh1bnNpZ25lZCBsb25n
LCBoY2xrcCwgc2RydC0+dENMUl9taW4pOworCXRpbWluZyA9IERJVl9ST1VORF9VUCh0Y2xyLCBo
Y2xrcCkgLSAxOworCXRpbXMtPnRjbHIgPSBtaW5fdCh1bnNpZ25lZCBsb25nLCB0aW1pbmcsIEZN
QzJfUENSX1RJTUlOR19NQVNLKTsKIAogCXRpbXMtPnRoaXogPSBGTUMyX1RISVo7CiAJdGhpeiA9
ICh0aW1zLT50aGl6ICsgMSkgKiBoY2xrcDsKQEAgLTE0NDgsMTggKzE0NDMsMTEgQEAgc3RhdGlj
IHZvaWQgc3RtMzJfZm1jMl9jYWxjX3RpbWluZ3Moc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwKIAkg
KiB0V0FJVCA+IHRXUAogCSAqIHRXQUlUID4gdFJFQSArIHRJTwogCSAqLwotCXR3YWl0ID0gaGNs
a3A7Ci0JaWYgKHR3YWl0IDwgc2RydC0+dFJQX21pbikKLQkJdHdhaXQgPSBzZHJ0LT50UlBfbWlu
OwotCWlmICh0d2FpdCA8IHNkcnQtPnRXUF9taW4pCi0JCXR3YWl0ID0gc2RydC0+dFdQX21pbjsK
LQlpZiAodHdhaXQgPCBzZHJ0LT50UkVBX21heCArIEZNQzJfVElPKQotCQl0d2FpdCA9IHNkcnQt
PnRSRUFfbWF4ICsgRk1DMl9USU87Ci0JdGltcy0+dHdhaXQgPSBESVZfUk9VTkRfVVAodHdhaXQs
IGhjbGtwKTsKLQlpZiAodGltcy0+dHdhaXQgPT0gMCkKLQkJdGltcy0+dHdhaXQgPSAxOwotCWVs
c2UgaWYgKHRpbXMtPnR3YWl0ID4gRk1DMl9QTUVNX1BBVFRfVElNSU5HX01BU0spCi0JCXRpbXMt
PnR3YWl0ID0gRk1DMl9QTUVNX1BBVFRfVElNSU5HX01BU0s7CisJdHdhaXQgPSBtYXhfdCh1bnNp
Z25lZCBsb25nLCBoY2xrcCwgc2RydC0+dFJQX21pbik7CisJdHdhaXQgPSBtYXhfdCh1bnNpZ25l
ZCBsb25nLCB0d2FpdCwgc2RydC0+dFdQX21pbik7CisJdHdhaXQgPSBtYXhfdCh1bnNpZ25lZCBs
b25nLCB0d2FpdCwgc2RydC0+dFJFQV9tYXggKyBGTUMyX1RJTyk7CisJdGltaW5nID0gRElWX1JP
VU5EX1VQKHR3YWl0LCBoY2xrcCk7CisJdGltcy0+dHdhaXQgPSBjbGFtcF92YWwodGltaW5nLCAx
LCBGTUMyX1BNRU1fUEFUVF9USU1JTkdfTUFTSyk7CiAKIAkvKgogCSAqIHRTRVRVUF9NRU0gPiB0
Q1MgLSB0V0FJVApAQCAtMTQ3NCwyMCArMTQ2MiwxNSBAQCBzdGF0aWMgdm9pZCBzdG0zMl9mbWMy
X2NhbGNfdGltaW5ncyhzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLAogCWlmICh0d2FpdCA+IHRoaXog
JiYgKHNkcnQtPnREU19taW4gPiB0d2FpdCAtIHRoaXopICYmCiAJICAgICh0c2V0X21lbSA8IHNk
cnQtPnREU19taW4gLSAodHdhaXQgLSB0aGl6KSkpCiAJCXRzZXRfbWVtID0gc2RydC0+dERTX21p
biAtICh0d2FpdCAtIHRoaXopOwotCXRpbXMtPnRzZXRfbWVtID0gRElWX1JPVU5EX1VQKHRzZXRf
bWVtLCBoY2xrcCk7Ci0JaWYgKHRpbXMtPnRzZXRfbWVtID09IDApCi0JCXRpbXMtPnRzZXRfbWVt
ID0gMTsKLQllbHNlIGlmICh0aW1zLT50c2V0X21lbSA+IEZNQzJfUE1FTV9QQVRUX1RJTUlOR19N
QVNLKQotCQl0aW1zLT50c2V0X21lbSA9IEZNQzJfUE1FTV9QQVRUX1RJTUlOR19NQVNLOworCXRp
bWluZyA9IERJVl9ST1VORF9VUCh0c2V0X21lbSwgaGNsa3ApOworCXRpbXMtPnRzZXRfbWVtID0g
Y2xhbXBfdmFsKHRpbWluZywgMSwgRk1DMl9QTUVNX1BBVFRfVElNSU5HX01BU0spOwogCiAJLyoK
IAkgKiB0SE9MRF9NRU0gPiB0Q0gKIAkgKiB0SE9MRF9NRU0gPiB0UkVIIC0gdFNFVFVQX01FTQog
CSAqIHRIT0xEX01FTSA+IG1heCh0UkMsIHRXQykgLSAodFNFVFVQX01FTSArIHRXQUlUKQogCSAq
LwotCXRob2xkX21lbSA9IGhjbGtwOwotCWlmICh0aG9sZF9tZW0gPCBzZHJ0LT50Q0hfbWluKQot
CQl0aG9sZF9tZW0gPSBzZHJ0LT50Q0hfbWluOworCXRob2xkX21lbSA9IG1heF90KHVuc2lnbmVk
IGxvbmcsIGhjbGtwLCBzZHJ0LT50Q0hfbWluKTsKIAlpZiAoc2RydC0+dFJFSF9taW4gPiB0c2V0
X21lbSAmJgogCSAgICAodGhvbGRfbWVtIDwgc2RydC0+dFJFSF9taW4gLSB0c2V0X21lbSkpCiAJ
CXRob2xkX21lbSA9IHNkcnQtPnRSRUhfbWluIC0gdHNldF9tZW07CkBAIC0xNDk3LDExICsxNDgw
LDggQEAgc3RhdGljIHZvaWQgc3RtMzJfZm1jMl9jYWxjX3RpbWluZ3Moc3RydWN0IG5hbmRfY2hp
cCAqY2hpcCwKIAlpZiAoKHNkcnQtPnRXQ19taW4gPiB0c2V0X21lbSArIHR3YWl0KSAmJgogCSAg
ICAodGhvbGRfbWVtIDwgc2RydC0+dFdDX21pbiAtICh0c2V0X21lbSArIHR3YWl0KSkpCiAJCXRo
b2xkX21lbSA9IHNkcnQtPnRXQ19taW4gLSAodHNldF9tZW0gKyB0d2FpdCk7Ci0JdGltcy0+dGhv
bGRfbWVtID0gRElWX1JPVU5EX1VQKHRob2xkX21lbSwgaGNsa3ApOwotCWlmICh0aW1zLT50aG9s
ZF9tZW0gPT0gMCkKLQkJdGltcy0+dGhvbGRfbWVtID0gMTsKLQllbHNlIGlmICh0aW1zLT50aG9s
ZF9tZW0gPiBGTUMyX1BNRU1fUEFUVF9USU1JTkdfTUFTSykKLQkJdGltcy0+dGhvbGRfbWVtID0g
Rk1DMl9QTUVNX1BBVFRfVElNSU5HX01BU0s7CisJdGltaW5nID0gRElWX1JPVU5EX1VQKHRob2xk
X21lbSwgaGNsa3ApOworCXRpbXMtPnRob2xkX21lbSA9IGNsYW1wX3ZhbCh0aW1pbmcsIDEsIEZN
QzJfUE1FTV9QQVRUX1RJTUlOR19NQVNLKTsKIAogCS8qCiAJICogdFNFVFVQX0FUVCA+IHRDUyAt
IHRXQUlUCkBAIC0xNTIzLDExICsxNTAzLDggQEAgc3RhdGljIHZvaWQgc3RtMzJfZm1jMl9jYWxj
X3RpbWluZ3Moc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwKIAlpZiAodHdhaXQgPiB0aGl6ICYmIChz
ZHJ0LT50RFNfbWluID4gdHdhaXQgLSB0aGl6KSAmJgogCSAgICAodHNldF9hdHQgPCBzZHJ0LT50
RFNfbWluIC0gKHR3YWl0IC0gdGhpeikpKQogCQl0c2V0X2F0dCA9IHNkcnQtPnREU19taW4gLSAo
dHdhaXQgLSB0aGl6KTsKLQl0aW1zLT50c2V0X2F0dCA9IERJVl9ST1VORF9VUCh0c2V0X2F0dCwg
aGNsa3ApOwotCWlmICh0aW1zLT50c2V0X2F0dCA9PSAwKQotCQl0aW1zLT50c2V0X2F0dCA9IDE7
Ci0JZWxzZSBpZiAodGltcy0+dHNldF9hdHQgPiBGTUMyX1BNRU1fUEFUVF9USU1JTkdfTUFTSykK
LQkJdGltcy0+dHNldF9hdHQgPSBGTUMyX1BNRU1fUEFUVF9USU1JTkdfTUFTSzsKKwl0aW1pbmcg
PSBESVZfUk9VTkRfVVAodHNldF9hdHQsIGhjbGtwKTsKKwl0aW1zLT50c2V0X2F0dCA9IGNsYW1w
X3ZhbCh0aW1pbmcsIDEsIEZNQzJfUE1FTV9QQVRUX1RJTUlOR19NQVNLKTsKIAogCS8qCiAJICog
dEhPTERfQVRUID4gdEFMSApAQCAtMTU0MiwxNyArMTUxOSwxMSBAQCBzdGF0aWMgdm9pZCBzdG0z
Ml9mbWMyX2NhbGNfdGltaW5ncyhzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLAogCSAqIHRIT0xEX0FU
VCA+IHRSQyAtICh0U0VUVVBfQVRUICsgdFdBSVQpCiAJICogdEhPTERfQVRUID4gdFdDIC0gKHRT
RVRVUF9BVFQgKyB0V0FJVCkKIAkgKi8KLQl0aG9sZF9hdHQgPSBoY2xrcDsKLQlpZiAodGhvbGRf
YXR0IDwgc2RydC0+dEFMSF9taW4pCi0JCXRob2xkX2F0dCA9IHNkcnQtPnRBTEhfbWluOwotCWlm
ICh0aG9sZF9hdHQgPCBzZHJ0LT50Q0hfbWluKQotCQl0aG9sZF9hdHQgPSBzZHJ0LT50Q0hfbWlu
OwotCWlmICh0aG9sZF9hdHQgPCBzZHJ0LT50Q0xIX21pbikKLQkJdGhvbGRfYXR0ID0gc2RydC0+
dENMSF9taW47Ci0JaWYgKHRob2xkX2F0dCA8IHNkcnQtPnRDT0hfbWluKQotCQl0aG9sZF9hdHQg
PSBzZHJ0LT50Q09IX21pbjsKLQlpZiAodGhvbGRfYXR0IDwgc2RydC0+dERIX21pbikKLQkJdGhv
bGRfYXR0ID0gc2RydC0+dERIX21pbjsKKwl0aG9sZF9hdHQgPSBtYXhfdCh1bnNpZ25lZCBsb25n
LCBoY2xrcCwgc2RydC0+dEFMSF9taW4pOworCXRob2xkX2F0dCA9IG1heF90KHVuc2lnbmVkIGxv
bmcsIHRob2xkX2F0dCwgc2RydC0+dENIX21pbik7CisJdGhvbGRfYXR0ID0gbWF4X3QodW5zaWdu
ZWQgbG9uZywgdGhvbGRfYXR0LCBzZHJ0LT50Q0xIX21pbik7CisJdGhvbGRfYXR0ID0gbWF4X3Qo
dW5zaWduZWQgbG9uZywgdGhvbGRfYXR0LCBzZHJ0LT50Q09IX21pbik7CisJdGhvbGRfYXR0ID0g
bWF4X3QodW5zaWduZWQgbG9uZywgdGhvbGRfYXR0LCBzZHJ0LT50REhfbWluKTsKIAlpZiAoKHNk
cnQtPnRXQl9tYXggKyBGTUMyX1RJTyArIEZNQzJfVFNZTkMgPiB0c2V0X21lbSkgJiYKIAkgICAg
KHRob2xkX2F0dCA8IHNkcnQtPnRXQl9tYXggKyBGTUMyX1RJTyArIEZNQzJfVFNZTkMgLSB0c2V0
X21lbSkpCiAJCXRob2xkX2F0dCA9IHNkcnQtPnRXQl9tYXggKyBGTUMyX1RJTyArIEZNQzJfVFNZ
TkMgLSB0c2V0X21lbTsKQEAgLTE1NzEsMTEgKzE1NDIsOCBAQCBzdGF0aWMgdm9pZCBzdG0zMl9m
bWMyX2NhbGNfdGltaW5ncyhzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLAogCWlmICgoc2RydC0+dFdD
X21pbiA+IHRzZXRfYXR0ICsgdHdhaXQpICYmCiAJICAgICh0aG9sZF9hdHQgPCBzZHJ0LT50V0Nf
bWluIC0gKHRzZXRfYXR0ICsgdHdhaXQpKSkKIAkJdGhvbGRfYXR0ID0gc2RydC0+dFdDX21pbiAt
ICh0c2V0X2F0dCArIHR3YWl0KTsKLQl0aW1zLT50aG9sZF9hdHQgPSBESVZfUk9VTkRfVVAodGhv
bGRfYXR0LCBoY2xrcCk7Ci0JaWYgKHRpbXMtPnRob2xkX2F0dCA9PSAwKQotCQl0aW1zLT50aG9s
ZF9hdHQgPSAxOwotCWVsc2UgaWYgKHRpbXMtPnRob2xkX2F0dCA+IEZNQzJfUE1FTV9QQVRUX1RJ
TUlOR19NQVNLKQotCQl0aW1zLT50aG9sZF9hdHQgPSBGTUMyX1BNRU1fUEFUVF9USU1JTkdfTUFT
SzsKKwl0aW1pbmcgPSBESVZfUk9VTkRfVVAodGhvbGRfYXR0LCBoY2xrcCk7CisJdGltcy0+dGhv
bGRfYXR0ID0gY2xhbXBfdmFsKHRpbWluZywgMSwgRk1DMl9QTUVNX1BBVFRfVElNSU5HX01BU0sp
OwogfQogCiBzdGF0aWMgaW50IHN0bTMyX2ZtYzJfc2V0dXBfaW50ZXJmYWNlKHN0cnVjdCBuYW5k
X2NoaXAgKmNoaXAsIGludCBjaGlwbnIsCi0tIAoxLjkuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBt
YWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1tdGQvCg==
