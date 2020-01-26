Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFD4149C4C
	for <lists+linux-mtd@lfdr.de>; Sun, 26 Jan 2020 19:30:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VqdzfaCoIpFByuwuZHsMqLKouNbfm1/2RakvqiRd8TA=; b=I1T1l1zUMTpXqG
	RW8Ck0RoAh+GcpnJRzcv26yISjdH8Xl7vba5IfD4KVJ5fpAQJcxqQSpSKgrSqzvS0DB/xZ0EsIEKq
	ClEc4DVkfh6U7Pz/uTqIdn0XNUafUUGYNnHVMWZUGAOUaqjdhZ5BOygU9yTUnSn9NZOCUwcdSwx3J
	A64RjtWHC8RkQykxv6I1ohMLY9QolrbqkMFVAoBsLMfBiYMGVs4Lg8vXU2J1vjCy6WiBGdypholVJ
	mtaPUgH/FJmRXiTDPNoYixYiDNPlcZQSFGNxpuh2jmFIF43sXIc2i1BcEj/JK46qVzOwflYSlQrH5
	iZkoY2ASjblAsY9b2EOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivmgE-0005aY-D6; Sun, 26 Jan 2020 18:30:42 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivmg5-0005Zi-1f
 for linux-mtd@lists.infradead.org; Sun, 26 Jan 2020 18:30:34 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jan 2020 10:30:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,366,1574150400"; d="scan'208";a="228785343"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 26 Jan 2020 10:30:27 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ivmfz-000E7W-Gx; Mon, 27 Jan 2020 02:30:27 +0800
Date: Mon, 27 Jan 2020 02:30:01 +0800
From: kbuild test robot <lkp@intel.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [RFC PATCH] ubifs: tnc_next() can be static
Message-ID: <20200126183001.dimlxbpzerc6fjiq@f53c9c00458a>
References: <20200124131323.23885-9-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124131323.23885-9-s.hauer@pengutronix.de>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_103033_101035_BF840B04 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: Dongsheng Yang <yangds.fnst@cn.fujitsu.com>, kbuild-all@lists.01.org,
 Richard Weinberger <richard@nod.at>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-mtd@lists.infradead.org, kernel@pengutronix.de, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Fixes: 7eb604185a12 ("ubifs: Add quota support")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 tnc.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ubifs/tnc.c b/fs/ubifs/tnc.c
index 624568365ad3d..188fa036e6556 100644
--- a/fs/ubifs/tnc.c
+++ b/fs/ubifs/tnc.c
@@ -600,7 +600,7 @@ struct ubifs_znode *ubifs_get_znode(struct ubifs_info *c,
  * This function returns %0 if the next TNC entry is found, %-ENOENT if there is
  * no next entry, or a negative error code otherwise.
  */
-int tnc_next(struct ubifs_info *c, struct ubifs_znode **zn, int *n)
+static int tnc_next(struct ubifs_info *c, struct ubifs_znode **zn, int *n)
 {
 	struct ubifs_znode *znode = *zn;
 	int nn = *n;

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
