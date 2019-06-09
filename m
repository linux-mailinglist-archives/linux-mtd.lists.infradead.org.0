Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0403A497
	for <lists+linux-mtd@lfdr.de>; Sun,  9 Jun 2019 12:01:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=srJF+gQ0MOVuwTsnimsuko9GQnxrQQhoN4nZE++hdEg=; b=o7j6JgE1FFY7Qq
	tMk4VsnXj6zEeo0EMAC/A0N8vf14WLnnM3QR+261EV/vjt358AZ3tHPT5jSm+DA+wqSa9OOP6osxZ
	uwmnzmPUU/pnjViKG/dPFs9dBJWbIlFHv0hzJftf8BfV5340DT8BJAZ61yLfh7Seg8HvlcOBY9LGR
	otndNIoypwf2GbWqipobVKbuAcssBDoIK5CZsnmQw6La4iYOVTi/TEh1ByRJ86iAUI1jiXt8SPZuE
	aXKjGN8Uma7xpXah1/q+iwOyG9J7AxPI50p4rN36sXj3D/yfe2LemY4KmekQJWQbLGf656gOI7asu
	U5Esdnq7dI08Ww6sTepw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZudV-0008LZ-0L; Sun, 09 Jun 2019 10:01:13 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZudK-0008Kw-Dr
 for linux-mtd@lists.infradead.org; Sun, 09 Jun 2019 10:01:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 405F2608310F;
 Sun,  9 Jun 2019 12:01:00 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 4acshPSPK03k; Sun,  9 Jun 2019 12:00:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id CA7276083114;
 Sun,  9 Jun 2019 12:00:59 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id gCWz6zux3eRa; Sun,  9 Jun 2019 12:00:59 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id ACA2C608310F;
 Sun,  9 Jun 2019 12:00:59 +0200 (CEST)
Date: Sun, 9 Jun 2019 12:00:59 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Sergei Poselenov <sposelenov@emcraft.com>
Message-ID: <1159355903.85757.1560074459598.JavaMail.zimbra@nod.at>
In-Reply-To: <ac7d203471da8db3a148c207b586cae919304307.camel@emcraft.com>
References: <20190606121037.40a1cc5e@sergmir.emcraft.com>
 <20190607172355.6541fa51@sergmir.emcraft.com>
 <1299833819.84614.1559923336123.JavaMail.zimbra@nod.at>
 <08a796c9a296245c372511c683adb80913d14553.camel@emcraft.com>
 <766367078.85018.1559983598342.JavaMail.zimbra@nod.at>
 <a43eb232a51b7d0c95623de9403158c290163237.camel@emcraft.com>
 <1957000286.85744.1560070414116.JavaMail.zimbra@nod.at>
 <ac7d203471da8db3a148c207b586cae919304307.camel@emcraft.com>
Subject: Re: UBIFS: file data corruption during the power cut-off test
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.8_GA_3025 (ZimbraWebClient - FF60 (Linux)/8.8.8_GA_1703)
Thread-Topic: UBIFS: file data corruption during the power cut-off test
Thread-Index: B69v502MK5vtNWavlEHwCeZ2GPt/YQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_030102_618479_61E74F47 
X-CRM114-Status: UNSURE (   2.91  )
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

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBXZWxsLCB6ZXJvIGJ5dGVzIGFyZSBu
b3QgZ2FyYmFnZS4gOykKPiAKPiBJJ3ZlIHNlZW4gc29tZSBkYXRhIGluIHRoZSBsYXN0IDUxMiBi
eXRlcyBhcyB3ZWxsLgoKVGhhdCB3b3VsZCBiZSBhIGJ1ZywgdW5sZXNzIHlvdSBhcmUgb3Zlcndy
aXRpbmcgYW4gZXhpc3RpbmcKZmlsZS4KClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1
c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbXRkLwo=
