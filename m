Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4254F162
	for <lists+linux-mtd@lfdr.de>; Sat, 22 Jun 2019 01:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:To:From:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2pIp4YMXJEgwl8PHoK4X+Z1obl0f+8OzEzMaUz1gEeY=; b=Im8XBygOhqfs6F
	tl7NNALndvtDom+XAsEGoso2Nulb9Vt7iHVwfhI/OeVJevfIb3/s2lO89/d/rdpIPW6h6WaoXQQpi
	Cd4QSBYb4WXiPirF+s4sl6kjWY+irI3kpXcyrxZGeXjEPPU3HE+T7AUd3yqpvtejoJ/rIFhY8jOKQ
	X9gBD4vO30L4vRn5NpYY0+QP8yqhAb5nIeEoLoRej7SCY6LEEIxf34/S8fZkW4w6Ldx4hIqnjf10k
	ARs1PV+1VJR+NLfc3WP+2iHKidsuHbRPoxhBrFEYVu0SUmdST4CnCy1qwDdJzTLYQn5KJdXCUTA4b
	IKgMUUI6weGGbF7hmbeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heTOk-0005Dn-KR; Fri, 21 Jun 2019 23:56:50 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heTOZ-0005DG-Jl
 for linux-mtd@lists.infradead.org; Fri, 21 Jun 2019 23:56:41 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5LNsGrX052403;
 Fri, 21 Jun 2019 23:56:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : from : to :
 cc : date : message-id : mime-version : content-type :
 content-transfer-encoding; s=corp-2018-07-02;
 bh=cAdDQjLmw3paRsCYayAMtBFRH59fRNc4vYLBHuqjsSA=;
 b=TzR6Wru1xSjTTRJAS5YLkE/BrGnsLOB3oXc++TPNZTilrEotX+w/PXZSlo2GmgalFn6q
 EFIn2g7OnCMHKiU/KYZQjoVVDHvaifoE42AmpxsuNL7wnDmrtZhKVTyFzOJI7etrK4kK
 KEBGejr346UOlFcuSkyuDnIO/5wd6UqT/S/KQGVF+NHJ5J7mmhYyVd5c2jc+HbQbg3wB
 wa4pvaZQ8fS5HuyXYBN1pV+PfgLDpbPcaxs+KsA+sgcG7mAhRxGd5p97mdMZnG6Ft3yd
 IEh9EmQpStxpaanEvQR/EobOi//ZfTjzIl0oWYndnxgPHklvyg0k1RPOB0QGCH15ATwX mw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2t7809rsvw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 21 Jun 2019 23:56:27 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5LNtFqW105530;
 Fri, 21 Jun 2019 23:56:27 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by userp3020.oracle.com with ESMTP id 2t77ypet01-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 21 Jun 2019 23:56:27 +0000
Received: from userp3020.oracle.com (userp3020.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x5LNuRFa107024;
 Fri, 21 Jun 2019 23:56:27 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2t77ypesyw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 21 Jun 2019 23:56:27 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5LNuGUs018756;
 Fri, 21 Jun 2019 23:56:16 GMT
Received: from localhost (/10.159.131.214)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 21 Jun 2019 16:56:16 -0700
Subject: [PATCH v2 0/4] vfs: clean up SETFLAGS and FSSETXATTR option processing
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: matthew.garrett@nebula.com, yuchao0@huawei.com, tytso@mit.edu,
 darrick.wong@oracle.com, shaggy@kernel.org, ard.biesheuvel@linaro.org,
 josef@toxicpanda.com, clm@fb.com, adilger.kernel@dilger.ca,
 jk@ozlabs.org, jack@suse.com, dsterba@suse.com, jaegeuk@kernel.org,
 viro@zeniv.linux.org.uk
Date: Fri, 21 Jun 2019 16:56:07 -0700
Message-ID: <156116136742.1664814.17093419199766834123.stgit@magnolia>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9295
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=851 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906210182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_165639_691703_C2270700 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
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
Cc: linux-xfs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-efi@vger.kernel.org, linux-kernel@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 cluster-devel@redhat.com, linux-nilfs@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-btrfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi all,

The FS_IOC_SETFLAGS and FS_IOC_FSSETXATTR ioctls were promoted from ext4
and XFS, respectively, into the VFS.  However, we didn't promote any of
the parameter checking code from those filesystems, which lead to a mess
where each filesystem open-codes whatever parameter checks they want and
the behavior across filesystems is no longer consistent.

Therefore, create some generic checking functions in the VFS and remove
all the open-coded pieces in each filesystem.  This preserves the
current behavior where a filesystem can choose to ignore fields it
doesn't understand.

If you're going to start using this mess, you probably ought to just
pull from my git trees, which are linked below.

This has been lightly tested with fstests.  Enjoy!
Comments and questions are, as always, welcome.

--D

kernel git tree:
https://git.kernel.org/cgit/linux/kernel/git/djwong/xfs-linux.git/log/?h=file-ioctl-cleanups

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
