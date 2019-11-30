Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9A210DCA8
	for <lists+linux-mtd@lfdr.de>; Sat, 30 Nov 2019 06:31:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZByTmXnaQV81siVxAo7gAd4iR4T7fLcgb/G6aZ6/IvU=; b=W7X
	+VAXmqerLr1ZB1WbkomAh/eACMnPYKO2Du3U9OyHR2qNJpyddzobCx6+i1cvc0LFSrCj+APvCf9Qn
	p1WY1rv8UJzltNHSvoPWS3Qcd0+w85Jr756LLf7LDeMKtOq+c6LzHWrJL2A3NFQz3jQ0/LjwO3rGf
	tY2F083fcozMNlIiGCeCgpu/0vkKujT7W3GOZuDSEDLUyx++UY/Sxu6/AdtX/5OolenslzdyYhga6
	1qkm+77rkmYxbsu9yMtynZawD7ciXYWN5GQetBGXkWAIeFnTgo5TjjV80rcgkJKjwYFNv5BedIrUB
	CXfh2VayZMrb1s3bSr+g6gZ5X9o5cuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iavLj-0001Sb-2Z; Sat, 30 Nov 2019 05:31:19 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iavLV-0001S8-Oi
 for linux-mtd@lists.infradead.org; Sat, 30 Nov 2019 05:31:08 +0000
Received: by mail-pj1-x1042.google.com with SMTP id g4so1475766pjs.10
 for <linux-mtd@lists.infradead.org>; Fri, 29 Nov 2019 21:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=lYWP7zytKnpdVNeZVRSceMLc6JN66P/+OOZqYOKvOUw=;
 b=igLUlxuCC+k/SSH2NPd7tiC4wvtspNZoNwamKYlkc0m7L0n//FM+My6BZ6azDP7/SK
 iRm0oAwcLTi6MrNA4QeyFD+KnJht4TLd1zL8f8fiyzwHF/LDKepPK1eaihuGZMIjjQ8F
 Yr2+F95dejxJI0Qt39U7G/iHawD9aTbeuikL0WSb0DF4ojuhWYPlRSXIY/YrjuFusKad
 bAHFi+9BOdJSYI3SiAArRmNyWUY/DQSdm07w+iw8tj2IW1C9nP9q6ss5JdFDGU6dqt6E
 ZXXK7h54u1K8ly10CgjqV14eixvf9cIaot0Yf3W8d5J6drm6r6pacukcQFnpQ3BNZCda
 LhxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=lYWP7zytKnpdVNeZVRSceMLc6JN66P/+OOZqYOKvOUw=;
 b=MJEcAWD2dPXbmSTXv5H7lGWjfCuzTH4AYUTrxL+eto4Z4K8yYuJYw8opZKeeiCl9gL
 aCkU3ftbc3mEKbOWrzoLoXWk9h2O0ZhzbBqn2PTuDYpBIsQV+tJekMt9XgKFzkrjMEC3
 Ij5zdVRwzHPB7CC3I1nGS9bpSigb/M0nI+63JKCObpEMr3Qyzkgo/IPYaYztEAiNMtC3
 3TuSlYm9etVu9mmDHgiLAfV4O1iXfHUGF/fcjIxHgMmORAf7Ols87eK2xPse75QpF2oI
 XyEouOqhebvkVjzAQxmWfr8hcucJQR4plvcfWE50BIu+0UUqNGtNTI//etFD4KGrQcAB
 u/iQ==
X-Gm-Message-State: APjAAAWxN3XDxc9z/mX9VEoWkPRTJWLaaRPj4UYrJIkoH8LLWbgg6D4V
 TvZzssjbdgYXIECNOJTDhWQ=
X-Google-Smtp-Source: APXvYqy33aPRjft3yCKru3Uh3iHw5wJaGEdVutWBqmYrn3a9UjFbYTyaOCnYWxymdH8kO2GSbdbUNw==
X-Received: by 2002:a17:90b:4391:: with SMTP id
 in17mr5280823pjb.33.1575091863374; 
 Fri, 29 Nov 2019 21:31:03 -0800 (PST)
Received: from deepa-ubuntu.lan (c-98-234-52-230.hsd1.ca.comcast.net.
 [98.234.52.230])
 by smtp.gmail.com with ESMTPSA id a13sm26131734pfi.187.2019.11.29.21.31.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 21:31:02 -0800 (PST)
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: viro@zeniv.linux.org.uk,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/7] Delete timespec64_trunc()
Date: Fri, 29 Nov 2019 21:30:23 -0800
Message-Id: <20191130053030.7868-1-deepa.kernel@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_213105_826788_F3073EF2 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deepa.kernel[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-cifs@vger.kernel.org, arnd@arndb.de, richard@nod.at,
 jlayton@kernel.org, linux-mtd@lists.infradead.org, hirofumi@mail.parknet.co.jp,
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 stfrench@microsoft.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This series aims at deleting timespec64_trunc().
There is a new api: timestamp_truncate() that is the
replacement api. The api additionally does a limits
check on the filesystem timestamps.

The suggestion to open code some of the truncate logic
came from Al Viro. And, this does make the code in some
filesystems easy to follow.

The series also does some update_time() cleanup as
suggested by Al Viro.

Deepa Dinamani (7):
  fs: fat: Eliminate timespec64_trunc() usage
  fs: cifs: Fix atime update check vs mtime
  fs: cifs: Delete usage of timespec64_trunc
  fs: ceph: Delete timespec64_trunc() usage
  fs: ubifs: Eliminate timespec64_trunc() usage
  fs: Delete timespec64_trunc()
  fs: Do not overload update_time

 fs/ceph/mds_client.c |  3 +--
 fs/cifs/inode.c      | 15 ++++++++-------
 fs/fat/misc.c        | 10 +++++++++-
 fs/inode.c           | 30 +++---------------------------
 fs/ubifs/sb.c        | 11 ++++-------
 include/linux/fs.h   |  1 -
 6 files changed, 25 insertions(+), 45 deletions(-)

-- 
2.17.1

Cc: hirofumi@mail.parknet.co.jp
Cc: jlayton@kernel.org
Cc: richard@nod.at
Cc: stfrench@microsoft.com
Cc: ceph-devel@vger.kernel.org
Cc: linux-cifs@vger.kernel.org
Cc: linux-mtd@lists.infradead.org

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
