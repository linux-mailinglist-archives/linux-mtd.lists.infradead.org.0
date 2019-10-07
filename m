Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FFFCEFCA
	for <lists+linux-mtd@lfdr.de>; Tue,  8 Oct 2019 02:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:
	Message-ID:From:Date:To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JwD0df7PYhZ5rGOg69GH/J1YsR01yN89qxIG5Wr6Zlk=; b=k7o
	WWAgnYVebjvVk4g3DM5dbQ8ypBFdllF4e3npT0ZMpZXPcwswfX5jFi8PQeEU2cynWzxIW3vLZfo3x
	UgiyWfMcxAf7H6LjX+INlkWdvP+OL/N4iCOI8qKFc/hv5zq+MxgYPfZOMTrLyo+ZqJbBq/Cr+PSvy
	b1/NSBxT0XJA/uu1MrvH2+3imwekHwFcGj6oUPxzCPRxq8enyItPz+ig8obIXLCBY8D9Wb7oOwtry
	Fp93tbtIBvMZxpjEVhWd4s8tJ+cpDQGRivI9RL1matd9/1I59Nvh4ZRM+F57p3KEpH7dDHy2p5zxp
	IGJinB5TaJ43GKyttFEGxrIKHPbPK+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHcxb-0002su-TH; Tue, 08 Oct 2019 00:02:39 +0000
Received: from webmail.congonhas.mg.gov.br ([71.6.200.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHcxS-0002rc-6W
 for linux-mtd@lists.infradead.org; Tue, 08 Oct 2019 00:02:31 +0000
Received: from webmail.congonhas.mg.gov.br (localhost.localdomain [127.0.0.1])
 by webmail.congonhas.mg.gov.br (Postfix) with ESMTPS id BEFF6C701B8A; 
 Mon,  7 Oct 2019 20:56:28 -0300 (-03)
Received: from webmail.congonhas.mg.gov.br (localhost.localdomain [127.0.0.1])
 by webmail.congonhas.mg.gov.br (Postfix) with ESMTPS id 20F7FC701BE8; 
 Mon,  7 Oct 2019 20:55:15 -0300 (-03)
Received: from webmail.congonhas.mg.gov.br (localhost.localdomain [127.0.0.1])
 by webmail.congonhas.mg.gov.br (Postfix) with ESMTP id E356FC701B9A; 
 Mon,  7 Oct 2019 20:55:13 -0300 (-03)
Date: Mon, 7 Oct 2019 20:55:13 -0300 (BRT)
From: Connolly's Donation <escola.cardosoosorio@congonhas.mg.gov.br>
Message-ID: <570267886.11258.1570492513757.JavaMail.zimbra@congonhas.mg.gov.br>
Subject: 
MIME-Version: 1.0
X-Originating-IP: [71.6.200.221]
X-Mailer: Zimbra 8.7.11_GA_3800 (zclient/8.7.11_GA_3800)
Thread-Index: TSifgOknV1aJo/CGkwcLoieVbTdiSg==
Thread-Topic: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_170230_254214_81CEE5F7 
X-CRM114-Status: UNSURE (  -2.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [71.6.200.221 listed in list.dnswl.org]
 1.2 MISSING_HEADERS        Missing To: header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (mrandmrspatrickconnolly98[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.9 REPLYTO_WITHOUT_TO_CC  No description available.
 0.0 LOTS_OF_MONEY          Huge... sums of money
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
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
Reply-To: mrandmrspatrickconnolly98@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpXZSBhcmUgTXIuIGFuZCBNcnMuIENvbm5vbGx5IHRoZSBtZWdhIHdpbm5lciBvZiDC
ozExNW0gRXVyb01pbGxpb25zIGxvdHRlcnksCmlmIHlvdSBnZXQgdGhpcyBlbWFpbCB0aGVuIHlv
dXIgZW1haWwgd2FzIHNlbGVjdGVkIGFmdGVyIGEgc3BpbiBiYWxsLiAKV2UgaGF2ZSBzcHJlYWQg
bW9zdCBvZiBvdXIgd2VhbHRoIG92ZXIgc2V2ZXJhbCBjaGFyaXRpZXMKYW5kIG9yZ2FuaXphdGlv
bnMuIFdlIGhhdmUgdm9sdW50YXJpbHkgZGVjaWRlZCB0byBkb25hdGUgdGhlIHN1bQpvZiDCozEg
TWlsbGlvbiB0byB5b3UsIHRvIHZlcmlmeSBvdXIgd2lubmluZ3MgcGxlYXNlIHNlZSBvdXIgdHVi
ZSBwYWdlCmJlbG93LgoKV0FUQ0ggSEVSRTogaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/
dj1OZEFma0E4UVBwZwoKVEhJUyBJUyBZT1VSIERPTkFUSU9OIENPREU6IFsgMDAzNDIxOSBdCgpS
ZXBseSB3aXRoIHRoZSBET05BVElPTiBDT0RFIHRvIHRoaXMgZW1haWw6IG1yYW5kbXJzcGF0cmlj
a2Nvbm5vbGx5OThAZ21haWwuY29tCgoKSG9wZSB0byBtYWtlIHlvdSBhbmQgeW91ciBmYW1pbHkg
aGFwcHkuCgpSZWdhcmRzCk1yLmFuZCBNcnMuQ29ubm9sbHkuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24g
bWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbXRkLwo=
