Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B80D116234C
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Feb 2020 10:22:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UBWzztCIsW1T5c8+PvGy6CAS5iavttkCV5ohZA44QgM=; b=F7CRsMK4actGLYmoVJik/qGuF
	UWu9HiTqwpr2yGoijtbejyYt6A908w9nV90K3vGBStRz0OZhT5GhXgxIqiYo5buo/crCvGfKINLSs
	E0qW30ubyt2cgKPmXyzWMce8St+jtV7tCerkon79d4741w7vzBE54zkF47jrRjMJbqnGXcDGL32HD
	fEZH8NyDo2RBYl7daTx2ilQfVfzRf77p7RxowQrGmv+0Asl+jyrjdappopnty/cm2cTHGiJew/6U3
	FDZA5GEwdZGuo1oc0A5/6lFVRBuQerb/Ph24BEprB3fQHq/1rkdxnUu6koBLod4nrvCZGDZs9/Qza
	8KfGjMpBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3z5X-0000fs-Hi; Tue, 18 Feb 2020 09:22:43 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3z5P-0000f5-Jm
 for linux-mtd@lists.infradead.org; Tue, 18 Feb 2020 09:22:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B448FACCE;
 Tue, 18 Feb 2020 09:22:32 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id BAE0D1E0CF7; Tue, 18 Feb 2020 10:22:31 +0100 (CET)
Date: Tue, 18 Feb 2020 10:22:31 +0100
From: Jan Kara <jack@suse.cz>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 1/8] quota: Allow to pass mount path to quotactl
Message-ID: <20200218092231.GG16121@quack2.suse.cz>
References: <20200124131323.23885-1-s.hauer@pengutronix.de>
 <20200124131323.23885-2-s.hauer@pengutronix.de>
 <20200127104518.GC19414@quack2.suse.cz>
 <20200128100631.zv7cn726twylcmb7@pengutronix.de>
 <20200129012929.GV23230@ZenIV.linux.org.uk>
 <20200204103523.tbxzptf4lkr474yi@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gKMricLos+KVdGMg"
Content-Disposition: inline
In-Reply-To: <20200204103523.tbxzptf4lkr474yi@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_012235_947891_2CE929A5 
X-CRM114-Status: GOOD (  31.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jan Kara <jack@suse.cz>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, Al Viro <viro@zeniv.linux.org.uk>,
 kernel@pengutronix.de, Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--gKMricLos+KVdGMg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I'm sorry for the late reply, I was busy with other things and I wasn't
quite sure how I'd like this to be handled :)

On Tue 04-02-20 11:35:23, Sascha Hauer wrote:
> On Wed, Jan 29, 2020 at 01:29:29AM +0000, Al Viro wrote:
> > On Tue, Jan 28, 2020 at 11:06:31AM +0100, Sascha Hauer wrote:
> > > Hi Jan,
> > 
> > > @@ -810,6 +811,36 @@ static struct super_block *quotactl_block(const char __user *special, int cmd)
> > >  #endif
> > >  }
> > >  
> > > +static struct super_block *quotactl_path(const char __user *special, int cmd,
> > > +					 struct path *path)
> > > +{
> > > +	struct super_block *sb;
> > > +	int ret;
> > > +
> > > +	ret = user_path_at(AT_FDCWD, special, LOOKUP_FOLLOW | LOOKUP_AUTOMOUNT,
> > > +			   path);
> > > +	if (ret)
> > > +		return ERR_PTR(ret);
> > > +
> > > +	sb = path->mnt->mnt_sb;
> > > +restart:
> > > +	if (quotactl_cmd_onoff(cmd))
> > > +		down_write(&sb->s_umount);
> > > +	else
> > > +		down_read(&sb->s_umount);
> > > +
> > > +	if (quotactl_cmd_write(cmd) && sb->s_writers.frozen != SB_UNFROZEN) {
> > > +		if (quotactl_cmd_onoff(cmd))
> > > +			up_write(&sb->s_umount);
> > > +		else
> > > +			up_read(&sb->s_umount);
> > > +		wait_event(sb->s_writers.wait_unfrozen,
> > > +			   sb->s_writers.frozen == SB_UNFROZEN);
> > > +		goto restart;
> > > +	}
> > > +
> > > +	return sb;
> > > +}
> > 
> > This partial duplicate of __get_super_thawed() guts does *not* belong here,
> > especially not interleaved with quota-specific checks.
> > 
> > > +	if (q_path) {
> > > +		if (quotactl_cmd_onoff(cmd))
> > > +			up_write(&sb->s_umount);
> > > +		else
> > > +			up_read(&sb->s_umount);
> > > +
> > > +		path_put(&sb_path);
> > > +	} else {
> > > +		if (!quotactl_cmd_onoff(cmds))
> > > +			drop_super(sb);
> > > +		else
> > > +			drop_super_exclusive(sb);
> > > +	}
> > 
> > Er...  Why not have the same code that you've used to lock the damn thing
> > (needs to be moved to fs/super.c) simply get a passive ref to it?  Then
> > you could do the same thing, q_path or no q_path...
> 
> I am getting confused here. To an earlier version of this series you
> responded:
> 
> > And for path-based you don't need to mess with superblock
> > references - just keep the struct path until the end.  That
> > will keep the superblock alive and active just fine.
> 
> I did that and got the objection from Jan:
> 
> > So I've realized that just looking up superblock with user_path_at() is not
> > enough. Quota code also expects that the superblock will be locked
> > (sb->s_umount) and filesystem will not be frozen (in case the quota
> > operation is going to modify the filesystem). This is needed to serialize
> > e.g. remount and quota operations or quota operations among themselves.

Yes, using passive reference is not necessary. On the other hand the
symmetry with how get_super() and friends work has some appeal too so if Al
wants that, well, he's the maintainer ;)

> So after drawing circles we now seem to be back at passive references.
> What I have now in my tree is this in fs/super.c, untested currently:

I was thinking how to make the API most sensible. In the end I've decided
for a variant that is attached - we pass in struct path which enforces
active reference to a superblock and thus we don't have to be afraid of the
superblock going away or similar problems. Also the operation "get me
superblock for a path" kind of makes sense...

Guys, what do you think?

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

--gKMricLos+KVdGMg
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="0001-fs-Provide-functions-for-getting-locked-and-thawed-s.patch"

From 18c7913475342f10b4723c7e22409acc573e6436 Mon Sep 17 00:00:00 2001
From: Jan Kara <jack@suse.cz>
Date: Tue, 18 Feb 2020 10:05:21 +0100
Subject: [PATCH] fs: Provide functions for getting locked and thawed
 superblock from a path

Provide functions to get locked (with s_umount) and if desired also thawed
superblock for a given struct path. We additionally also get passive
reference count of the superblock so that the superblock can be unlocked
with put_super() / put_super_exlusive() similarly to how get_super_*()
class of functions operates.

Signed-off-by: Jan Kara <jack@suse.cz>
---
 fs/super.c         | 64 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/fs.h |  3 +++
 2 files changed, 67 insertions(+)

diff --git a/fs/super.c b/fs/super.c
index cd352530eca9..2c78eac57fa5 100644
--- a/fs/super.c
+++ b/fs/super.c
@@ -836,6 +836,70 @@ struct super_block *get_super_exclusive_thawed(struct block_device *bdev)
 }
 EXPORT_SYMBOL(get_super_exclusive_thawed);
 
+static struct super_block *__hold_super(struct path *path, bool excl,
+					bool thawed)
+{
+	struct super_block *sb = path->mnt->mnt_sb;
+
+	while (1) {
+		if (excl)
+			down_write(&sb->s_umount);
+		else
+			down_read(&sb->s_umount);
+		if (!thawed || sb->s_writers.frozen == SB_UNFROZEN) {
+			spin_lock(&sb_lock);
+			sb->s_count++;
+			spin_unlock(&sb_lock);
+			return sb;
+		}
+		if (excl)
+			up_write(&sb->s_umount);
+		else
+			up_read(&sb->s_umount);
+		wait_event(sb->s_writers.wait_unfrozen,
+					sb->s_writers.frozen == SB_UNFROZEN);
+	}
+}
+
+/**
+ *	hold_super - get locked superblock for a path
+ *	@path: path to get superblock for
+ *
+ *	This function gets superblock for @path and returns it with s_umount
+ *	held in shared mode and superblock's passive refcount (sb->s_count)
+ *	incremented.
+ */
+struct super_block *hold_super(struct path *path)
+{
+	return __hold_super(path, false, false);
+}
+
+/**
+ *	hold_super_thawed - get locked thawed superblock for a path
+ *	@path: path to get superblock for
+ *
+ *	This function gets superblock for @path, makes sure it is not frozen,
+ *	and returns it with s_umount held in shared mode and superblock's
+ *	passive refcount (sb->s_count) incremented.
+ */
+struct super_block *hold_super_thawed(struct path *path)
+{
+	return __hold_super(path, false, true);
+}
+
+/**
+ *	hold_super_thawed_exclusive - get locked thawed superblock for a path
+ *	@path: path to get superblock for
+ *
+ *	This function gets superblock for @path, makes sure it is not frozen,
+ *	and returns it with s_umount held in exclusive mode and superblock's
+ *	passive refcount (sb->s_count) incremented.
+ */
+struct super_block *hold_super_thawed_exclusive(struct path *path)
+{
+	return __hold_super(path, true, true);
+}
+
 /**
  * get_active_super - get an active reference to the superblock of a device
  * @bdev: device to get the superblock for
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 3cd4fe6b845e..2406494d2f54 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -3305,6 +3305,9 @@ extern struct file_system_type *get_fs_type(const char *name);
 extern struct super_block *get_super(struct block_device *);
 extern struct super_block *get_super_thawed(struct block_device *);
 extern struct super_block *get_super_exclusive_thawed(struct block_device *bdev);
+struct super_block *hold_super(struct path *path);
+struct super_block *hold_super_thawed(struct path *path);
+struct super_block *hold_super_thawed_exclusive(struct path *path);
 extern struct super_block *get_active_super(struct block_device *bdev);
 extern void drop_super(struct super_block *sb);
 extern void drop_super_exclusive(struct super_block *sb);
-- 
2.16.4


--gKMricLos+KVdGMg
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--gKMricLos+KVdGMg--

