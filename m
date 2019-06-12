Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8DC41DBA
	for <lists+linux-mtd@lfdr.de>; Wed, 12 Jun 2019 09:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RxVyInwPNSp0PK3PMhHvt+iJBDlODIFstgsPrXrXczA=; b=WPqi+wLDseQzAT
	JUeTSBKpqkGkfsVFvovCiNMFLE2NhPeMiFndKlf01szmuIBGs45G+quwU/EaM30AhOogul5XA6qQA
	Rl4JPYIY1N820Lf+LF6dfzDpmHyExjeBd7zZxKaDef6ijf5kq3r/KZovvIVtZl7gMAfKwQP5nP6NP
	cODy5DgKEfGVXSOx1WUSBm1Q2M/GRZEqk+IPeAHfOl9Rj+o4YrLZFGCMZVzSdNFi05lbxsSWfrRUL
	qLdM1+zewenfUSAHF53lyY/vO1tRJGxT+S79gqSbcEwYqedns70bi95uMupMuCjTVTxtyMC1JlWT/
	bTxMBbz4GzLPvPu9D3Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxhA-0000ZE-IT; Wed, 12 Jun 2019 07:29:20 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haxgt-0000Xb-3T
 for linux-mtd@lists.infradead.org; Wed, 12 Jun 2019 07:29:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id B0AB06083114;
 Wed, 12 Jun 2019 09:28:51 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id cn_zwODzmwmp; Wed, 12 Jun 2019 09:28:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 51C71608311C;
 Wed, 12 Jun 2019 09:28:51 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id weNSmYbi14Va; Wed, 12 Jun 2019 09:28:51 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 295ED6083114;
 Wed, 12 Jun 2019 09:28:51 +0200 (CEST)
Date: Wed, 12 Jun 2019 09:28:51 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: JH <jupiter.hce@gmail.com>
Message-ID: <1401843206.88927.1560324531087.JavaMail.zimbra@nod.at>
In-Reply-To: <CAA=hcWRTPsk=zX=bnV6xAt-EpnyXy+dZdYGuLk8M-0UAjWHM1g@mail.gmail.com>
References: <CAA=hcWSKQ4+BsQ9XPEhP+f=-oTA7CnbJ6=4upRZughg8mOUSUw@mail.gmail.com>
 <CAFLxGvzAHGVA9Pe0rvJWqjUgaPZKyExvV1gu3pZAezhNGDXryg@mail.gmail.com>
 <CAA=hcWRTPsk=zX=bnV6xAt-EpnyXy+dZdYGuLk8M-0UAjWHM1g@mail.gmail.com>
Subject: Re: NAND user space program
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.8_GA_3025 (ZimbraWebClient - FF60 (Linux)/8.8.8_GA_1703)
Thread-Topic: NAND user space program
Thread-Index: 1nOerosxOeC9Lsr2LqvymqBF93WOcw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_002903_296194_14C2740D 
X-CRM114-Status: UNSURE (   3.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkpIIiA8anVwaXRlci5oY2VA
Z21haWwuY29tPgo+IEFuOiAiUmljaGFyZCBXZWluYmVyZ2VyIiA8cmljaGFyZC53ZWluYmVyZ2Vy
QGdtYWlsLmNvbT4KPiBDQzogImxpbnV4LW10ZCIgPGxpbnV4LW10ZEBsaXN0cy5pbmZyYWRlYWQu
b3JnPgo+IEdlc2VuZGV0OiBNaXR0d29jaCwgMTIuIEp1bmkgMjAxOSAwMTowMTo0OQo+IEJldHJl
ZmY6IFJlOiBOQU5EIHVzZXIgc3BhY2UgcHJvZ3JhbQoKPiBUaGFua3MgUmljaGFyZCwgY2FuIHRo
ZSBMaW51eCB6SW1hZ2Ugb3Igcm9vdGZzIGxvYWQgdG8gTkFORCBkaXJlY3RseQo+IHZpYSBKVEFH
IG9yIHNlcmlhbCBsaW5lPwoKVGhpcyBoYXMgbm90aGluZyB0byBkbyB3aXRoIExpbnV4LgpQbGVh
c2UsIGFzayB5b3VyIGJvYXJkL2p0YWcgdmVuZG9yLgpTb21lIHN1cHBvcnQgc3VjaCBvcGVyYXRp
b25zLgoKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
