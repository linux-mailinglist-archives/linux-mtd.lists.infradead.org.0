Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AA31BF1B1
	for <lists+linux-mtd@lfdr.de>; Thu, 30 Apr 2020 09:41:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQRriPYOb5u187rIjePxnKrsakH2xwVUVACLWzW2tqY=; b=TARxgdzKEcXfPz
	KmJdX8TnFM+CY+0gxjtH8Nx7/8eEi9Qszcbc939lOchu+zDcJ2y08lyXdseq9IXy/FOCqGDhgvIcT
	C5SvOFw3SO8hRryp7s5aCjLo+0qBkLEUKli4nLa7AkJJFrXtnq7b+rPDywg6k19EiAG1qsrA64Ml0
	0ySeRJERvAfeCJ1EQQSqVjjAYWfGPpfyWTDABvtsvj5YSyUso14DpRGzbUECAKlN7b5QWWZZbuP3Q
	VvAfeinUXXPKsm0jQ+AWZ/lBofnnVTHMMwIdS4yi1CwX7U5fI+pepFbj0VdJTZRQvvDfU489+AuO6
	/RwRuKxq0sNQAU2XGtMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU3or-0008Vo-LF; Thu, 30 Apr 2020 07:41:17 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU3ok-0008Uh-CZ
 for linux-mtd@lists.infradead.org; Thu, 30 Apr 2020 07:41:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 506636071A6F;
 Thu, 30 Apr 2020 09:41:08 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id bYGfR4OAvZ49; Thu, 30 Apr 2020 09:41:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id EFE396071A72;
 Thu, 30 Apr 2020 09:41:07 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id YRrMNTvwAjtm; Thu, 30 Apr 2020 09:41:07 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id C4C986071A6F;
 Thu, 30 Apr 2020 09:41:07 +0200 (CEST)
Date: Thu, 30 Apr 2020 09:41:07 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <1750032835.172217.1588232467635.JavaMail.zimbra@nod.at>
In-Reply-To: <20200430071137.GA2382543@kroah.com>
References: <20200119215233.7292-1-richard@nod.at>
 <875zdibasg.fsf@vostro.fn.ogness.net>
 <1537701093.171645.1588186266734.JavaMail.zimbra@nod.at>
 <20200430071137.GA2382543@kroah.com>
Subject: Re: Please queue ubifs: Fix ubifs_tnc_lookup() usage in
 do_kill_orphans() for stable (was: Re: [PATCH] ubifs: Fix
 ubifs_tnc_lookup() usage in do_kill_orphans())
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: Please queue ubifs: Fix ubifs_tnc_lookup() usage in
 do_kill_orphans() for stable (was: Re: [PATCH] ubifs: Fix ubifs_tnc_lookup()
 usage in do_kill_orphans())
Thread-Index: oMKit3F2zpWE9UdKHS/Y/lD2DsO63A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_004110_574264_4335C0B3 
X-CRM114-Status: UNSURE (   4.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: John Ogness <john.ogness@linutronix.de>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBJIGFsd2F5cyB0aG91Z2h0IGhhdmlu
Z3MgYSBGaXhlcy1UYWcgaXMgZW5vdWdoIHRvIG1ha2Ugc3VyZSBpdCB3aWxsCj4+IGdldCBwaWNr
ZWQgdXAuIElzbid0IHRoaXMgdGhlIGNhc2U/Cj4gCj4gTm8gaXQgaXMgbm90LCBwbGVhc2UgcmVh
ZDoKPiAgICBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9wcm9jZXNzL3N0
YWJsZS1rZXJuZWwtcnVsZXMuaHRtbAo+IGZvciBob3cgdG8gZG8gdGhpcyBwcm9wZXJseS4KPiAK
PiBPdXIgc2NyaXB0cyBhcmUgZG9pbmcgYmV0dGVyIHRvIGRpZyBvdXQgc3R1ZmYgd2hlcmUgbWFp
bnRhaW5lcnMgbWVzcyB1cAo+IGFuZCBmb3JnZXQgdG8gcHV0IHRoZSBjYzogc3RhYmxlIHRhZywg
YnV0IHlvdSBjYW4gbmV2ZXIgcmVseSBvbiBpdC4KPiBQbGVhc2Ugc3RpY2sgd2l0aCB0aGUgYWJv
dmUgcnVsZXMgdGhhdCBoYXZlIGJlZW4gdGhlcmUgZm9yIDE1KyB5ZWFycyA6KQoKU2lyLCB5ZXMs
IHNpci4KClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
