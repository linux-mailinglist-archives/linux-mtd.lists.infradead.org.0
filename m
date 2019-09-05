Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59304AA8D5
	for <lists+linux-mtd@lfdr.de>; Thu,  5 Sep 2019 18:21:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c9YfMFVwkSHacdbraO+W6bZn/29XWzTTkou1sjygHYs=; b=reClzrPgOhrc/V+BP0eMfWir3p
	46stCKGHlYMl42G2l1M3IIUVhiCuYcPMNcUd6t5NoGuCLpKPSVonI0TaSmCS2MFDsQ0D2LYpymwdP
	sJzUGm+yai5S5/lrXTsaMY/G1gdkaqyrmM26fAPknRpSwGrs966BSMn6EYQNDa/egWN4tXFk6FQ9S
	l0cOU4KzOnMq3Z+Uv5Bx9l/fBdQ+u21doaZHlzJI60M7NvjdeFFY2Xm1W58XpggDBEnPn2ACeOZ6z
	GD6Q1X4cVwF7q2ZZ5Sr5Ddqg8lTIf7a6YJl2OyLeSXR80fsbapDr8xnUMWmeJOHkSsOpfmH3AewCm
	PGA9IeGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5uWB-0006em-5Y; Thu, 05 Sep 2019 16:21:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5uSl-0001IU-OM
 for linux-mtd@lists.infradead.org; Thu, 05 Sep 2019 16:18:25 +0000
Received: by mail-pg1-x541.google.com with SMTP id p3so1672117pgb.9
 for <linux-mtd@lists.infradead.org>; Thu, 05 Sep 2019 09:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KBEjaWO3Fe2PBzPolu3WMn8NTAUiCD8HB53ny3BQ6OI=;
 b=plmQ8J8hM7P284lC2RlFaPT3UU/0f+9eU9WDxSbYt7bW8T1tbLLfVU8NYjquQ7LNE4
 KnLS0x5VNgK3M6FqfPB2sD3wKmxbXx14Gobu/OwtOpbYXU/IkghbfCOdM1Mm7JXUh+Re
 OGs1MQyDI9D6huwbn+67NCfvpkEUEztWZnuG+dI47z8mROznT1jdRnoaXcW7sxDawxXv
 Prljpk4ow91RFRvrdX2X7chbuX2fROHQ8DJAAJyHeGbf0V0cbS24NfqzYiaVo4TwwtW2
 kTkXUjGOt5qiIylni0ye87NDZ87V7CWg9z4DmQC6OdJUkaVDj8vy3LiXlIYHBzvmnKx/
 lkjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KBEjaWO3Fe2PBzPolu3WMn8NTAUiCD8HB53ny3BQ6OI=;
 b=B9hkhOZcsztCm3bXgpyLewlPx9AhQXAd0p/fKrcrq3wC7O7LyhuKcXf2BITAgi57vu
 tdU/Wk+aCMRePFvHTC1gtP8xYjTX5qzkagH6v6BjDR+whYivYS3bsr2v2XhjtVugh2bY
 4l67Il46PKJGLz42dS1zQmUeGoEqqI19K5Z9Ia0p+/XRHfEYqNEdJEfeefhvOlvsrEwv
 LFaGY7UwKwcLXWMgA5ttFEo8uKPesEsvwO5G3A+o0NjEKdTUwbruVxOLM6AwWS/aRgrU
 52cZnChGKZjwihF6MKuY/Bj9nFuhXFXXLpbv2fk4NjHcvURdpiYbXNRpQYggjEALpCP0
 zMVw==
X-Gm-Message-State: APjAAAUnvQhczFVE2S4NhJL+Pj453ul8m5o1c18t67QYswQvqHihoJWv
 YZvAPCQk/8w2TSK4gCKMqXvOIQ==
X-Google-Smtp-Source: APXvYqzidpJMrA4iY307wddu1S9Lti1cpjYGyLo/7tWJzFGVVSA/c4srK97ZZ5J4SE3dFJjAXsP6BQ==
X-Received: by 2002:a63:89c2:: with SMTP id v185mr3909722pgd.241.1567700303006; 
 Thu, 05 Sep 2019 09:18:23 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m129sm6324005pga.39.2019.09.05.09.18.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 09:18:22 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [BACKPORT 4.14.y 18/18] cpufreq: ti-cpufreq: add missing of_node_put()
Date: Thu,  5 Sep 2019 10:17:59 -0600
Message-Id: <20190905161759.28036-19-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190905161759.28036-1-mathieu.poirier@linaro.org>
References: <20190905161759.28036-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_091823_806011_D69AA4EC 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pm@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-omap@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Zumeng Chen <zumeng.chen@gmail.com>

commit 248aefdcc3a7e0cfbd014946b4dead63e750e71b upstream

call of_node_put to release the refcount of np.

Signed-off-by: Zumeng Chen <zumeng.chen@gmail.com>
Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/cpufreq/ti-cpufreq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/cpufreq/ti-cpufreq.c b/drivers/cpufreq/ti-cpufreq.c
index 4bf47de6101f..cadc324bedb4 100644
--- a/drivers/cpufreq/ti-cpufreq.c
+++ b/drivers/cpufreq/ti-cpufreq.c
@@ -205,6 +205,7 @@ static int ti_cpufreq_init(void)
 
 	np = of_find_node_by_path("/");
 	match = of_match_node(ti_cpufreq_of_match, np);
+	of_node_put(np);
 	if (!match)
 		return -ENODEV;
 
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
