Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D172F10F6E8
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Dec 2019 06:20:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tN0xxtixOLXHS2x1GlUndC0tcS7N1b2mI+8ydERXep8=; b=Vi56xo8TLNap6/5Hr+sTLuqL+U
	9PfC5m4w+y/Vow6M3Lhxgc9GTqClknzyGLRc5blrfz6hMZ5vvqNPPd7amRAJ+gYx4RumhO0rfR+ab
	ZYn8xAPMAtDn883w42m5l0fz1BekONezXvxjbi6S9k92tH/lB8toQK5DT4tuyBR43pA28DA/f3Vy2
	kkgJjaCDbRdWWZgGkhrV8rbR4gxUZ1/LE30DiTV0ICtMqg9BgBQn9tHaAg2c0ERagBXN2wH/cPZM9
	5y06Vo8RwJc5fd4l4ONlekXg3/s/od6zl8kqYntKvSGfqtMjXsDiRbL1pLnkW5HxqRuP8oFlvww8R
	i1tBpS4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic0bu-0003Lu-C7; Tue, 03 Dec 2019 05:20:30 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic0bf-0003Hw-8l
 for linux-mtd@lists.infradead.org; Tue, 03 Dec 2019 05:20:16 +0000
Received: by mail-pl1-x642.google.com with SMTP id o8so1210374pls.5
 for <linux-mtd@lists.infradead.org>; Mon, 02 Dec 2019 21:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Vw3rC7pffNNcciKNW8GALTh1NKcZNgUJHxJWIV46+IQ=;
 b=mbTUHEH3Fa7gVHQuyVM58bhc1ZNPyRBhs55wGdEUiozfLFQt7oHsIlRs6OmMbQqk9X
 NVUC20mjFsBXTcFFjt8zkuIz+yoaBfE5ZnDwp/Suspwc56hlLASXeWPasVlSeMabtor9
 VI0kB3d552VGzroKQ5tMWSRZQPP8VpUB7CmiUzWY9w66dit4MPZitKgI1GqWNII5LjRw
 LHkxHknvZaO8zBaWNUHohYL5NjnAZVnL+ZWebN2e5lBttB7h2+cPmot5OKPdtbdz/1l4
 tV48n55tuHqaHc9r8Q6nAAjoHSCZCC6Fe2xE5eXTqgl4e5ywCKxp/P2Ro/G38CI1MPM8
 iGpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Vw3rC7pffNNcciKNW8GALTh1NKcZNgUJHxJWIV46+IQ=;
 b=YNOp2vYFjq0YF9Yhfee7DOcXGhYmYdGnOJqbdUEkeWxnn0yJbDeMyAfpPh7dtsHw8+
 n25PkeZfczERzLlPF/oia2UY2qZiebCcOLgRgfGG5OTKHVpqG7Ajr96FlPP/qVgzBFur
 23/VSkT0z80eFxpLVH3tRthON4mlkZQgilO8ByLNEl7ePA8+o9oP4t5UpA5/qkdGs6xg
 8fs+E1ufPpLFOgMxKWX9n0ZnsD+yCDjcmfGQZ8LEWpWUsYJrGj3f/4pwhkz0dDYWEHam
 KN2Dvg10rV0jXzN4vqFg/BczCMrOnhjew4bIlaihKRJ1BP5YK2mU6shdD9X9CglqL2Q1
 U1pw==
X-Gm-Message-State: APjAAAXDd+BBcfvGSJYH13cr6I8d17tDWmzHmiA7ji45y3qA1ElDAN+1
 PQKcZtNtCYcDxiWX+tzqNHM=
X-Google-Smtp-Source: APXvYqyIirVUziL4a56vsdUKU6cH4t16OUJcrgZCUwEaSPK+fI1rSUG4qhtuG/Zzf1XKgURDz3ytrw==
X-Received: by 2002:a17:902:8a8a:: with SMTP id
 p10mr3197997plo.300.1575350414514; 
 Mon, 02 Dec 2019 21:20:14 -0800 (PST)
Received: from deepa-ubuntu.lan (c-98-234-52-230.hsd1.ca.comcast.net.
 [98.234.52.230])
 by smtp.gmail.com with ESMTPSA id h9sm1451915pgk.84.2019.12.02.21.20.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 21:20:14 -0800 (PST)
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: viro@zeniv.linux.org.uk,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/6] fs: ubifs: Eliminate timespec64_trunc() usage
Date: Mon,  2 Dec 2019 21:19:43 -0800
Message-Id: <20191203051945.9440-5-deepa.kernel@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191203051945.9440-1-deepa.kernel@gmail.com>
References: <20191203051945.9440-1-deepa.kernel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_212015_332962_F70BA40C 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deepa.kernel[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-fsdevel@vger.kernel.org, richard@nod.at,
 linux-mtd@lists.infradead.org, arnd@arndb.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

DEFAULT_TIME_GRAN is seconds granularity. We can
just drop the nsec while creating the default root node.
Delete the unneeded call to timespec64_trunc().

Also update the ktime_get_* api to match the one used in
current_time(). This allows for the timestamps to be updated
by using the same ktime_get_* api always.

Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
Cc: richard@nod.at
Cc: linux-mtd@lists.infradead.org
---
 fs/ubifs/sb.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/fs/ubifs/sb.c b/fs/ubifs/sb.c
index 2b7c04bf8983..93d550be4c11 100644
--- a/fs/ubifs/sb.c
+++ b/fs/ubifs/sb.c
@@ -84,7 +84,6 @@ static int create_default_filesystem(struct ubifs_info *c)
 	int idx_node_size;
 	long long tmp64, main_bytes;
 	__le64 tmp_le64;
-	__le32 tmp_le32;
 	struct timespec64 ts;
 	u8 hash[UBIFS_HASH_ARR_SZ];
 	u8 hash_lpt[UBIFS_HASH_ARR_SZ];
@@ -291,16 +290,14 @@ static int create_default_filesystem(struct ubifs_info *c)
 	ino->creat_sqnum = cpu_to_le64(++c->max_sqnum);
 	ino->nlink = cpu_to_le32(2);
 
-	ktime_get_real_ts64(&ts);
-	ts = timespec64_trunc(ts, DEFAULT_TIME_GRAN);
+	ktime_get_coarse_real_ts64(&ts);
 	tmp_le64 = cpu_to_le64(ts.tv_sec);
 	ino->atime_sec   = tmp_le64;
 	ino->ctime_sec   = tmp_le64;
 	ino->mtime_sec   = tmp_le64;
-	tmp_le32 = cpu_to_le32(ts.tv_nsec);
-	ino->atime_nsec  = tmp_le32;
-	ino->ctime_nsec  = tmp_le32;
-	ino->mtime_nsec  = tmp_le32;
+	ino->atime_nsec  = 0;
+	ino->ctime_nsec  = 0;
+	ino->mtime_nsec  = 0;
 	ino->mode = cpu_to_le32(S_IFDIR | S_IRUGO | S_IWUSR | S_IXUGO);
 	ino->size = cpu_to_le64(UBIFS_INO_NODE_SZ);
 
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
