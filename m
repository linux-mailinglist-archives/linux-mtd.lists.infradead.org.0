Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D13C1D4EC3
	for <lists+linux-mtd@lfdr.de>; Fri, 15 May 2020 15:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XOIsqdlHtcafF0CHavhZjgXbIgHmh5z4AIfL0dNr5Ss=; b=L21pZBy5yodcxG
	Xc9QftKiD+uB66YmZEiFhkbTR016z/7OSbd+8+39XX6ilBj2xI6FdFh0r4tuy/XKjEqnrouibuw2M
	5WIbozmoKDuQ7T2hTvdsOp+YUSoLSN5qsvBckPmdD3CE6hkO9SAp9hOJ7GFiePwKSvwKwdnohB7Ap
	o9IQV7uhGWgXF8Kn7d7vpbK9HRGV94Fp3U0vgToH6SgP1i01de7/dXBQQ6lPLGYY/cNYXbsWLbTFl
	ZvZcqiZfmLg23GNS+farQ5NKpUzP+NH+Xx5HkCEdvABZX+1zcwE823lO5BdXaOQs54qEqQiCiysBN
	qbH1U544UG8F6rfZJcGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZaCT-0002wE-4s; Fri, 15 May 2020 13:16:29 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZaCC-0002uF-Fa
 for linux-mtd@lists.infradead.org; Fri, 15 May 2020 13:16:17 +0000
Received: from mailer.emlix.com (p5098be52.dip0.t-ipconnect.de [80.152.190.82])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id CFEA35F8D7
 for <linux-mtd@lists.infradead.org>; Fri, 15 May 2020 15:16:08 +0200 (CEST)
From: Rolf Eike Beer <eb@emlix.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] fix build of jffs2reader and jffs2dump if zlib or lzo headers
 are not in default paths
Date: Fri, 15 May 2020 15:16:08 +0200
Message-ID: <2421145.rPmLg7YRcb@devpool35>
Organization: emlix GmbH
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_061612_680180_B7BFB682 
X-CRM114-Status: UNSURE (   5.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

RnJvbSAxN2Y2NDA3ZjIyYjhmODc5ZTZiNzg4Y2I0ZTNhNjdkODU2YWJlMDJlIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBSb2xmIEVpa2UgQmVlciA8ZWJAZW1saXguY29tPgpEYXRlOiBG
cmksIDE1IE1heSAyMDIwIDE0OjU2OjQ4ICswMjAwClN1YmplY3Q6IFtQQVRDSF0gZml4IGJ1aWxk
IG9mIGpmZnMycmVhZGVyIGFuZCBqZmZzMmR1bXAgaWYgemxpYiBvciBsem8KIGhlYWRlcnMgYXJl
IG5vdCBpbiBkZWZhdWx0IHBhdGhzCgpTaWduZWQtb2ZmLWJ5OiBSb2xmIEVpa2UgQmVlciA8ZWJA
ZW1saXguY29tPgotLS0KIGpmZnNYLXV0aWxzL01ha2Vtb2R1bGUuYW0gfCAyICsrCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvamZmc1gtdXRpbHMvTWFrZW1v
ZHVsZS5hbSBiL2pmZnNYLXV0aWxzL01ha2Vtb2R1bGUuYW0KaW5kZXggZmIxODFkZS4uOWZkNzM0
YiAxMDA2NDQKLS0tIGEvamZmc1gtdXRpbHMvTWFrZW1vZHVsZS5hbQorKysgYi9qZmZzWC11dGls
cy9NYWtlbW9kdWxlLmFtCkBAIC0xMiw5ICsxMiwxMSBAQCBta2ZzX2pmZnMyX0NQUEZMQUdTID0g
JChBTV9DUFBGTEFHUykgJChaTElCX0NGTEFHUykgJChMWk9fQ0ZMQUdTKQogCiBqZmZzMnJlYWRl
cl9TT1VSQ0VTID0gamZmc1gtdXRpbHMvamZmczJyZWFkZXIuYwogamZmczJyZWFkZXJfTERBREQg
PSBsaWJtdGQuYSAkKFpMSUJfTElCUykgJChMWk9fTElCUykKK2pmZnMycmVhZGVyX0NQUEZMQUdT
ID0gJChBTV9DUFBGTEFHUykgJChaTElCX0NGTEFHUykgJChMWk9fQ0ZMQUdTKQogCiBqZmZzMmR1
bXBfU09VUkNFUyA9IGpmZnNYLXV0aWxzL2pmZnMyZHVtcC5jCiBqZmZzMmR1bXBfTERBREQgPSBs
aWJtdGQuYSAkKFpMSUJfTElCUykgJChMWk9fTElCUykKK2pmZnMyZHVtcF9DUFBGTEFHUyA9ICQo
QU1fQ1BQRkxBR1MpICQoWkxJQl9DRkxBR1MpICQoTFpPX0NGTEFHUykKIAogc3VtdG9vbF9TT1VS
Q0VTID0gamZmc1gtdXRpbHMvc3VtdG9vbC5jCiBzdW10b29sX0xEQUREID0gbGlibXRkLmEKLS0g
CjIuMjYuMgoKLS0gClJvbGYgRWlrZSBCZWVyLCBlbWxpeCBHbWJILCBodHRwOi8vd3d3LmVtbGl4
LmNvbQpGb24gKzQ5IDU1MSAzMDY2NC0wLCBGYXggKzQ5IDU1MSAzMDY2NC0xMQpHb3RoYWVyIFBs
YXR6IDMsIDM3MDgzIEfDtnR0aW5nZW4sIEdlcm1hbnkKU2l0eiBkZXIgR2VzZWxsc2NoYWZ0OiBH
w7Z0dGluZ2VuLCBBbXRzZ2VyaWNodCBHw7Z0dGluZ2VuIEhSIEIgMzE2MApHZXNjaMOkZnRzZsO8
aHJ1bmc6IEhlaWtlIEpvcmRhbiwgRHIuIFV3ZSBLcmFja2Ug4oCTIFVzdC1JZE5yLjogREUgMjA1
IDE5OCAwNTUKCmVtbGl4IC0gc21hcnQgZW1iZWRkZWQgb3BlbiBzb3VyY2UKCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQg
ZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1tdGQvCg==
