Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CF58F660
	for <lists+linux-mtd@lfdr.de>; Thu, 15 Aug 2019 23:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HBoy+zuAQWKK47e4Kuw+WRqTexmQ2/yONTzHU6pauvM=; b=BEyuIiNuEsFrrmdwx4vA7ZMrH
	VwcIvjYkzzJ1st5P/BasI8gbpb1qJO3LkFmbeEwCRJ9zJUSWr37RGFHNboe+GeZqoc3pWeXdDj0lI
	2ODnVvcVXi1aJp9D1ANbfbjKc9O5RNSIhvGFAFKDMiwgqNc3Bl34Rggdx0JE7M62+GhEviYKzNKZW
	xj7YiSPcITu4fT8tNoU8V9brnOJ7ou5gBxVpTIoLRICYDJUGMFf7DqajCaS+WUhRaWKI0eLvsjdQJ
	GSJA2fjJYkUGzuMzAcAzJ8P1yoUJb1+exHOWGNsi5FrRNuktEOPDruFg4aBKJ452XuAYuGFsfc3L2
	K3oKkexOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyNGt-000730-F1; Thu, 15 Aug 2019 21:26:59 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyNGj-00072O-Qs
 for linux-mtd@lists.infradead.org; Thu, 15 Aug 2019 21:26:51 +0000
Received: by mail-pg1-x543.google.com with SMTP id w10so1851659pgj.7
 for <linux-mtd@lists.infradead.org>; Thu, 15 Aug 2019 14:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=NQPI89pyKynFZwWztDWLjrPNlq9e9KFjYiijpvVD82o=;
 b=lIpZ0g9DtDyqIqk3Pk+f3LAbBb1IHJR/OqcvIqSvHq+yBEN7osFWEACcZH+FVTGAN+
 z81fgESdI7fNhc3JgTo9dRJMBztkRx79bvkDfp3/xi9bZurWt2357qZZo4tFW7M0y0Ej
 A6uvlorCTKMuc3kR41qxmYDng3wbRM+BG0tiDg042ULiVNZsJKa0xmpkuCsfDllwdR+e
 dG4DrPqiLG1FI9UfDGP54YpE2IKITme3NrNG9h5Xx1BAmyChoM9PJ99fCCQ/KwOPT9he
 yumEroYrkBe4fkJ0BYuWZmThYwe0QxWcBl+TbCtzexrk33BB01Ff8hxY8VdTWES/ELDc
 HaRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=NQPI89pyKynFZwWztDWLjrPNlq9e9KFjYiijpvVD82o=;
 b=YWdHLqWLWbu6VmSCtDTB5k+W2OPZPslpLvr1pg9ONCW1NokRJATgp5fFycvhePN9EK
 UM5hUnPgfuPbUS+V/bAtubnLR5+Yu3fY2y9W6WvADnpKaeK4bXZiT3VBkI6WXGt0VpOg
 zT/xD8NjTNpUv3xayKFyWQ3gkAgz1ldscyrqFHiFmIW6hZd6QvZ+1FRbHj+HMw5zOZH+
 Fql+xM6ccZDJnIf4PcBpKfSzXm0/xfyxI3O7Wi1IzZ+/+WuPYQDAfC2Px8Xd1ZEevm+Z
 u3FtvQ74bqjwyfLeSZM4St0Y0gBH5oYCf35Y8W8fuScKY7xtjzWVu0O8vGNJwMY9lXam
 WOyw==
X-Gm-Message-State: APjAAAUQGJ5n99Sqlj4sNw+Sk7USlqrr96JBBks/jKYE459mvzCLHWIz
 qD6O7WfUgVcUliQB66xdW5Z+gA==
X-Google-Smtp-Source: APXvYqzllKC5ksLQDzyaqGJCDuceyLpQSHPwoKzZQcbJiABKWTaC5jPOSVkAOdc7QTtTY77anKcswg==
X-Received: by 2002:a62:e910:: with SMTP id j16mr7618601pfh.123.1565904408941; 
 Thu, 15 Aug 2019 14:26:48 -0700 (PDT)
Received: from nebulus.mtv.corp.google.com
 ([2620:15c:211:200:5404:91ba:59dc:9400])
 by smtp.googlemail.com with ESMTPSA id v7sm3875690pff.87.2019.08.15.14.26.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 15 Aug 2019 14:26:48 -0700 (PDT)
Subject: Re: [PATCH] Add flags option to get xattr method paired to
 __vfs_getxattr
To: James Morris <jmorris@namei.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190812193320.200472-1-salyzyn@android.com>
 <20190813084801.GA972@kroah.com>
 <alpine.LRH.2.21.1908160515130.12729@namei.org>
From: Mark Salyzyn <salyzyn@android.com>
Message-ID: <69889dec-5440-1472-ed57-380f45547581@android.com>
Date: Thu, 15 Aug 2019 14:26:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.LRH.2.21.1908160515130.12729@namei.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_142649_867421_D904F458 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net, linux-integrity@vger.kernel.org,
 Martin Brandenburg <martin@omnibond.com>, samba-technical@lists.samba.org,
 Dominique Martinet <asmadeus@codewreck.org>, Chao Yu <yuchao0@huawei.com>,
 Mimi Zohar <zohar@linux.ibm.com>, linux-unionfs@vger.kernel.org,
 David Howells <dhowells@redhat.com>, Chris Mason <clm@fb.com>,
 "David S. Miller" <davem@davemloft.net>,
 Andreas Dilger <adilger.kernel@dilger.ca>, Eric Paris <eparis@parisplace.org>,
 netdev@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-afs@lists.infradead.org, Mike Marshall <hubcap@omnibond.com>,
 linux-xfs@vger.kernel.org, Andreas Gruenbacher <agruenba@redhat.com>,
 Sage Weil <sage@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 Hugh Dickins <hughd@google.com>,
 =?UTF-8?Q?Ernesto_A=2e_Fern=c3=a1ndez?= <ernesto.mnd.fernandez@gmail.com>,
 cluster-devel@redhat.com, selinux@vger.kernel.org,
 Vyacheslav Dubeyko <slava@dubeyko.com>,
 Casey Schaufler <casey@schaufler-ca.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 kernel-team@android.com, linux-mm@kvack.org, devel@lists.orangefs.org,
 Serge Hallyn <serge@hallyn.com>, linux-cifs@vger.kernel.org,
 Eric Van Hensbergen <ericvh@gmail.com>, ecryptfs@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, reiserfs-devel@vger.kernel.org,
 Tejun Heo <tj@kernel.org>, Joel Becker <jlbec@evilplan.org>,
 linux-mtd@lists.infradead.org, David Sterba <dsterba@suse.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Paul Moore <paul@paul-moore.com>, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, linux-fsdevel@vger.kernel.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Mathieu Malaterre <malat@debian.org>,
 Stephen Smalley <sds@tycho.nsa.gov>,
 "Darrick J. Wong" <darrick.wong@oracle.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Tyler Hicks <tyhicks@canonical.com>, Steve French <sfrench@samba.org>,
 linux-security-module@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 Jan Kara <jack@suse.com>, Bob Peterson <rpeterso@redhat.com>,
 Phillip Lougher <phillip@squashfs.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Woodhouse <dwmw2@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-btrfs@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 8/15/19 12:20 PM, James Morris wrote:
> On Tue, 13 Aug 2019, Greg Kroah-Hartman wrote:
>
>> On Mon, Aug 12, 2019 at 12:32:49PM -0700, Mark Salyzyn wrote:
>>> --- a/include/linux/xattr.h
>>> +++ b/include/linux/xattr.h
>>> @@ -30,10 +30,10 @@ struct xattr_handler {
>>>   	const char *prefix;
>>>   	int flags;      /* fs private flags */
>>>   	bool (*list)(struct dentry *dentry);
>>> -	int (*get)(const struct xattr_handler *, struct dentry *dentry,
>>> +	int (*get)(const struct xattr_handler *handler, struct dentry *dentry,
>>>   		   struct inode *inode, const char *name, void *buffer,
>>> -		   size_t size);
>>> -	int (*set)(const struct xattr_handler *, struct dentry *dentry,
>>> +		   size_t size, int flags);
>>> +	int (*set)(const struct xattr_handler *handler, struct dentry *dentry,
>>>   		   struct inode *inode, const char *name, const void *buffer,
>>>   		   size_t size, int flags);
>> Wow, 7 arguments.  Isn't there some nice rule of thumb that says once
>> you get more then 5, a function becomes impossible to understand?
>>
>> Surely this could be a structure passed in here somehow, that way when
>> you add the 8th argument in the future, you don't have to change
>> everything yet again?  :)
>>
>> I don't have anything concrete to offer as a replacement fix for this,
>> but to me this just feels really wrong...
> How about something like:
>
> struct xattr_gs_args {
> 	struct dentry *dentry;
> 	struct inode *inode;
> 	const char *name;
> 	const void *buffer;
> 	size_t size;
> 	int flags;
> };
>
> int (*get)(const struct xattr_handler *handler, struct xattr_gs_args *args);
> int (*set)(const struct xattr_handler *handler, struct xattr_gs_args *args);
>
Good Idea, but using the same argument structure for set and get I would 
be concerned about the loss of compiler protection for the buffer 
argument; it is void* for get, and const void* for set. And if we pulled 
out buffer (and size since it is paired with it) from the structure to 
solve, the 'mixed' argument approach (resulting in 4 args) adds to the 
difficulty/complexity.

Good news is the same structure(s) can get passed to __vfs_getxattr and 
__vfs_setxattr, so one less issue with getting the argument order 
correct from the caller.

 From an optimization standpoint, passing an argument to a pointer to a 
structure assembled on the stack constrains the compiler. Whereas 
individual arguments allow for the optimization to place all the 
arguments into registers. All modern processors have no issue with tens 
of arguments.

So, I will look into what the patch set will look like by splitting into 
set and get, and trying to reuse the structure down the call chain.

struct getxattr_args {
	struct dentry *dentry;
	struct inode *inode;
	const char *name;
	void *buffer;
	size_t size;
	int flags;
};

struct setxattr_args {
	struct dentry *dentry;
	struct inode *inode;
	const char *name;
	const void *buffer;
	size_t size;
	int flags;
};

-- Mark




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
