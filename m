Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C8C39BEA
	for <lists+linux-mtd@lfdr.de>; Sat,  8 Jun 2019 10:47:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/GJw/ZnnDuZ5o3O6gq+lAU6Sdvmr2sVsjwh0hgObug=; b=aBLDtXCTYpxNrI
	ZVe74ekA3yYwTAQZ3dHwX+NIkSwQ6xpQeN6NI6xLHDQFBAgOoIzOnZIRMdRtNEIuSmF/6ubfBdZDy
	mi4CCvqbSUctUg3VmVjLl4+bqyRR4K7n1jovUi88vGL0toX1YropsmAYq7uhaGr9QguZLye/Yltf/
	bgRr02pP2k3FGwacDUovHml2Tua2Yl3i9YqSFfNu9pYEzH6gB7k3L5VjXMeVRN7sKMzD/kwuqkW0c
	/uxFYNCBGUTVukIjmnxzLAwGCJYWqbFtmIUWL1r97ZynpnDASZvxvSGEVZjDv4D6UJ9N5YgYwOaVU
	t5ARtDGGeBa9CHpr4w0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZX00-0001D1-NZ; Sat, 08 Jun 2019 08:46:52 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZWzq-0001Ca-AH
 for linux-mtd@lists.infradead.org; Sat, 08 Jun 2019 08:46:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id C40B96083111;
 Sat,  8 Jun 2019 10:46:38 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id dOifK0o98E9V; Sat,  8 Jun 2019 10:46:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 84C466083112;
 Sat,  8 Jun 2019 10:46:38 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id droSnd_-MtX0; Sat,  8 Jun 2019 10:46:38 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 67E7C608310F;
 Sat,  8 Jun 2019 10:46:38 +0200 (CEST)
Date: Sat, 8 Jun 2019 10:46:38 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Sergei Poselenov <sposelenov@emcraft.com>
Message-ID: <766367078.85018.1559983598342.JavaMail.zimbra@nod.at>
In-Reply-To: <08a796c9a296245c372511c683adb80913d14553.camel@emcraft.com>
References: <20190606121037.40a1cc5e@sergmir.emcraft.com>
 <CAFLxGvx4iqpU8pq8CPwah9M+Qa2YkpXEiSmndeVy2mLadNQn_g@mail.gmail.com>
 <20190606210803.481cbc5d@sergmir.emcraft.com>
 <CAFLxGvy1BTuLkcn=7N=FG_q5cBgj5L1YzyhiakVFewYPyr6dzA@mail.gmail.com>
 <20190607172355.6541fa51@sergmir.emcraft.com>
 <1299833819.84614.1559923336123.JavaMail.zimbra@nod.at>
 <08a796c9a296245c372511c683adb80913d14553.camel@emcraft.com>
Subject: Re: UBIFS: file data corruption during the power cut-off test
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.8_GA_3025 (ZimbraWebClient - FF60 (Linux)/8.8.8_GA_1703)
Thread-Topic: UBIFS: file data corruption during the power cut-off test
Thread-Index: 2l/Caxmev/hNF8ZjRUKkvjNSiYHzxw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_014642_507559_779B26B1 
X-CRM114-Status: UNSURE (   3.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IE5vdCBhY3R1YWxseSwgSSdtIGFmcmFp
ZC4gSSBkb24ndCBzZWUgaG93IG92ZXJ3cml0aW5nIGEgZmlsZSBpcwo+IHJlbGV2YW50IGhlcmUu
IERlZmluaXRlbHksIEkgZG9uJ3QgZG8gcG93ZXIgY3V0IGR1cmluZyAiZGQgaWY9dGVzdDIKPiBv
Zj10ZXN0MCBjb252PW5vdHJ1bmMiLiBBdCB0aGUgbW9tZW50IG9mIHBvd2VyIGN1dC1vZmYsIHRl
c3QyIGhhcyBiZWVuCj4gY3JlYXRlZCBmcm9tIHNjcmF0Y2ggYW5kIGhhcyBzb21lIGRhdGEgd3Jp
dHRlbiB0byBpdCwgd2l0aCBtb3JlIHdyaXRlcyBpbgo+IHByb2dyZXNzLgoKSSdtIHNvcnJ5LCBi
dXQgSSdtIHJlYWxseSBjb25mdXNlZCBub3cuCgpQbGVhc2Ugc2hhcmUgeW91ciByZWFsIHRlc3Qg
Y2FzZSwgd2l0aCByZWFsIHJlc3VsdHMgYW5kIHdoYXQgeW91IGV4cGVjdC4KTm8gZ3Vlc3N3b3Jr
LCBubyBzaW1wbGlmaWVkIHBzZXVkbyBjb2RlLiA6LSkKCk90aGVyd2lzZSB3ZSBoYXZlIGxpdHRs
ZSBjaGFuY2UgdG8gc29ydCB0aGlzIG91dC4KQWxzbyByZWFkIHdoYXQgU3RldmUgd3JvdGUuCgpU
aGFua3MsCi8vcmljaGFyZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
