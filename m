Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F95C18B99F
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Mar 2020 15:42:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1HDKcKJI2enucYRaUG9/DEmW7s7t/a9jDFKOLTaSSRc=; b=oP/
	pD+nbwbqk+8DomkONu01FJwZMP+kYgfboLE93u5x6igklnvQ2b2ivasVvb0pz47qwv218A7FyLjuQ
	GlUUaxjGFewMBZchbRV6+pmNlAXMzBpLejN+otE55y9o2mYLw7/shkx/fi57LyrP/8SnCq6BG2vnR
	GxzOYOMZAZPOS0O2IhklNuBk2xUzcYWZItKyE644h1rBeug9JiaG1qhPDzBUZC9ozytTpn48LJIYw
	oEfoag94lYPV0G3JYyDZvQTlgZMnJytfbUTTSBuE308+dO+WdcGfHLxcyLGdZECNdLFI83cchlA5q
	cYF0AhCsVS3lxG69wIzpwM2MRanQZ0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwN0-0006Au-8E; Thu, 19 Mar 2020 14:42:02 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwMi-00061t-Gj
 for linux-mtd@lists.infradead.org; Thu, 19 Mar 2020 14:41:45 +0000
Received: by mail-qt1-x843.google.com with SMTP id l13so1946040qtv.10
 for <linux-mtd@lists.infradead.org>; Thu, 19 Mar 2020 07:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cartesi-io.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=E5eWvlecix4MT1MlnGPJSYJsFMWB7/Q+MC/f+n4aBT4=;
 b=qnK/wJjLsWIe3hkL0dWBd5/VZiBF+p2Td9BJdFCXtDqfbyq1VBn05kud3j1rNEy3pj
 Yb3y+1B7HeAQYpFAZrydcsNOJgdqtsZ/rp3JbcFK44erHnrxNbpRSzY3FBbSktrH6hjp
 cz+FtU9cx8h163O9/100cCkx38JwQE64AlJQNyddHf7Yk8/aXz3+iCYa1QetKEcPrBF8
 388HjmX91HqtGWiFXVVZU5cdcZHgboOciH/f3h70KDSZ9TrM5ooTpRQT4aXvE/4+0Psl
 YEpl1Pd87DCGNoRNx2yzb8Mj+I6X44EQ4KvD/jpPDXxfC4OSvFOuNaw62FIZyCr6NO58
 lfFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=E5eWvlecix4MT1MlnGPJSYJsFMWB7/Q+MC/f+n4aBT4=;
 b=NNLS5XheNHE03b2vGfk9efwmEXWVNHI6ddn92lAxqbZCX/v44D2WXgh+XKceCX0nkJ
 qbUfvFERWqKGGxetoi5/sDpvCJNPla6A+rWKL3sRH6OPwdksGTxvYEegI0eM+6zd6bUc
 6GWHWVWrqeJ3IHho0pNkPj991YY1dfcrRasCHefAt678erKtoRa048PO8D9UBegwd8+5
 h69dxefAFMnZu6jaUNv/hVhF0P2m5nPWxZdnQkLlEwjuRxMMmNfE3K/jO0TUNn1f8yrI
 Be9BnasBjpMPq8LZJQxBqf5+YHtqAG4ZVNBNMGq44lEHXnZAjjdHExxqJvg8YGHSS/XF
 xq5Q==
X-Gm-Message-State: ANhLgQ2lwHmrb7jOmWb4hSaZxdknJT2GatWgCvvc7K2kFjf9jFE3f6RV
 NeURmB4h3UKUTneX2G6uOjfU+67edwQ=
X-Google-Smtp-Source: ADFU+vv49Z1xdBg51A5LJ4+Vx44Gg+bFEVLtVFmS4BFXs0T4uxYRg+y+1RQvWaOAzEuzq4b7SVhTdQ==
X-Received: by 2002:ac8:1c72:: with SMTP id j47mr3352034qtk.377.1584628901522; 
 Thu, 19 Mar 2020 07:41:41 -0700 (PDT)
Received: from localhost.localdomain (191-45-75-85.user3p.veloxzone.com.br.
 [191.45.75.85])
 by smtp.gmail.com with ESMTPSA id l13sm1676371qtu.66.2020.03.19.07.41.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 07:41:41 -0700 (PDT)
From: Victor Fusco <victor@cartesi.io>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: physmap: Fix mtd device size
Date: Thu, 19 Mar 2020 14:41:29 +0000
Message-Id: <20200319144129.24849-1-victor@cartesi.io>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_074144_585402_E7B9037D 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Victor Fusco <victor@cartesi.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This patch fixes the mtd device size calculation when there is no gpio
defined. The previous size calculation could return values lower than
those defined on the 'reg' field of the Device Tree, rasing 'attempt to
access beyond end of device' errors during device access.

Signed-off-by: Victor Fusco <victor@cartesi.io>
---
 drivers/mtd/maps/physmap-core.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/maps/physmap-core.c b/drivers/mtd/maps/physmap-core.c
index 8f7f966fa9a7..27cc6ac01ea8 100644
--- a/drivers/mtd/maps/physmap-core.c
+++ b/drivers/mtd/maps/physmap-core.c
@@ -520,17 +520,19 @@ static int physmap_flash_probe(struct platform_device *dev)
 		if (!info->maps[i].phys)
 			info->maps[i].phys = res->start;
 
-		info->win_order = get_bitmask_order(resource_size(res)) - 1;
-		info->maps[i].size = BIT(info->win_order +
-					 (info->gpios ?
-					  info->gpios->ndescs : 0));
-
 		info->maps[i].map_priv_1 = (unsigned long)dev;
 
 		if (info->gpios) {
+			info->win_order = get_bitmask_order(resource_size(res)) - 1;
+			info->maps[i].size = BIT(info->win_order +
+					         info->gpios->ndescs);
+
 			err = physmap_addr_gpios_map_init(&info->maps[i]);
 			if (err)
 				goto err_out;
+		} else {
+			info->maps[i].size = resource_size(res);
+
 		}
 
 #ifdef CONFIG_MTD_COMPLEX_MAPPINGS

base-commit: 5076190daded2197f62fe92cf69674488be44175
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
