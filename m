Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0653F10616A
	for <lists+linux-mtd@lfdr.de>; Fri, 22 Nov 2019 06:56:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A31xkz7b9N1NvOSxUWVDgMBF/29HucGteHY9PjRheLE=; b=AEoNtrozzjWj4O
	p5lmgemQLGqorRnxcPss7KLat3Y0xlaOg6igwK/elkIlRkAaM7rDPiyCK/k2xwXiqiTm3hDDnes+h
	rBaelHNHx+R7yAcKQ8k/3yRyVQCCqUv7RzbUuq/uBU0cbu1Fj1mAyJzJ82GR1Nqi2h5qEgejvgWOt
	iNJMrcIjHGheqJu1hPWSJupNIXobrA/NbKH7QVFXjeivjy4G6MfUKoLofyZLd817v0C1IGoeH9Gkw
	R3l1ITtdW340CfpZi9aJ5g7Q1n06I9qZKp0jMzSRRibp9wMVeF8+riEJXLx3M1v369Ma7B0wKqaof
	xBlh/U1r2Tkr6+3VQQhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1vy-0000CX-Qt; Fri, 22 Nov 2019 05:56:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1pc-0001ch-EE
 for linux-mtd@lists.infradead.org; Fri, 22 Nov 2019 05:50:14 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 493432070E;
 Fri, 22 Nov 2019 05:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574401811;
 bh=ox+jk7ejkHNusLkSVH1D1TnF4JEMqPUC8DpY3z5P1do=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=voc0qooyg2b5Afn8/GyFSGUtV8v1KCaT3bXxa0B0m4G3D6bAhWaWI/HJ5YS7YHfUj
 eFCGsSLr+6PSwJhFko9zojAibDwEVoM5n1G4Whi8Yeu1tH8Wevbj9BvMBpTn/iHuuO
 NROzJmy2eWtrAmk7j8y2RhcW7hGA5mkIo+OfHJqo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 055/219] ubi: Do not drop UBI device reference
 before using
Date: Fri, 22 Nov 2019 00:46:27 -0500
Message-Id: <20191122054911.1750-48-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122054911.1750-1-sashal@kernel.org>
References: <20191122054911.1750-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_215012_611646_1C264AA5 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Boris Brezillon <boris.brezillon@bootlin.com>, Pan Bian <bianpan2016@163.com>,
 linux-mtd@lists.infradead.org, Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Pan Bian <bianpan2016@163.com>

[ Upstream commit e542087701f09418702673631a908429feb3eae0 ]

The UBI device reference is dropped but then the device is used as a
parameter of ubi_err. The bug is introduced in changing ubi_err's
behavior. The old ubi_err does not require a UBI device as its first
parameter, but the new one does.

Fixes: 32608703310 ("UBI: Extend UBI layer debug/messaging capabilities")
Signed-off-by: Pan Bian <bianpan2016@163.com>
Reviewed-by: Boris Brezillon <boris.brezillon@bootlin.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mtd/ubi/kapi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/kapi.c b/drivers/mtd/ubi/kapi.c
index e9e9ecbcedcc3..0b8f0c46268da 100644
--- a/drivers/mtd/ubi/kapi.c
+++ b/drivers/mtd/ubi/kapi.c
@@ -227,9 +227,9 @@ struct ubi_volume_desc *ubi_open_volume(int ubi_num, int vol_id, int mode)
 out_free:
 	kfree(desc);
 out_put_ubi:
-	ubi_put_device(ubi);
 	ubi_err(ubi, "cannot open device %d, volume %d, error %d",
 		ubi_num, vol_id, err);
+	ubi_put_device(ubi);
 	return ERR_PTR(err);
 }
 EXPORT_SYMBOL_GPL(ubi_open_volume);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
