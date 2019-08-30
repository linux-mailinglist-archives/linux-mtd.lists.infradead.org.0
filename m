Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8ADA3DC5
	for <lists+linux-mtd@lfdr.de>; Fri, 30 Aug 2019 20:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XqnNk2HfjTEdcMKuAHWt7LQPbi5x1eayUJzH+evGhi0=; b=Aegg12wuMLUGIi
	CJr/dpsKLvNGTAsBGQNuNpsf+3Pv0mToritRAxtYew4xDXiM5ODEkQPsjBK7/Qry19/ymNTfB1YTe
	4IWUsV2nPB2VoiDkNFd2qMP77ktlxQhQt/p4Odxo3Z99CmI/jucMmt9DioI7Z/ejr6clvmSloiVua
	/UYUaZEagq3AxFEp8L9N41JGi22DErbXCZ5K7knoW5qbgM54jPnWm+S00QTM1WOvnCykxjy/zjd21
	a2jIptlZN/n9rtq4jFt9TOHPnqqB6fAsSCJZuRIRZTEACRBA6X47AscaLtJVOyTsxAI2xk7ISMYsF
	I3Rw+gAuOJ8Hgc9EIouw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3llI-0003XY-Ld; Fri, 30 Aug 2019 18:36:40 +0000
Received: from rs17.zol.co.zw ([197.211.212.71])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3lky-0003MB-CT
 for linux-mtd@lists.infradead.org; Fri, 30 Aug 2019 18:36:22 +0000
Received: from outgoing.zol.co.zw (206-214-8-79.candw.ag [206.214.8.79] (may
 be forged)) (authenticated bits=0)
 by rs17.zol.co.zw (8.14.4/8.14.9) with ESMTP id x7UIZc7T023184;
 Fri, 30 Aug 2019 20:35:44 +0200
To: "linux mtd" <linux-mtd@lists.infradead.org>,
 "dedekind1" <dedekind1@gmail.com>,
 "Pankaj DEV" <pankaj.dev@stericsson.com>,
 "David McCullough" <david_mccullough@mcafee.com>
From: nik_bin_nek_alwi <certificate@zol.co.zw>
Subject: =?UTF-8?Q?=F0=9F=91=86?=
Message-ID: <7aec3e0a-522f-4cb9-b7b2-3f73c307456b@zol.co.zw>
Date: Fri, 30 Aug 2019 14:30:56 -0400
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-sslZOL-Comment: Message x7UIZc7T023184 sent by user #51872
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zol.co.zw;
 h=to:from:subject:message-id:date:mime-version:content-type:content-transfer-encoding;
 s=dkim; bh=QmQXRLh/nPCxPxs1RKlP93V2u7X8o3C9+da/3utp7Co=;
 b=EcJgOg/fN3teDcxH6yCdcqw3r7vnGnzHmC+9epe3aCCQqQE2GrDiYYlCO5ou1ul4UHSAO24iKD+fOGYCGEJs1xacVwf+X5Bc8vAmxklXQAdMVFG+yRPxElzZDXQcc3EK5dH8IYWsC9BN327vMywJwKU6oKDby8HwIhlGRQjMY10=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_113621_473663_CC4AFA00 
X-CRM114-Status: UNSURE (   1.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [197.211.212.71 listed in list.dnswl.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?206.214.8.79>]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: lyndon295.xyz]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: lyndon295.xyz]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

VW5nbGF1YmxpY2ghIGh0dHA6Ly9wcWsuTHluZG9uMjk1Lnh5ei9pbmRleAoKCgoKCgpfX18KTGFz
cyBiYWxkIHdpZWRlciB2b24gZGlyIGjDtnJlbgpuaWtfYmluX25la19hbHdpQHlhaG9vLmNvbQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
