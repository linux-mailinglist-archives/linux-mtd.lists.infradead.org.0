Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 784BE1DFD9E
	for <lists+linux-mtd@lfdr.de>; Sun, 24 May 2020 10:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nt3Y9hwvxsQnp+DUhmwhuAJqvIzG6L0x7cIXBjEcVes=; b=NTplnro1VR8YM8
	vaJYwqIiuooPRoDQ1/E1L93ucxRt2lSU8nGX5aAE+OZAx71MAG5jpe7yEvYTmOKOVE+McjojVt/JE
	l9fL8rp3+CpR0i6Zr7qOBkH4FwDxLsXg2cVy8hUVJpJHLCzb2QzKxphxrOWmsfj7xnariOt4SbiBC
	Rjj0O1hbAjF7OC5xbBN0ttBmqE29gRAYEUUkVUJKuFHRTEHz9JINYVTCdqNKWFEfC2lKUn2yxPsgd
	cOp9F8OoqGsLp9uNexpGjjnr700vr200vi8zjRR+HXTe3y8fCBynabyM4n7ctS0k5UyFN5ZssVEF5
	uCdTPhhFZVOMlkgA5FrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcli6-00031v-TF; Sun, 24 May 2020 08:10:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jclhX-0002t9-D1; Sun, 24 May 2020 08:09:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=Cnnakm6QHb1aufxrcMMT7UP0YoBJhfqLlkpV9tsH31o=; b=Tru5hAIWetwN8GEDQP/pBbLZQv
 Y8IJcjHQsh6bbo1OOLodPthnH2bIweHQrc7oVAq+yXn4QrZTDQAnWjQnFhecKXOa98zSTsZhC5Zri
 PKteg+hSWroZdO9HtQ5Q2xXz/nzOzPbR55gI972nl4Tyi48SqKtOKlQuTIV0K64QKMd+QnDJRmDV6
 kDqfPNkX/h4EaWXEDmdz69RZwvm0447cFHrVHqPGJoFbbWwEOhDnfpOFOTiMYWTPNnHKLKBaITVoN
 6jRsVGI7YErN7caUUoDya0xQc85O+SPnZDK5beLG6E4TMpFuiDmnjL4g5mqN1EBRrVdiTMk0WAWHr
 QoCJNKng==;
Received: from lithops.sigma-star.at ([195.201.40.130])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jclhM-0006bw-3R; Sun, 24 May 2020 08:09:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 3CEC861D8DF0;
 Sun, 24 May 2020 10:09:11 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id hjO1QG7WQrtF; Sun, 24 May 2020 10:09:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 8DEEB6071A74;
 Sun, 24 May 2020 10:09:08 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ocJ1eMPe1I_U; Sun, 24 May 2020 10:09:08 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 64D2761D8DEE;
 Sun, 24 May 2020 10:09:08 +0200 (CEST)
Date: Sun, 24 May 2020 10:09:08 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: syzbot <syzbot+0ce97ea45b008ba3b8bd@syzkaller.appspotmail.com>
Message-ID: <768166145.263589.1590307748272.JavaMail.zimbra@nod.at>
In-Reply-To: <000000000000861e3305a65e9d74@google.com>
References: <000000000000861e3305a65e9d74@google.com>
Subject: Re: KASAN: use-after-free Read in uif_close
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: KASAN: use-after-free Read in uif_close
Thread-Index: IdpTiJPobSmrVYjHxyHltpNxiv96sg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_090937_745866_642C4CD0 
X-CRM114-Status: UNSURE (   3.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (0.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 2.5 SORTED_RECIPS          Recipient list is sorted by address
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 daniel baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>, syzkaller-bugs@googlegroups.com,
 linux-kernel <linux-kernel@vger.kernel.org>, linux@rempel-privat.de,
 linux-mtd <linux-mtd@lists.infradead.org>, linux-imx <linux-imx@nxp.com>,
 kernel <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 shawnguo <shawnguo@kernel.org>, festevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogInN5emJvdCIgPHN5emJvdCsw
Y2U5N2VhNDViMDA4YmEzYjhiZEBzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tPgo+IEFuOiAiQXJu
ZCBCZXJnbWFubiIgPGFybmRAYXJuZGIuZGU+LCAiZGFuaWVsIGJhbHV0YSIgPGRhbmllbC5iYWx1
dGFAbnhwLmNvbT4sICJmZXN0ZXZhbSIgPGZlc3RldmFtQGdtYWlsLmNvbT4sICJHcmVnCj4gS3Jv
YWgtSGFydG1hbiIgPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiwgImtlcm5lbCIgPGtlcm5l
bEBwZW5ndXRyb25peC5kZT4sICJsaW51eC1hcm0ta2VybmVsIgo+IDxsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmc+LCAibGludXgtaW14IiA8bGludXgtaW14QG54cC5jb20+LCAi
bGludXgta2VybmVsIiA8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz4sCj4gImxpbnV4LW10
ZCIgPGxpbnV4LW10ZEBsaXN0cy5pbmZyYWRlYWQub3JnPiwgbGludXhAcmVtcGVsLXByaXZhdC5k
ZSwgIk1pcXVlbCBSYXluYWwiIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiwKPiAicmljaGFy
ZCIgPHJpY2hhcmRAbm9kLmF0PiwgIlNhc2NoYSBIYXVlciIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXgu
ZGU+LCAic2hhd25ndW8iIDxzaGF3bmd1b0BrZXJuZWwub3JnPiwKPiBzeXprYWxsZXItYnVnc0Bn
b29nbGVncm91cHMuY29tLCAiVmlnbmVzaCBSYWdoYXZlbmRyYSIgPHZpZ25lc2hyQHRpLmNvbT4K
PiBHZXNlbmRldDogU29ubnRhZywgMjQuIE1haSAyMDIwIDA4OjAzOjAzCj4gQmV0cmVmZjogUmU6
IEtBU0FOOiB1c2UtYWZ0ZXItZnJlZSBSZWFkIGluIHVpZl9jbG9zZQoKPiBzeXpib3QgaGFzIGJp
c2VjdGVkIHRoaXMgYnVnIHRvOgo+IAo+IGNvbW1pdCAzMmVjNzgzYWUxOWQ0ODA4NGI4OTNjYzU0
NzQ3ZmVkMzdiMDdlYjBjCj4gQXV0aG9yOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgo+
IERhdGU6ICAgV2VkIEFwciA4IDE5OjAyOjU3IDIwMjAgKzAwMDAKPiAKPiAgICBmaXJtd2FyZTog
aW14OiBmaXggY29tcGlsZS10ZXN0aW5nCgpIbW0sIGZyb20gYSBxdWljayBjaGVjayBJIGRvbid0
IHNlZSBob3cgdGhpcyBpcyByZWxhdGVkLgpBcm5kPwoKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBN
VEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
