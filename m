Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B214DD5C
	for <lists+linux-mtd@lfdr.de>; Fri, 21 Jun 2019 00:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imnVUV56wSNGSifs3P4dc51pMcYJfp0y5VBaUHLa7tw=; b=CLl+tEGRuOcVun
	Gkz0Negq8Dvl1moAJk/GHfBKMLHZlszvw/yv6KLobiDDwAf11mvTI38id2CJyibeVdyrgl7c+x4Ga
	X21AIoJyKmPY7lrpG2TLIFYLs0XnDZSPUoJ7d8NQOkwWmNzBmWZBV4asnFpgTIDF+6eK0qXcOefS8
	PcD+7qVqRg4VbEySPBmostviAlNu6QecO40pWtlsfMDihLJhL3Fj3vTInh/xg1RcV+BmNUUvDph/G
	Q5rGaEbzXURP+fVuzXxHT4KrbqvDS4u+/no0xOwh3iIhmZHQvIR1i+N4B8xrwQPCTWwjQa9BjUEdF
	uU4hGS7AzWipYwQ54eWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he5KH-0002yR-HP; Thu, 20 Jun 2019 22:14:37 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he5J6-0001yr-2j
 for linux-mtd@lists.infradead.org; Thu, 20 Jun 2019 22:13:25 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5KM3nsv109072;
 Thu, 20 Jun 2019 22:13:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=OsSBTvuyKOZHpYxr7BMRKlrDJF74SMWishCpQlewDkg=;
 b=HRHy43z65mymGGo6sWVVPuVFpItbR12cz3YFYbaCqJGOBgvqYtfpb/PeLVjuuEVqrQv2
 GpZIrIgzJZC0+U+yXwJ1Vqs3qY3UMIfqSIwL3pZPIfdyZff3jwYOEkEcKtjd/YwH/Sq6
 aV/5TlsmcdKu7KhrpVNfWRmjrbQlir4Di4CKy0hExq7FpxJJYc99Sw4feLIcaNKWlvrK
 5xy4bURhqhJGb38LoU38YZ1npKwLTXMnl7fXFWWSALJ4esecgPStCOfTzz7/fuGUuQ5/
 3Ls5Aj1t1c7iY5R0EC3GWYb2yjGGpkr0/0/gtaJLRnwOzAdzATduot/C0pAUHfoTLX0u QQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2t7809kgm8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Jun 2019 22:13:13 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5KMCXI6043214;
 Thu, 20 Jun 2019 22:13:12 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by aserp3020.oracle.com with ESMTP id 2t77ypm9eb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 20 Jun 2019 22:13:12 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x5KMDCTk044443;
 Thu, 20 Jun 2019 22:13:12 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2t77ypm9e2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Jun 2019 22:13:12 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5KMD85F022773;
 Thu, 20 Jun 2019 22:13:09 GMT
Received: from localhost (/10.145.179.81)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 20 Jun 2019 15:13:08 -0700
Date: Thu, 20 Jun 2019 15:13:06 -0700
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: "Theodore Ts'o" <tytso@mit.edu>, matthew.garrett@nebula.com,
 yuchao0@huawei.com, ard.biesheuvel@linaro.org, josef@toxicpanda.com,
 clm@fb.com, adilger.kernel@dilger.ca, viro@zeniv.linux.org.uk,
 jack@suse.com, dsterba@suse.com, jaegeuk@kernel.org, jk@ozlabs.org,
 reiserfs-devel@vger.kernel.org, linux-efi@vger.kernel.org,
 devel@lists.orangefs.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 linux-mm@kvack.org, linux-nilfs@vger.kernel.org,
 linux-mtd@lists.infradead.org, ocfs2-devel@oss.oracle.com,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Subject: Re: [PATCH 1/6] mm/fs: don't allow writes to immutable files
Message-ID: <20190620221306.GD5375@magnolia>
References: <156022836912.3227213.13598042497272336695.stgit@magnolia>
 <156022837711.3227213.11787906519006016743.stgit@magnolia>
 <20190620215212.GG4650@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620215212.GG4650@mit.edu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9294
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=570 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906200158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_151324_300370_C0C88361 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 05:52:12PM -0400, Theodore Ts'o wrote:
> On Mon, Jun 10, 2019 at 09:46:17PM -0700, Darrick J. Wong wrote:
> > From: Darrick J. Wong <darrick.wong@oracle.com>
> > 
> > The chattr manpage has this to say about immutable files:
> > 
> > "A file with the 'i' attribute cannot be modified: it cannot be deleted
> > or renamed, no link can be created to this file, most of the file's
> > metadata can not be modified, and the file can not be opened in write
> > mode."
> > 
> > Once the flag is set, it is enforced for quite a few file operations,
> > such as fallocate, fpunch, fzero, rm, touch, open, etc.  However, we
> > don't check for immutability when doing a write(), a PROT_WRITE mmap(),
> > a truncate(), or a write to a previously established mmap.
> > 
> > If a program has an open write fd to a file that the administrator
> > subsequently marks immutable, the program still can change the file
> > contents.  Weird!
> > 
> > The ability to write to an immutable file does not follow the manpage
> > promise that immutable files cannot be modified.  Worse yet it's
> > inconsistent with the behavior of other syscalls which don't allow
> > modifications of immutable files.
> > 
> > Therefore, add the necessary checks to make the write, mmap, and
> > truncate behavior consistent with what the manpage says and consistent
> > with other syscalls on filesystems which support IMMUTABLE.
> > 
> > Signed-off-by: Darrick J. Wong <darrick.wong@oracle.com>
> 
> I note that this patch doesn't allow writes to swap files.  So Amir's
> generic/554 test will still fail for those file systems that don't use
> copy_file_range.

I didn't add any IS_SWAPFILE checks here, so I'm not sure to what you're
referring?

> I'm indifferent as to whether you add a new patch, or include that
> change in this patch, but perhaps we should fix this while we're
> making changes in these code paths?

The swapfile patches should be in a separate patch, which I was planning
to work on but hadn't really gotten around to it.

--D


> 				- Ted

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
