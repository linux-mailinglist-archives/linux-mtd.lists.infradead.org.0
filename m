Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0601FAF84
	for <lists+linux-mtd@lfdr.de>; Tue, 16 Jun 2020 13:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u4Wn4H/l+Ibq7Fjbae5Fgsgv7cXOcUgHwBkH7VMdlEY=; b=LeIZ2KmbmAuR48
	iu2WxWv9HjIJzHu4izD/G1dHS/j6nTwBayeuw06+F4tkz/ZXI1FuxhOmd5nd83dAsFAS25djW+6mt
	zNavzu9iSmi+1frTXjcwLn0zX2AKTnQylbf3dyNu/D40dsp1ZLOlaNSrP1/wt3uE1Cj612OJGRb7l
	gvRqyUEmbGx5yAGmzB3KfU76XW53vUBgi4JC8TcJuJ1liF8J9nEYZZqWrNUQdxmYkvPXeuxNr1Vd5
	1eim3PRGoTjUzCZ5N652tyMr/tEh03RUKEyR39tjEuiP2Vhw+W+vqpItlGzQvaQPC51oL306P3CYH
	Vd8Mrg2H1NNlOCIXTtlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlA7u-0000yX-AY; Tue, 16 Jun 2020 11:51:38 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlA7o-0000y2-30
 for linux-mtd@lists.infradead.org; Tue, 16 Jun 2020 11:51:33 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1jlA7h-0007iF-UR; Tue, 16 Jun 2020 11:51:26 +0000
From: Colin King <colin.king@canonical.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org
Subject: [PATCH][next] mtd: rawnand: qcom: fix incorrect masking operator,
 used & instead of |
Date: Tue, 16 Jun 2020 12:51:25 +0100
Message-Id: <20200616115125.74298-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_045132_256846_C33EE1EC 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

Currently the expression (nand_ctrl | BAM_MODE_EN) is always true no
matter the value of nand_ctrl because the incorrect masking operator
is being used.  Fix this by using bit-wise & instead of |.

Addresses-Coverity: ("Wrong operator used")
Fixes: dd0c1fc8de12 ("mtd: rawnand: qcom: set BAM mode only if not set already")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/mtd/nand/raw/qcom_nandc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/qcom_nandc.c b/drivers/mtd/nand/raw/qcom_nandc.c
index a3ef4288be27..37d95532ba7e 100644
--- a/drivers/mtd/nand/raw/qcom_nandc.c
+++ b/drivers/mtd/nand/raw/qcom_nandc.c
@@ -2790,7 +2790,7 @@ static int qcom_nandc_setup(struct qcom_nand_controller *nandc)
 		 * only if it is not in BAM mode. In most cases BAM
 		 * mode will be enabled in bootloader
 		 */
-		if (!(nand_ctrl | BAM_MODE_EN))
+		if (!(nand_ctrl & BAM_MODE_EN))
 			nandc_write(nandc, NAND_CTRL, nand_ctrl | BAM_MODE_EN);
 	} else {
 		nandc_write(nandc, NAND_FLASH_CHIP_SELECT, DM_EN);
-- 
2.27.0.rc0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
