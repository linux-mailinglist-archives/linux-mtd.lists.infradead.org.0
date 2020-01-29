Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7891814D0B6
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Jan 2020 19:50:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhNSgPp2KuUaTaU6WY6Y+9RMUcbrDCyeVBCVr7v9nLY=; b=JrxDAUqFxjaCvG
	skFs228Xi54KqnAmrAtJIL9/dn2UJkeX8BJm5HI5sZjZpc0ATzXKs3HAjO3xN9cIxMQTejDoomWLF
	1XA5jAHpBu8q3d30E4KGFxqX2nb+lMwjU9zvk2p70lMeUHYtcAtf6JBFLJXUOXi+T3uvMpuA6H8Na
	tdL6PSiBlUQGM6Y/C8SaBBn8+QDlqIxRZ3c3CfK984Sd2y/vYLtV5MkH4cJCl1yp665zky82GJ63s
	9kcWyioOsJoZzukXLOvwjY6SEgtTJG3z1ay+Md+lQDaRhYeiLzY9Np0qY5Tly2W7Enht+6C6IHvjY
	tbuc3HH+jswi2nk1RVxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwsQO-0003Yx-Iz; Wed, 29 Jan 2020 18:50:52 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwsQ6-0003Po-HL
 for linux-mtd@lists.infradead.org; Wed, 29 Jan 2020 18:50:35 +0000
Received: by mail-wr1-x443.google.com with SMTP id z3so739572wru.3
 for <linux-mtd@lists.infradead.org>; Wed, 29 Jan 2020 10:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fishpost-de.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r2Q7bSD10UJy0vvol/+M5IY6X11NebD69sKF5QidAi4=;
 b=H4NdcjN+uvckcZhXghGKYI2oTeryH/rMilWPF4cyNb6ojV8dvRPs/v+nqc0CENPNct
 phReGgjX3wjE+K4Zbmnmz9telsDcmk7tEYArxLql6gypE0YCUha22AcBVA5Quq8bsrq7
 4JLAgQ5zBGhYIGGioSSHODYFsIVOe3B6wLss/dsvZznwgxRYBfWOjV1WSfH3+XoSh1lV
 AhP25AgrixZDUItFPcrafBwgGyFCSuC0It8GazeV4Zu5u/PbHydpoNoms6tIZx9hibHa
 KAQbiYuemFuvL02fkM3cAi/NgWO0n6MfTf2KOWGIzxUPQuDz53W6N9KVGX/xsaX4hc8e
 IztQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r2Q7bSD10UJy0vvol/+M5IY6X11NebD69sKF5QidAi4=;
 b=Q0uwL++eGeXRSJKz9ze/3pSizpdyK5A/lC4u7M4mS/f4Xmxc6wGxovhfm+3K2oJzha
 ycp116wsQXXeuD2j4lV5fWrHeaSPjosho/u6ncrBBAeUxb53XOkVv7ggqhyYKn8yAU21
 LWGoWgkjqpnON15Y9hRlLQpQFGPPIbJIPCg5Zr/SC4hPLLz3A6zfU553dhozKiAOkVeT
 0VLsOJ1PUArRpw4pokqUy8ZqsCLr0ktcsXXhHzsydahJjG9UilL0BLkKU2/4S7pHY1SS
 JwtV9tomJqRIBIHnX8hi2MBgLUD3yD7bYVbnhQY2juqYI3E936EDGBKUNnvkdtm97NCJ
 JcnQ==
X-Gm-Message-State: APjAAAWFHIOmOeKkUZIX7hi9RJvIPcyAuu1/XqslAIHAVcf3ngiipf6U
 EYtWXReKKtQIFAMy8J5W1+MD7Npb5Dp2sw==
X-Google-Smtp-Source: APXvYqwp8vISCEZT9ojRgI+qGBq53Q2754mysycBog052jhCiK7fDlNCGLDtrfOAftgSON8s2SH/3w==
X-Received: by 2002:adf:f0cb:: with SMTP id x11mr179452wro.421.1580323829175; 
 Wed, 29 Jan 2020 10:50:29 -0800 (PST)
Received: from thinkbage.fritz.box
 (dslb-084-059-208-128.084.059.pools.vodafone-ip.de. [84.59.208.128])
 by smtp.gmail.com with ESMTPSA id c9sm3909229wrq.44.2020.01.29.10.50.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 10:50:28 -0800 (PST)
From: Bastian Germann <bastiangermann@fishpost.de>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] libubi: remove private kernel header from includes
Date: Wed, 29 Jan 2020 19:50:13 +0100
Message-Id: <20200129185013.21752-2-bastiangermann@fishpost.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200129185013.21752-1-bastiangermann@fishpost.de>
References: <20200129185013.21752-1-bastiangermann@fishpost.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_105034_576697_F4B0CFCD 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

libubi.h includes ubi-media.h which was made private in the kernel a
long time ago. There are users of libubi.h, e.g. swupdate, which have to
have ubi-media.h available at build time with this inclusion.

However, libubi.h uses only one symbol from ubi-media.h. Define that symbol
in the header to enable using libubi.h without installing ubi-media.h.

Make up for the transitive symbol use in ubiformat.c by including ubi-media.h.

Signed-off-by: Bastian Germann <bastiangermann@fishpost.de>
---
 include/libubi.h      | 4 +++-
 ubi-utils/ubiformat.c | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/libubi.h b/include/libubi.h
index 46596a3..46c732a 100644
--- a/include/libubi.h
+++ b/include/libubi.h
@@ -26,7 +26,6 @@
 #include <ctype.h>
 #include <stdint.h>
 #include <mtd/ubi-user.h>
-#include <mtd/ubi-media.h>
 
 #ifdef __cplusplus
 extern "C" {
@@ -38,6 +37,9 @@ extern "C" {
 /* Maximum physical eraseblock size in bytes */
 #define UBI_MAX_PEB_SZ (2*1024*1024)
 
+/* The maximum volume name length (from Linux's ubi-media.h) */
+#define UBI_VOL_NAME_MAX 127
+
 /* UBI library descriptor */
 typedef void * libubi_t;
 
diff --git a/ubi-utils/ubiformat.c b/ubi-utils/ubiformat.c
index be40e52..d1b12e4 100644
--- a/ubi-utils/ubiformat.c
+++ b/ubi-utils/ubiformat.c
@@ -38,6 +38,7 @@
 #include <getopt.h>
 #include <fcntl.h>
 
+#include <mtd/ubi-media.h>
 #include <libubi.h>
 #include <libmtd.h>
 #include <libscan.h>
-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
