Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2FD151CF0
	for <lists+linux-mtd@lfdr.de>; Tue,  4 Feb 2020 16:08:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xqLL5eet2GGPQ1M8BhT8zaEhdysYaU9ACpThjc64X+g=; b=jFTUQZhJwdz67O
	jQmawOStKQsUiVgS/4SrM4d3bqmfXsuj1Q/WuAFeQNLJfOZhqe6SmBMCJ+d6RJB6ki+FviI0nqof2
	nozjb97ZXwoDduoDCNGz27QI2apkzdzqU9EyupCAOekRKUMhBADKKwLrO/sUYf96PskDTCoU4zt3H
	avXr/vd1MkvL1nvdIFlk7EyVL/CKTxXsuzvW1moliBEWH1EyfQMXFcUCxGZSBAKiGI9n4XnhvfKY2
	5UHk2Ex//YzTt7Yv9jX8VULd7WCmb1fBv735G4KlHYe4SmebaFm/XeeGGidtInOFZ0aLhUzl1ic/3
	9pzHaPXA0m7MwIQEzdfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyzob-0004X1-4H; Tue, 04 Feb 2020 15:08:37 +0000
Received: from smtp.eckelmann.de ([2a00:1f08:4007:e035:172:18:35:4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyzoP-0004W5-5k
 for linux-mtd@lists.infradead.org; Tue, 04 Feb 2020 15:08:26 +0000
Received: from EX-SRV1.eckelmann.group (2a00:1f08:4007:e035:172:18:35:4) by
 EX-SRV1.eckelmann.group (2a00:1f08:4007:e035:172:18:35:4) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Tue, 4 Feb 2020 16:07:31 +0100
Received: from EX-SRV1.eckelmann.group ([fe80::250:56ff:fe8b:faa6]) by
 EX-SRV1.eckelmann.group ([fe80::250:56ff:fe8b:faa6%3]) with mapi id
 15.01.1591.017; Tue, 4 Feb 2020 16:07:31 +0100
From: "Mainz, Roland" <R.Mainz@eckelmann.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, Jan Kara <jack@suse.cz>
Subject: Implementing quota support on Linux without block device as backing
 store ? / was: RE: [PATCH 1/8] quota: Allow to pass mount path to quotactl
Thread-Topic: Implementing quota support on Linux without block device as
 backing store ? / was: RE: [PATCH 1/8] quota: Allow to pass mount path to
 quotactl
Thread-Index: AdXbbKDrCgOz0kbdRUqDYOUqf+uszQ==
Date: Tue, 4 Feb 2020 15:07:31 +0000
Message-ID: <db98497119d542b88e0cfc76d9b0921b@eckelmann.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2a00:1f08:4007:3c00:f91e:e10f:9d83:89d4]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_070825_216635_73F0DCE6 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Richard
 Weinberger <richard@nod.at>, "Mainz, Roland" <R.Mainz@eckelmann.de>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, Jan Kara <jack@suse.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org





Sascha Hauer wrote:
> This patch introduces the Q_PATH flag to the quotactl cmd argument.
> When given, the path given in the special argument to quotactl will be the
> mount path where the filesystem is mounted, instead of a path to the block
> device.
> This is necessary for filesystems which do not have a block device as backing
> store. Particularly this is done for upcoming UBIFS support.

Just curious: Did you check how NFSv4 (also a filesystem without block device as backing store...)  implemented quota support ? Maybe there is already a solution...

----

Bye,
Roland
-- 
Roland Mainz, MAA/CAS
Eckelmann AG, Berliner Str. 161, 65205 Wiesbaden
Telefon +49/611/7103-661, Fax +49/611/7103-133
r.mainz@eckelmann.de

Eckelmann Group - Source of inspiration


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
