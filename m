Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17146904B0
	for <lists+linux-mtd@lfdr.de>; Fri, 16 Aug 2019 17:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cD5qT8vxSUydLDK83fHy0rdxc/xOaiG4WGOIacEeV8c=; b=chYaKxMla6vNOr/l+qGgI/8NN
	g7lCujPISSrLhqOMXGKjx7X80t2ANAVXFkd98ECB6rGv5jeE2KbTPobZMAy5dkVvb/5MbEUtgkvfS
	AcEDCxvmTUpYUX9HEsSzqi4VudXJIRMurHC3o21jCJfRhv9kRVQ3tow9wlrnq7BftzKUMxkokz0+b
	ONaJP6kiBL6wZXToeMUvjHXCRThnSrcBKLUNF9e5sudkwxWYjg5LgU0kR1/SX/BUKfA1JbdehS8rk
	/ORM2MWJ3Xppz0jwTrlCePNMljT0t4l5df4ZrW6O9qfFYSg1xRmfpzjUUFilU9D9Ec0x4uGaWpk7G
	FEnKQsZyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyeBo-0002sC-3H; Fri, 16 Aug 2019 15:30:52 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyeBc-0002q3-LU
 for linux-mtd@lists.infradead.org; Fri, 16 Aug 2019 15:30:43 +0000
Received: by mail-pf1-x443.google.com with SMTP id w2so3309269pfi.3
 for <linux-mtd@lists.infradead.org>; Fri, 16 Aug 2019 08:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=mfAPdWffqPCiWWdG0+diH1s9rsdeIRT69OHzvRcyJZE=;
 b=n1rDvKmVIIzl5LQ8693geFLmZfVk3SNTRXjV+iWc+8TCGMLKeW1iTeiBjvRiueqoqF
 D9q8mlFSvHVsZFYo8y0kE96uO6kmQFQLzsCMbZOk0QJBcZZXpIGyVUfhKCZdaUtIfVCv
 i/NoHfVU/jNOhInU0nZF00JzrYo84Kc4poGmJ+0xtP3BbotZEuJh4vLNcJnKiqpzbKqX
 VAVojoCQ9+7vUVRbeqlgJ3x1mKtd9gYqddIhEV1djd0QWV+eU6MOHKC8ZzBAyRJxBa4j
 h2AWL75nzhxsVUvXnKj119sMtgytuLB07uRnQLjRyRsPInJpSQZBT6UeAUBurB9zqibi
 wIrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=mfAPdWffqPCiWWdG0+diH1s9rsdeIRT69OHzvRcyJZE=;
 b=SUQr25DQ117Pnif5u6OgYhUuzHQdU1NgKG+9LxHJluN2vO9GnGcrmaFwgNMYC9spyP
 CS33pOxsp+WTP6qxoN6AwnznwUVvXUF9TydKhv4Ee8NigCGMBSLf9ljs1w/uH0IjhI0B
 tAJK0tPvbZurpkZFx4O7J9Ei+ZuLi85AoB9ZGYHw0di7vZ9ARYnj7r4VIBXAh1LX2GfI
 mTYiaPZpOPmh8kGG91dit0RVMLg33Q1xX7gqp8ZTzZMl1LqeUgdrJEoZ35H/x22LFEMP
 N6WZyNjiKs2+xNFafwPfozcjtiye3EtldLe1DMnI1V4q+Wg0WbZj2axWUtT41tejlrJj
 E8ig==
X-Gm-Message-State: APjAAAVPDfZ7cOg22CjD7Wd0dC5nHR2+k82FfuxtdoP/W1hIMzu3lIqZ
 /9kOD/dGP2WsnN3gntmGxyYGcQ==
X-Google-Smtp-Source: APXvYqydx2RtAVHirZjlmSa0Unc3LrMXkJsKHb448nh37ky9aF7sEwD8P8sx+d4AByX8L7k2WfP+gw==
X-Received: by 2002:a17:90a:77c9:: with SMTP id
 e9mr7407215pjs.141.1565969433680; 
 Fri, 16 Aug 2019 08:30:33 -0700 (PDT)
Received: from nebulus.mtv.corp.google.com
 ([2620:15c:211:200:5404:91ba:59dc:9400])
 by smtp.googlemail.com with ESMTPSA id l4sm4355544pjq.9.2019.08.16.08.30.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 16 Aug 2019 08:30:32 -0700 (PDT)
Subject: Re: [PATCH] Add flags option to get xattr method paired to
 __vfs_getxattr
To: James Morris <jmorris@namei.org>
References: <20190812193320.200472-1-salyzyn@android.com>
 <20190813084801.GA972@kroah.com>
 <alpine.LRH.2.21.1908160515130.12729@namei.org>
 <69889dec-5440-1472-ed57-380f45547581@android.com>
 <alpine.LRH.2.21.1908160825310.22623@namei.org>
From: Mark Salyzyn <salyzyn@android.com>
Message-ID: <92b1df4b-6433-7d01-9c08-23de10e8d527@android.com>
Date: Fri, 16 Aug 2019 08:30:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.LRH.2.21.1908160825310.22623@namei.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_083040_725264_C6AF4964 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
 jfs-discussion@lists.sourceforge.net, kernel-team@android.com,
 linux-integrity@vger.kernel.org, Martin Brandenburg <martin@omnibond.com>,
 samba-technical@lists.samba.org, Dominique Martinet <asmadeus@codewreck.org>,
 Chao Yu <yuchao0@huawei.com>, Mimi Zohar <zohar@linux.ibm.com>,
 linux-unionfs@vger.kernel.org, David Howells <dhowells@redhat.com>,
 Chris Mason <clm@fb.com>, "David S. Miller" <davem@davemloft.net>,
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
 Stephen Smalley <sds@tycho.nsa.gov>, linux-mm@kvack.org,
 devel@lists.orangefs.org, Serge Hallyn <serge@hallyn.com>,
 linux-cifs@vger.kernel.org, Eric Van Hensbergen <ericvh@gmail.com>,
 ecryptfs@vger.kernel.org, Josef Bacik <josef@toxicpanda.com>,
 reiserfs-devel@vger.kernel.org, Tejun Heo <tj@kernel.org>,
 Joel Becker <jlbec@evilplan.org>, linux-mtd@lists.infradead.org,
 David Sterba <dsterba@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>,
 Paul Moore <paul@paul-moore.com>, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, linux-fsdevel@vger.kernel.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

On 8/15/19 3:27 PM, James Morris wrote:
> On Thu, 15 Aug 2019, Mark Salyzyn wrote:
>
>> Good Idea, but using the same argument structure for set and get I would be
>> concerned about the loss of compiler protection for the buffer argument;
> Agreed, I missed that.

Sadly, the pattern of

struct getxattr_args args;

memset(&args, 0, sizeof(args));

args.xxxx = ...

__vfs_getxattr(&args};

...

__vfs_setxattr(&args);

would be nice, so maybe we need to cool our jets and instead:

struct xattr_gs_args {
	struct dentry *dentry;
	struct inode *inode;
	const char *name;
	union {
	        void *buffer;
	        const void *value;
	};
	size_t size;
	int flags;
};

value _must_ be referenced for all setxattr operations, buffer for getxattr operations (how can we enforce that?).

>> struct getxattr_args {
>> 	struct dentry *dentry;
>> 	struct inode *inode;
>> 	const char *name;
>> 	void *buffer;
>> 	size_t size;
>> 	int flags;
> Does 'get' need flags?
>
:-) That was the _whole_ point of the patch, flags is how we pass in the 
recursion so that a security/internal getxattr call has the rights to 
acquire the data in the lower layer(s).

-- Mark


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
