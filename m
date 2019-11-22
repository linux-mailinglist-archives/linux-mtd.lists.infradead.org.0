Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C1410614D
	for <lists+linux-mtd@lfdr.de>; Fri, 22 Nov 2019 06:55:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0iUBoUNG3ta/hKrqUTYETY8Doi/SiTCRXfKuxBgmXM=; b=Kn/Sy8HuoTZq6K
	RfVNtmXsjLAbN+RC+dj8Y5Q+7GzIzTYoPU26ssxTdnOMRLmvkO2xwoNarx8g6xubdXLjklSY74I6F
	itV6raO1qT0qdkN75tK9t6MjqAfw4DTlxajdL9kG9LiU/OzUqZpw4eYgei519sfaVolIZOOviIDl/
	D9vtjbn4N4sIz0TuTJCvFv2ME2wFJ8OYbxfnT70Tz5FAMBEl4LdKkLvW1rhNcDytJLKYqHupJi0Rg
	rgrq5oftjVE3kdAEO8BIF4uImUYQDMlXQ8zR4SmeJc0oYaFKnTDmf0mc00xz/6b77SJfRGlaPTSjd
	RhIj47USRQ7twPnGT8UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1ut-0007sp-AJ; Fri, 22 Nov 2019 05:55:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1pZ-0001NY-KO
 for linux-mtd@lists.infradead.org; Fri, 22 Nov 2019 05:50:13 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5E9020708;
 Fri, 22 Nov 2019 05:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574401808;
 bh=ABAw+0UN3/JtufQLU7PxhHLTB+FOGf2VHn3pTd88+wM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ODxV6DLoaswtK3qc1dOmYn2xrUE4GumOaqzrzH52rouyEBKFu0C2vV6TXxwka2tGa
 pdm8gf1ZrzsHS5T0zvL/wKws5mxswjf9UFM2zfvUXuwbKAMmonPfFo47EcQthBzZ4Y
 GVNBR5l1iR7wS/hJXEuPkDbmgH70cWFEmdNNGAlU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 053/219] ubifs: Fix default compression selection
 in ubifs
Date: Fri, 22 Nov 2019 00:46:25 -0500
Message-Id: <20191122054911.1750-46-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122054911.1750-1-sashal@kernel.org>
References: <20191122054911.1750-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_215009_745177_E2230989 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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
Cc: Sasha Levin <sashal@kernel.org>, Gabor Juhos <juhosg@openwrt.org>,
 linux-mtd@lists.infradead.org, Richard Weinberger <richard@nod.at>,
 Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Gabor Juhos <juhosg@openwrt.org>

[ Upstream commit d62e98ed1efcaa94caa004f622944afdce5f1c3c ]

When ubifs is build without the LZO compressor and no compressor is
given the creation of the default file system will fail. before
selection the LZO compressor check if it is present and if not fall back
to the zlib or none.

Signed-off-by: Gabor Juhos <juhosg@openwrt.org>
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/ubifs/sb.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/fs/ubifs/sb.c b/fs/ubifs/sb.c
index bf17f58908ff9..11dc3977fb64f 100644
--- a/fs/ubifs/sb.c
+++ b/fs/ubifs/sb.c
@@ -63,6 +63,17 @@
 /* Default time granularity in nanoseconds */
 #define DEFAULT_TIME_GRAN 1000000000
 
+static int get_default_compressor(struct ubifs_info *c)
+{
+	if (ubifs_compr_present(c, UBIFS_COMPR_LZO))
+		return UBIFS_COMPR_LZO;
+
+	if (ubifs_compr_present(c, UBIFS_COMPR_ZLIB))
+		return UBIFS_COMPR_ZLIB;
+
+	return UBIFS_COMPR_NONE;
+}
+
 /**
  * create_default_filesystem - format empty UBI volume.
  * @c: UBIFS file-system description object
@@ -186,7 +197,7 @@ static int create_default_filesystem(struct ubifs_info *c)
 	if (c->mount_opts.override_compr)
 		sup->default_compr = cpu_to_le16(c->mount_opts.compr_type);
 	else
-		sup->default_compr = cpu_to_le16(UBIFS_COMPR_LZO);
+		sup->default_compr = cpu_to_le16(get_default_compressor(c));
 
 	generate_random_uuid(sup->uuid);
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
