Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 253E414D0B5
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Jan 2020 19:50:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p8hk3lbwGJHV/S0rziW7wP8AudtNRWA5MZyASmMm4LE=; b=I0eUk4Qz2fOPrk
	2isS9eXoefYaWP55Wly8+xM/v4Li077WkGlEpdEp1c01FnyGihUUFNLG2dGkUwMc0UPm06vYo/vPB
	Ba7IlWXplrl5nco9aUzMiknnIh2UBtRm6UINsLrrL7EIUYmvGTV23lebsdCXz9+QtpgFfxS+uzzun
	dQ5YGrDHJd/0HO2XrT2tHGIgCahPZHFipQiSKNBh7BcVH72JCXX0Mi7D00iPeZSfZdqEJioqpI2ZG
	DIOyDcx6T0lj3AIuQggSgzNeJ2irW5I2+Fb1gR5G88FCygRAibk8NHDNWMIBxh91+kjrz3RD5voXi
	CJSmmnZ+ejhStfSWWhTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwsQE-0003QZ-OW; Wed, 29 Jan 2020 18:50:42 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwsQ5-0003Pn-6Z
 for linux-mtd@lists.infradead.org; Wed, 29 Jan 2020 18:50:34 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so720665wrh.5
 for <linux-mtd@lists.infradead.org>; Wed, 29 Jan 2020 10:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fishpost-de.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pgT60YPjhpm/5ImmOU5ydiNvfAZlNUvB9Bdk4kF5yvo=;
 b=OIW8uGDhXKpnjNknsdV54NEhJrgCP32k3zwngDJBEJ66+/x43NoCK2NhDiBSwaiKyH
 EDUDTSputk3JCy8sxjeunA9tBAEyL+1z/tucW0A/31iwjpToqAC8ABbwx/RvpGifKHOJ
 XCh94TndGH4auslo4e3DtXKf2vaga6clHI9vGKqWye270asbOONG6nXJp9yvmmOthjxC
 7/pEHf3RzmQ5oP71KORAKvVG1FZSuHLgPsg1MWRbVG+Rqoj8XDah9KPOMqzyk7GTMmDl
 Gom5enW9ZAJ9SptOIlPy84xgD7+jDobVhVErebo4vBEW9z1b/Kj4EuWESK8kM4CwUn34
 zQlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pgT60YPjhpm/5ImmOU5ydiNvfAZlNUvB9Bdk4kF5yvo=;
 b=pG0zqcsBYjTtKF2tUSfEooF9wpc94d1Y+FCEsYJr0oP8zstaGQ/mP3AbC++vAwZjCG
 Z7DT3C2aTkUMXVmOT2GnZYyCxcalCEc9Nw8/s+6dr0TBC4W6UQZljDbszgrMGuftYbqk
 N1ISpjGYjsRfmB5CRYPMa/fuiPteONuRCQJqRvHfBmVmWv2QqKH+UFC8s7nmSmDas6eR
 bZVAcClhIYcyIzKhDmv7YR2IrNhojPndUPvrNm2BdZ5aTspYuwDZIUHy1rUTrmMYOveI
 xp6pNu3P77sYNIrJ19ipbR5gyB7pbKWhQtKHKyAlLxhdoQZYCGqASQ7x0XI4Fc2Q9I5B
 ynVg==
X-Gm-Message-State: APjAAAUxneDPjr86w4dgLQ2F6PLQMgNW6srqikDvYsAbkxRS/KGfp7fC
 sIiQZDKY7KZ7y2Kg4G2L7SeIh3D26gi49A==
X-Google-Smtp-Source: APXvYqy9LpSPIINkJZFGQKIQWS/brLyBN7KppRSGcKdUuO0iYOrE3CBb9QgRCQvDe0hHFlUsWzEYDQ==
X-Received: by 2002:adf:f58a:: with SMTP id f10mr224249wro.105.1580323828309; 
 Wed, 29 Jan 2020 10:50:28 -0800 (PST)
Received: from thinkbage.fritz.box
 (dslb-084-059-208-128.084.059.pools.vodafone-ip.de. [84.59.208.128])
 by smtp.gmail.com with ESMTPSA id c9sm3909229wrq.44.2020.01.29.10.50.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 10:50:27 -0800 (PST)
From: Bastian Germann <bastiangermann@fishpost.de>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] libubigen: remove unnecessary include
Date: Wed, 29 Jan 2020 19:50:12 +0100
Message-Id: <20200129185013.21752-1-bastiangermann@fishpost.de>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_105033_380140_535C189E 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Bastian Germann <bastiangermann@fishpost.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

libubigen.h does not use any symbol from mtd/ubi-media.h,
so remove it from includes.

Signed-off-by: Bastian Germann <bastiangermann@fishpost.de>
---
 include/libubigen.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/libubigen.h b/include/libubigen.h
index c25ac20..48d2fad 100644
--- a/include/libubigen.h
+++ b/include/libubigen.h
@@ -26,7 +26,6 @@
 #define __LIBUBIGEN_H__
 
 #include <stdint.h>
-#include <mtd/ubi-media.h>
 
 #ifdef __cplusplus
 extern "C" {
-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
